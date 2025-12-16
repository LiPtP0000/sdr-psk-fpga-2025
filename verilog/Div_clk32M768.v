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
    reg [14:0] clk_cnt_d = 15'd0;  // Delayed counter for edge detection

    // Counter
    always @(posedge clk32M768) begin
        clk_cnt   <= clk_cnt + 15'd1;
        clk_cnt_d <= clk_cnt;
    end

    // Generate clock enable pulses by detecting rising edges (0->1 transition)
    // Each output pulses high for one 32.768MHz clock cycle
    assign clk16M384 = clk_cnt[0] & ~clk_cnt_d[0];  // Every 2 cycles
    assign clk8M192  = clk_cnt[1] & ~clk_cnt_d[1];  // Every 4 cycles
    assign clk4M096  = clk_cnt[2] & ~clk_cnt_d[2];  // Every 8 cycles
    assign clk2M048  = clk_cnt[3] & ~clk_cnt_d[3];  // Every 16 cycles
    assign clk1M024  = clk_cnt[4] & ~clk_cnt_d[4];  // Every 32 cycles
    assign clk512K   = clk_cnt[5] & ~clk_cnt_d[5];  // Every 64 cycles
    assign clk256K   = clk_cnt[6] & ~clk_cnt_d[6];  // Every 128 cycles
    assign clk128K   = clk_cnt[7] & ~clk_cnt_d[7];  // Every 256 cycles
    assign clk64K    = clk_cnt[8] & ~clk_cnt_d[8];  // Every 512 cycles
    assign clk32K    = clk_cnt[9] & ~clk_cnt_d[9];  // Every 1024 cycles
    assign clk16K    = clk_cnt[10] & ~clk_cnt_d[10];  // Every 2048 cycles
    assign clk8K     = clk_cnt[11] & ~clk_cnt_d[11];  // Every 4096 cycles
    assign clk4K     = clk_cnt[12] & ~clk_cnt_d[12];  // Every 8192 cycles
    assign clk2K     = clk_cnt[13] & ~clk_cnt_d[13];  // Every 16384 cycles
    assign clk1K     = clk_cnt[14] & ~clk_cnt_d[14];  // Every 32768 cycles
endmodule
