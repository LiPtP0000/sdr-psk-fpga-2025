// Module: PSK_Detection
// =====================
// Detect BPSK/QPSK from I/Q data.
//

// Author: LiPtP (LiPtP0000)
// Date: 2025/12/17

`timescale 1ns / 1ps

module PSK_Detection #(
    parameter WIDTH = 16
) (
    input                     clk,
    input                     clk_enable,
    input                     rst_32M768,
    input  signed [WIDTH-1:0] I_tdata,
    input                     I_tvalid,
    input  signed [WIDTH-1:0] Q_tdata,
    input                     Q_tvalid,
    output reg                BPSK,
    output reg    [      1:0] QPSK,
    output reg                vld
);
    wire [WIDTH:0] I_plus_Q;
    // Here we perform the signed addition, by sign extending the MSB.
    assign I_plus_Q = {I_tdata[WIDTH-1], I_tdata} + {Q_tdata[WIDTH-1], Q_tdata};

    always @(posedge clk) begin
        if (rst_32M768) begin
            QPSK <= 2'b0;
            vld  <= 1'b0;
        end else if (clk_enable) begin
            if (I_tvalid && Q_tvalid) begin
                QPSK <= {I_tdata[WIDTH-1], Q_tdata[WIDTH-1]};
                BPSK <= I_plus_Q[WIDTH];
                vld  <= I_tvalid & Q_tvalid;
            end
        end else;
    end
endmodule
