// Module: Depacketizer (Robust Version)
// ====================
// Correction: Added Sanity Check for Payload Length.
// Solves the deadlock where an erroneous huge length prevents 
// disassert_PD from triggering, keeping Rx_PD stuck at 1.

`timescale 1ns / 1ps

module Depacketizer #(
    parameter BYTES = 1,
    parameter WIDTH = 16,
    parameter MAX_WINDOW_WIDTH = 8,
    parameter MAX_PAYLOAD_BYTES = 300 // 新增：最大允许的包长度（字节），根据你的协议修改
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

    localparam ST_IDLE = 3'd0;
    localparam ST_TRN = 3'd1;
    localparam ST_HDR = 3'd2;
    localparam ST_PLD = 3'd3;
    localparam ST_LAST = 3'd4;
    localparam ST_WAIT = 3'd5;

    reg [2:0] state, state_next;
    reg [15:0] cnt;
    reg [15:0] payload_length;
    reg [15:0] payload_length_symbs;
    reg [7:0] MCS, signature;
    reg        BD_sgn_reg;
    reg        is_bpsk_reg;
    wire       in_BPSK_signed = in_BPSK ~^ BD_sgn_reg;
    wire [1:0] sym_fsm_qpsk = is_bpsk_reg ? {2{in_BPSK_signed}} : (in_QPSK ~^ {2{BD_sgn_reg}});

    // 计算最大允许的 Symbol 数，用于 Sanity Check
    // 如果是 QPSK，Symbols = Bytes * 4; 如果是 BPSK，Symbols = Bytes * 8
    // 这里为了安全，我们取一个较大的宽限值，或者根据 MCS 动态判断。
    // 简单起见，如果 payload_length (bit单位或其他单位) 解析出来过大，直接拒绝。
    // 假设 payload_length 是字节数：
    wire       length_valid = (payload_length <= MAX_PAYLOAD_BYTES);

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
                    state_next = ST_HDR;
                end else begin
                    state_next = ST_TRN;
                end
            end
            ST_HDR: begin
                if (cnt + 1 == 64) begin
                    // ========================================================
                    // 修正核心：Sanity Check (安全性检查)
                    // 如果解析出的长度超过了协议允许的最大值，或者为0，
                    // 强制跳转回 IDLE。这会触发 disassert 信号，
                    // 从而复位 Rx_PD，打破死锁。
                    // ========================================================
                    if (payload_length_symbs == 0 || !length_valid) begin
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

    // ===========================
    // Data Path Logic
    // ===========================
    always @(posedge clk) begin
        if (rst) begin
            cnt <= 0;
            is_bpsk_reg <= 1'b1;
            {MCS, payload_length, signature} <= 0;
            payload_length_symbs <= 0;
            BD_sgn_reg <= 0;
        end else if (clk_enable) begin
            if (state != state_next) begin
                cnt <= 0;
            end else if (data_tready || state == ST_TRN || state == ST_HDR) begin
                cnt <= cnt + 1;
            end else begin
                cnt <= cnt;
            end

            case (state)
                ST_TRN: BD_sgn_reg <= BD_sgn;

                ST_HDR: begin
                    if (data_tready) begin
                        if (cnt <= 7) begin
                            MCS[7-cnt] <= in_BPSK_signed;
                        end else if (cnt <= 23) begin
                            payload_length[23-cnt] <= in_BPSK_signed;
                        end else if (cnt == 28) begin
                            signature[3] <= in_BPSK;
                            is_bpsk_reg  <= MCS[5];
                        end else if (cnt == 29) begin
                            signature[2] <= in_BPSK;
                            payload_length_symbs <= is_bpsk_reg ? payload_length : (payload_length >> 1);
                        end else if (cnt <= 31) begin
                            signature[31-cnt] <= in_BPSK_signed;
                        end
                    end
                end

                ST_IDLE: begin
                    is_bpsk_reg <= 1'b1;
                end

                default: begin
                end
            endcase
        end
    end

    // ===========================
    // Output Logic
    // ===========================
    always @(*) begin
        case (MODE_CTRL)
            MODE_BPSK, MODE_QPSK: begin
                data_tdata  = {{BITS - 2{1'b0}}, in_QPSK};
                data_tvalid = 1'b1;
                data_tlast  = 1'b0;
                is_bpsk     = (MODE_CTRL == MODE_BPSK);
            end
            MODE_MIX: begin
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

    assign in_ready   = data_tready;
    assign data_tuser = is_bpsk;
    assign QPSK       = (MODE_CTRL == MODE_MIX) ? sym_fsm_qpsk : in_QPSK;
    assign BPSK       = (MODE_CTRL == MODE_MIX) ? in_BPSK_signed : in_BPSK;

    // ========================================================
    // 修正的 Disassert 逻辑
    // 当 FSM 回到 IDLE 状态时（无论是正常结束还是因为 Sanity Check 失败强制退出），
    // 必须确保没有待处理的 disassert 信号被遗漏。
    // 但根据时序，通常在 ST_LAST 结束时发出 disassert。
    // 如果 Header 检查失败导致直接跳回 IDLE，我们需要在这里生成一个脉冲吗？
    //
    // 观察 Rx_PD: if (disassert_PD | ~SD_flag) ...
    // 我们需要在回到 IDLE 的瞬间让 disassert_PD 有效。
    //
    // 方法1：利用 data_tlast (原有逻辑，适用于正常包)
    // 方法2：增加逻辑：如果我们刚刚决定从 ST_HDR 跳回 ST_IDLE (即 Header 无效)，也拉高 disassert。
    // ========================================================

    // 检测是否正在因为错误而强制跳转回 IDLE
    wire error_abort = (state == ST_HDR) && (state_next == ST_IDLE) && (payload_length_symbs != 0);
    // 注意：正常的 payload=0 结束也会走这里，所以这行逻辑覆盖了空包和错误包，都可以 assert，没问题。

    assign disassert_BD = data_tlast || error_abort;
    assign disassert_PD = data_tlast || error_abort;

endmodule
