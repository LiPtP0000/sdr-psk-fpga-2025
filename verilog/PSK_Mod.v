// Module: PSK_Mod
// ===================
// This module generates the PSK modulated I and Q signals based on input bits and carrier signals.
// It has a delay of 1 16M384 clock cycle.
// 
// Author: LiPtP
// Date: 2025/12/20
`timescale 1ns / 1ps

module PSK_Mod #(
    parameter WIDTH = 12,
    parameter BYTES = 1
) (
    input                           clk,
    input                           clk_enable,
    input                           rst_n,
    input             [BYTES*8-1:0] data_tdata,
    input                           data_tvalid,
    output reg                      data_tready,
    input                           data_tlast,
    input                           data_tuser,   // is_bpsk
    input  signed     [  WIDTH-1:0] carrier_I,
    input  signed     [  WIDTH-1:0] carrier_Q,
    input             [        3:0] DELAY_CNT,
    output reg signed [  WIDTH-1:0] out_I,
    output reg signed [  WIDTH-1:0] out_Q,
    output reg                      out_vld,
    output reg                      out_last,
    output reg                      out_is_bpsk,
    output reg        [        1:0] out_bits
);

    localparam BITS = BYTES * 8;

    reg [     3:0] cnt;
    reg [BITS-1:0] data_buf;
    reg vld_buf, last_buf, is_bpsk_buf;

    // Extract the current bits being processed
    wire                    bit_1 = data_buf[1];
    // In BPSK mode, force bit_0 = bit_1 (mapping 0->00, 1->11) to reuse QPSK logic
    wire                    bit_0 = is_bpsk_buf ? data_buf[1] : data_buf[0];

    // Precompute: decide whether to swap I/Q bases based on XOR relationship
    // 00/11 (XOR=0) -> keep I, Q
    // 01/10 (XOR=1) -> swap Q, I
    wire signed [WIDTH-1:0] base_I = (bit_1 ^ bit_0) ? carrier_Q : carrier_I;
    wire signed [WIDTH-1:0] base_Q = (bit_1 ^ bit_0) ? carrier_I : carrier_Q;

    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            cnt         <= 4'b0;
            data_tready <= 1'b0;
            out_bits    <= 2'b00;
            out_I       <= 'b0;
            out_Q       <= 'b0;
            out_vld     <= 1'b0;
            out_last    <= 1'b0;
            out_is_bpsk <= 1'b0;
            data_buf    <= {BITS{1'b0}};
            vld_buf     <= 1'b0;
            last_buf    <= 1'b0;
            is_bpsk_buf <= 1'b0;
        end else if (clk_enable) begin  // 16.384MHz clock enable
            // 计数器逻辑
            cnt <= cnt + 1'b1;

            // 数据握手逻辑 (保持原有时序)
            if (cnt + 4'b1 == DELAY_CNT) begin
                data_tready <= 1'b1;
            end else if (cnt == DELAY_CNT) begin
                data_buf    <= data_tdata;
                vld_buf     <= data_tvalid;
                last_buf    <= data_tlast;
                is_bpsk_buf <= data_tuser;
                data_tready <= 1'b0;
            end else begin
                data_tready <= 1'b0;
            end

            // Modulation Output
            if (vld_buf) begin
                out_I <= bit_0 ? -base_I : base_I;
                out_Q <= bit_1 ? -base_Q : base_Q;
            end else begin
                out_I <= 0;
                out_Q <= 0;
            end

            // AXI status lines
            out_vld     <= vld_buf;
            out_last    <= last_buf;
            out_is_bpsk <= is_bpsk_buf;
            out_bits    <= data_buf[1:0];
        end else begin
            // hold values when clk_enable is low
            cnt         <= cnt;
            data_tready <= data_tready;

            out_I       <= out_I;
            out_Q       <= out_Q;
            out_vld     <= out_vld;

            // AXI status lines
            out_bits    <= out_bits;
            out_vld     <= vld_buf;
            out_last    <= last_buf;
            out_is_bpsk <= is_bpsk_buf;
            is_bpsk_buf <= is_bpsk_buf;
            data_buf    <= data_buf;
            vld_buf     <= vld_buf;
            last_buf    <= last_buf;
        end
    end


endmodule
