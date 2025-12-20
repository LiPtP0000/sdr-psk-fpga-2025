// Module: Depacketizer (Corrected Version)
// ====================
// Simplified FSM while strictly maintaining original timing and logic.

`timescale 1ns / 1ps

module Depacketizer #(
    parameter BYTES = 1,
    parameter WIDTH = 16,
    parameter MAX_WINDOW_WIDTH = 8
) (
    input                             clk,
    input                             clk_enable,
    input                             rst,
    input      [MAX_WINDOW_WIDTH-1:0] RX_BD_WINDOW,
    input      [                 3:0] MODE_CTRL,
    input                             SD_flag,
    input                             PD_flag,
    input                             BD_flag,
    input                             BD_sgn,
    input      [                 1:0] in_QPSK,
    input                             in_BPSK,
    output                            in_ready,
    output reg [         BYTES*8-1:0] data_tdata,
    output reg                        data_tvalid,
    input                             data_tready,
    output reg                        data_tlast,
    output                            data_tuser,
    output     [                 1:0] QPSK,
    output                            BPSK,
    output reg                        is_bpsk,
    output                            disassert_BD,
    output                            disassert_PD
);
    localparam BITS = BYTES * 8;
    localparam MODE_BPSK = 4'b0001, MODE_QPSK = 4'b0010, MODE_MIX = 4'b0100;

    // 状态定义（恢复 LAST 状态以保证 tlast 时序一致）
    localparam ST_IDLE = 3'd0;
    localparam ST_TRN = 3'd1;
    localparam ST_HDR = 3'd2;
    localparam ST_PLD = 3'd3;
    localparam ST_LAST = 3'd4;
    localparam ST_WAIT = 3'd5;

    reg [2:0] state, state_next;
    reg [15:0] cnt;
    reg [15:0] payload_length, payload_length_symbs;
    reg [7:0] MCS, signature;
    reg        BD_sgn_reg;
    reg        is_bpsk_reg;
    wire       in_BPSK_signed = in_BPSK ~^ BD_sgn_reg;
    wire [1:0] sym_fsm_qpsk = is_bpsk_reg ? {2{in_BPSK_signed}} : (in_QPSK ~^ {2{BD_sgn_reg}});

    // ===========================
    // State Register
    // ===========================
    always @(posedge clk) begin
        if (rst) begin
            state <= ST_IDLE;
        end else if (clk_enable) begin
            state <= state_next;
        end
    end


    // ===========================
    // Next State Logic
    // ===========================
    always @(*) begin
        state_next = state;
        case (state)
            ST_IDLE: begin
                if (BD_flag) begin
                    state_next = ST_TRN;
                end else begin
                    state_next = ST_IDLE;
                end
            end
            ST_TRN: begin
                if (cnt == (30 - RX_BD_WINDOW)) begin
                    //  * BD_init is triggered by TRN bit 224, asserted at bit 225.
                    //  * BD_flag rises at bit (224 + RX_BD_WINDOW + 1).
                    //  * cnt = 1 starts at bit (226 + RX_BD_WINDOW), state transitions to ST_TRN.
                    //  * When cnt == (30 - RX_BD_WINDOW), state_next updates to ST_HDR (at bit 255).
                    //  * HDR state starts at bit 256.
                    state_next = ST_HDR;
                end else begin
                    state_next = ST_TRN;
                end
            end
            ST_HDR: begin
                // Header transition: cnt starts from 0 and increments unconditionally (no data_tready wait).
                //   - cnt=0: process 1st bit, then cnt becomes 1
                //   - cnt=62: process 63rd bit, then cnt becomes 63
                //   - cnt=63: process 64th bit, (cnt+1==64) triggers state_next=ST_PLD
                //   - Next clock: state switches to ST_PLD after all 64 header bits processed
                // Unlike ST_PLD (which uses +2), ST_HDR uses +1 because counter increments
                // every cycle without handshake delay.
                if (cnt + 1 == 64) begin
                    //  * cnt = 0 starts at bit 256. HDR length is 64 bits.
                    //  * When cnt + 1 == 64 (i.e., cnt=63), we've processed all 64 header bits
                    if (payload_length_symbs == 0) begin
                        state_next = ST_IDLE;
                    end else if (payload_length_symbs == 1) begin
                        state_next = ST_LAST;
                    end else begin
                        state_next = ST_PLD;
                    end
                end else begin
                    state_next = ST_HDR;
                end
            end
            ST_PLD: begin
                // Penultimate transition: Jump to ST_LAST when processing the (L-1)th symbol.
                // cnt + 2 == payload_length_symbs accounts for:
                //   - cnt starts from 0 (cnt=0 is 1st symbol, cnt=L-2 is (L-1)th symbol)
                //   - state_next is computed one cycle ahead (combinational logic)
                // Example: If L=10, when cnt=8 (9th symbol), (8+2==10) triggers ST_LAST.
                //          The 10th symbol is then processed in ST_LAST with data_tlast asserted.
                // When the data before last is ready, move to LAST state
                if (data_tready && (cnt + 2 == payload_length_symbs)) begin
                    state_next = ST_LAST;
                end else begin
                    state_next = ST_PLD;
                end
            end
            ST_LAST: begin
                if (data_tready) begin
                    state_next = ST_WAIT;
                end else begin
                    state_next = ST_LAST;
                end
            end
            ST_WAIT: begin
                state_next = ST_IDLE;
            end
            default: begin
                state_next = ST_IDLE;
            end
        endcase
    end

    always @(posedge clk) begin
        if (rst) begin
            cnt <= 0;
            is_bpsk_reg <= 1'b1;
            {MCS, payload_length, signature} <= 0;
            payload_length_symbs <= 0;
            BD_sgn_reg <= 0;
        end else if (clk_enable) begin
            // Global counter: reset on state change, otherwise increment when ready (auto increment in TRN/HDR states)
            if (state != state_next) begin
                cnt <= 0;
            end else if (data_tready || state == ST_TRN || state == ST_HDR) begin
                cnt <= cnt + 1;
            end else begin
                cnt <= cnt;  // Hold current value
            end

            case (state)
                ST_TRN: BD_sgn_reg <= BD_sgn;

                ST_HDR: begin
                    if (data_tready) begin
                        // 还原 Header 解析每一位的精确逻辑
                        if (cnt <= 7) begin
                            MCS[7-cnt] <= in_BPSK_signed;
                        end else if (cnt <= 23) begin
                            payload_length[23-cnt] <= in_BPSK_signed;
                        end else if (cnt == 28) begin
                            signature[3] <= in_BPSK;
                            is_bpsk_reg  <= MCS[5];  // Update MCS in advance
                        end else if (cnt == 29) begin
                            signature[2] <= in_BPSK;
                            payload_length_symbs <= is_bpsk_reg ? payload_length : (payload_length >> 1);
                        end else if (cnt <= 31) begin
                            signature[31-cnt] <= in_BPSK_signed;
                        end else begin
                            // cnt > 31: no action needed, maintain current values
                        end
                    end else begin
                        // data_tready is low: hold current values
                    end
                end

                ST_IDLE: begin
                    is_bpsk_reg <= 1'b1;
                end

                ST_PLD: begin
                    // No register updates in PLD state
                end

                ST_LAST: begin
                    // No register updates in LAST state
                end

                ST_WAIT: begin
                    // No register updates in WAIT state
                end

                default: begin
                    // Default case: maintain current values
                end
            endcase
        end
    end

    always @(*) begin
        case (MODE_CTRL)
            MODE_BPSK, MODE_QPSK: begin
                data_tdata  = {{BITS - 2{1'b0}}, in_QPSK};
                data_tvalid = 1'b1;
                data_tlast  = 1'b0;  // no LAST in non-packet mode
                is_bpsk     = (MODE_CTRL == MODE_BPSK);
            end
            MODE_MIX: begin
                // Gives output only in PLD and LAST states
                if (state == ST_PLD || state == ST_LAST) begin
                    data_tdata  = {{BITS - 2{1'b0}}, sym_fsm_qpsk};
                    data_tvalid = 1'b1;
                    data_tlast  = (state == ST_LAST);
                    is_bpsk     = is_bpsk_reg;
                end else begin
                    data_tdata  = 0;
                    data_tvalid = 1'b0;
                    data_tlast  = 1'b0;
                    is_bpsk     = is_bpsk_reg;
                end
            end
            default: begin
                data_tdata = 0;
                data_tvalid = 0;
                data_tlast = 0;
                is_bpsk = is_bpsk_reg;
            end
        endcase
    end

    // 连线赋值
    assign in_ready     = data_tready;
    assign data_tuser   = is_bpsk;
    assign QPSK         = (MODE_CTRL == MODE_MIX) ? sym_fsm_qpsk : in_QPSK;
    assign BPSK         = (MODE_CTRL == MODE_MIX) ? in_BPSK_signed : in_BPSK;
    assign disassert_BD = data_tlast;
    assign disassert_PD = data_tlast;

endmodule
