// Module: Div_clk32M768
// =====================
// This module generates clock enable signals from the 32.768MHz clock for various frequencies:
// 16.384MHz, 8.192MHz, 4.096MHz, 2.048MHz, 1.024MHz, 512KHz, 256KHz, 128KHz, 64KHz, 32KHz, 
// 16KHz, 8KHz, 4KHz, 2KHz, 1KHz.
// Clock enable signals pulse high for one 32.768MHz clock cycle at the corresponding rate.
//
// Author: Wuqiong Zhao (me@wqzhao.org)
// Date: 2024/01/05
// Modified: 2025/12/17 - Changed to clock enable implementation

`timescale 1ns / 1ps

module Div_clk32M768 (
    input  clk32M768,
    output clk16M384,
    output clk8M192,
    output clk4M096,
    output clk2M048,
    output clk1M024,
    output clk512K,
    output clk256K,
    output clk128K,
    output clk64K,
    output clk32K,
    output clk16K,
    output clk8K,
    output clk4K,
    output clk2K,
    output clk1K
);
    reg [14:0] clk_cnt = 15'd0;

    // Counter increments on every 32MHz clock cycle
    always @(posedge clk32M768) begin
        clk_cnt <= clk_cnt + 15'd1;
    end

    // Generate clock enable pulses - each pulses high for one 32MHz cycle
    // when the corresponding bit transitions from 0 to 1
    assign clk16M384 = (clk_cnt[0:0] == 1'd0);  // Pulse every 2 cycles (when cnt[0]=0)
    assign clk8M192  = (clk_cnt[1:0] == 2'd0);  // Pulse every 4 cycles (when cnt[1:0]=00)
    assign clk4M096  = (clk_cnt[2:0] == 3'd0);  // Pulse every 8 cycles
    assign clk2M048  = (clk_cnt[3:0] == 4'd0);  // Pulse every 16 cycles
    assign clk1M024  = (clk_cnt[4:0] == 5'd0);  // Pulse every 32 cycles
    assign clk512K   = (clk_cnt[5:0] == 6'd0);  // Pulse every 64 cycles
    assign clk256K   = (clk_cnt[6:0] == 7'd0);  // Pulse every 128 cycles
    assign clk128K   = (clk_cnt[7:0] == 8'd0);  // Pulse every 256 cycles
    assign clk64K    = (clk_cnt[8:0] == 9'd0);  // Pulse every 512 cycles
    assign clk32K    = (clk_cnt[9:0] == 10'd0);  // Pulse every 1024 cycles
    assign clk16K    = (clk_cnt[10:0] == 11'd0);  // Pulse every 2048 cycles
    assign clk8K     = (clk_cnt[11:0] == 12'd0);  // Pulse every 4096 cycles
    assign clk4K     = (clk_cnt[12:0] == 13'd0);  // Pulse every 8192 cycles
    assign clk2K     = (clk_cnt[13:0] == 14'd0);  // Pulse every 16384 cycles
    assign clk1K     = (clk_cnt[14:0] == 15'd0);  // Pulse every 32768 cycles
endmodule
