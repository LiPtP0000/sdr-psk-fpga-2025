// Module: Rx_PD
// =============
// PD: Packet Detection
// This module detects the presence of packet transmission.
// It detects the repeated 010101... sequence.
//

// Date: 2024/01/05

`timescale 1ns / 1ps

module Rx_PD #(
    parameter WIDTH = 16,
    parameter MAX_WINDOW_WIDTH = 8
) (
    input                             clk,
    input                             clk_enable,
    input                             rst,
    // input configuration
    input      [MAX_WINDOW_WIDTH-1:0] RX_PD_WINDOW,
    // input I symbol signal (BPSK)
    input                             BPSK,
    // input for disasserting PD (after one complete packet)
    input                             disassert_PD,
    // input SD flag (prerequisite)
    input                             SD_flag,
    // output flag
    output reg                        PD_flag
);
    reg  [MAX_WINDOW_WIDTH-1:0] cnt;
    reg                         BPSK_reg;
    wire                        BPSK_diff;
    assign BPSK_diff = BPSK ^ BPSK_reg;

    always @(posedge clk) begin
        if (rst) begin
            PD_flag  <= 1'b0;
            BPSK_reg <= 1'b0;
        end else if (clk_enable) begin
            if (disassert_PD | ~SD_flag) begin
                PD_flag <= 1'b0;
            end else if (cnt >= RX_PD_WINDOW) begin
                PD_flag <= 1'b1;
            end else begin
                PD_flag <= PD_flag;  // we do not disassert it automatically
            end
            BPSK_reg <= BPSK;
        end
    end
    always @(posedge clk) begin
        if (rst) begin  // synchronized rst
            cnt <= 0;
        end else if (clk_enable) begin
            if (BPSK_diff == 1'b1) begin
                if (cnt < RX_PD_WINDOW) begin
                    cnt <= cnt + 1;
                end else begin
                    cnt <= cnt;  // hold
                end
            end else begin
                cnt <= 0;
            end
        end
    end
endmodule
