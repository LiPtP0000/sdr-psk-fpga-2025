`timescale 1ns / 1ps

module Packetizer #(
    parameter BYTES = 1
) (
    input clk,
    input clk_enable, (* X_INTERFACE_PARAMETER = "POLARITY ACTIVE_LOW" *)
    input rst_n,
    input [3:0] MODE_CTRL,
    input [15:0] payload_length,
    // AXIS input
    input [BYTES*8-1:0] I_tdata,
    input I_tvalid,
    output reg I_tready,  // Now driven combinationally
    input I_tlast,
    input I_tuser,  // is_bpsk
    // AXIS output
    output reg [BYTES*8-1:0] O_tdata,
    output reg O_tvalid,
    input O_tready,
    output reg O_tlast,
    output reg O_tuser,  // is_bpsk
    // internal status signals
    output reg hdr_vld,
    output reg pld_tvalid,
    input pld_tready,
    output [BYTES*8-1:0] pld_tdata,
    output pld_tuser,
    output reg pkt_sent
);
    localparam BITS = BYTES * 8;
    localparam [9:0] HDR_LENGTH = 320;
    localparam MODE_MIX = 4'b0100;

    // FSM States
    localparam ST_IDLE = 5'b00001;
    localparam ST_HDR = 5'b00010;  // Sending preamble and header
    localparam ST_PLD = 5'b00100;  // Sending payload
    localparam ST_LAST = 5'b01000;  // Sending the last symbol of payload
    localparam ST_WAIT = 5'b10000;  // Flushing input FIFO and clearing the link

    reg [4:0] state, state_next;
    reg  [ 9:0] hdr_cnt;
    reg  [15:0] payload_cnt;
    reg  [15:0] payload_length_symbs;

    // Transaction handshake logic
    wire        I_trans = I_tvalid && I_tready;

    always @(posedge clk) begin
        if (!rst_n) begin
            state <= ST_IDLE;
        end else if (clk_enable) begin
            state <= state_next;
        end
    end

    always @(*) begin
        state_next = state;
        case (state)
            ST_IDLE: begin
                // Transition to Header state if MIX mode is enabled and data arrives
                if (MODE_CTRL == MODE_MIX && I_trans) state_next = ST_HDR;
            end
            ST_HDR: begin
                // Penultimate transition: hdr_cnt starts from 0, so hdr_cnt==319 is the 320th cycle.
                // This is equivalent to (hdr_cnt + 1 == HDR_LENGTH).
                // On the next clock, state transitions to ST_PLD/ST_LAST after all 320 header bits.
                // After finishing the fixed-length header, move to payload or last
                if (hdr_cnt == HDR_LENGTH - 1)
                    state_next = (payload_length_symbs > 1) ? ST_PLD : ST_LAST;
            end
            ST_PLD: begin
                // Penultimate transition: Jump to ST_LAST when processing the (L-1)th symbol.
                // payload_cnt starts from 0, so payload_cnt==(L-2) means we've sent (L-1) symbols.
                // This matches Depacketizer's logic: (cnt + 2 == L) <==> (cnt == L - 2).
                // The Lth (last) symbol will be sent in ST_LAST with O_tlast asserted.
                // Check if the next symbol is the last one in the packet
                if (I_trans && (payload_cnt == payload_length_symbs - 2)) state_next = ST_LAST;
            end
            ST_LAST: begin
                // After the last valid symbol is transmitted, go to wait/flush state
                if (I_trans) state_next = ST_WAIT;
            end
            ST_WAIT: begin
                // Ensure the input FIFO is completely empty before allowing the next packet
                if (!I_tvalid) state_next = ST_IDLE;
            end
            default: state_next = ST_IDLE;
        endcase
    end

    // 3. Ready Signal Logic (Combinational - No Delay)
    always @(*) begin
        if (MODE_CTRL == MODE_MIX) begin
            case (state)
                ST_IDLE: I_tready = 1'b1;  // Ready to accept the first byte of a new packet
                ST_HDR:  I_tready = 1'b0;  // Block input while generating internal header
                ST_PLD:  I_tready = O_tready;  // Direct pass-through of backpressure
                ST_LAST: I_tready = O_tready;  // Direct pass-through of backpressure
                ST_WAIT: I_tready = 1'b1;  // Flush any remaining data in the FIFO
                default: I_tready = 1'b0;
            endcase
        end else begin
            // Non-MIX mode: transparent pass-through
            I_tready = O_tready;
        end
    end

    // 4. Datapath and Output Logic (Sequential)
    always @(posedge clk) begin
        if (!rst_n) begin
            hdr_cnt <= 0;
            payload_cnt <= 0;
            O_tvalid <= 0;
            O_tlast <= 0;
            O_tdata <= 0;
            O_tuser <= 1'b1;
            pkt_sent <= 0;
            hdr_vld <= 0;
            pld_tvalid <= 0;
            payload_length_symbs <= 0;
        end else if (clk_enable) begin
            if (MODE_CTRL == MODE_MIX) begin
                case (state)
                    ST_IDLE: begin
                        O_tvalid <= 1'b0;
                        O_tlast <= 1'b0;
                        hdr_cnt <= 0;
                        payload_cnt <= 0;
                        pkt_sent <= 1'b0;
                        hdr_vld <= 1'b0;
                        pld_tvalid <= 1'b0;
                        // Latch the payload length in symbols (adjust for BPSK/QPSK)
                        payload_length_symbs <= I_tuser ? payload_length : (payload_length >> 1);
                    end

                    ST_HDR: begin
                        hdr_cnt <= hdr_cnt + 1;
                        O_tvalid <= 1'b1;
                        O_tuser <= 1'b1;  // Header is always BPSK
                        hdr_vld <= 1'b1;
                        pld_tvalid <= 1'b0;

                        // Preamble/Header pattern generation
                        if (hdr_cnt < 256) begin  // 32 bytes preamble
                            // 0101... pattern with phase flip at the end
                            O_tdata <= {BITS{hdr_cnt[0] ^ (hdr_cnt >= 224)}};
                        end else if (hdr_cnt < 264) begin  // 1 byte modulation info
                            O_tdata <= {BITS{I_tuser ^ hdr_cnt[0]}};
                        end else if (hdr_cnt < 280) begin  // 2 bytes length info
                            O_tdata <= {BITS{payload_length[15-(hdr_cnt-264)]}};
                        end else begin  // Remaining header padding
                            O_tdata <= {BITS{hdr_cnt[0]}};
                        end
                    end

                    ST_PLD, ST_LAST: begin
                        // Forward data if output is ready or if we are currently holding no valid data
                        if (O_tready || !O_tvalid) begin
                            O_tvalid <= I_tvalid;
                            O_tdata  <= I_tdata;
                            O_tlast  <= (state == ST_LAST);
                        end
                        O_tuser <= 1'b0;  // Payload is not header BPSK
                        hdr_vld <= 1'b0;
                        pld_tvalid <= 1'b1;
                        if (I_trans) payload_cnt <= payload_cnt + 1;
                    end

                    ST_WAIT: begin
                        O_tvalid <= 1'b0;
                        O_tlast <= 1'b0;
                        hdr_vld <= 1'b0;
                        pld_tvalid <= 1'b0;
                        // Trigger pkt_sent pulse once FIFO is confirmed empty
                        if (!I_tvalid) pkt_sent <= 1'b1;
                    end
                endcase
            end else begin
                // Bypass mode logic
                O_tvalid <= I_tvalid;
                O_tdata <= I_tdata;
                O_tlast <= I_tlast;
                O_tuser <= I_tuser;
                hdr_vld <= 1'b0;
                pld_tvalid <= 1'b1;
                pkt_sent <= 1'b0;
            end
        end
    end
    assign pld_tdata = (pld_tvalid & pld_tready) ? O_tdata : {BYTES * 8{1'b0}};
    assign pld_tuser = O_tuser;
endmodule
