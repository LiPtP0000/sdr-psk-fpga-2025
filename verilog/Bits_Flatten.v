`timescale 1ns / 1ps

module Bits_Flatten #(
    parameter N = 2,  // useful bits (typically 2 for 1.024M -> 2.048M)
    parameter M = 8,
    parameter BYPASS_SELECTION = 1
) (
    input clk,    // System Clock (32.768 MHz)
    input rst_n,  // System Reset
    input ce_1M,  // 1.024 MHz Enable Pulse (High for 1 cycle)
    input ce_2M,  // 2.048 MHz Enable Pulse (High for 1 cycle)

    input bypass,  // Bypass mode control

    input [M-1:0] I,     // Input Data
    input         I_vld, // Input Valid

    output reg O,     // Serial Output Bit
    output reg O_vld  // Output Valid Pulse (aligned to ce_2M)
);

    // ============================================================
    // Internal State
    // ============================================================
    reg [N-1:0] shift_reg;
    reg         latched_vld;
    reg [  3:0] bit_cnt;

    // ============================================================
    // Main Logic (Single Clock Domain)
    // ============================================================
    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            O           <= 1'b0;
            O_vld       <= 1'b0;
            shift_reg   <= 'd0;
            latched_vld <= 1'b0;
            bit_cnt     <= 'd0;
        end else begin
            // Don't hold O_vld high by default
            O_vld <= 1'b0;

            if (bypass) begin
                // Bypass mode: sample and output only when 1M enable is active
                if (ce_1M) begin
                    O     <= I_vld & I[BYPASS_SELECTION];
                    O_vld <= I_vld;
                end
            end else begin
                // Normal 模式：并串转换
                // 只有在 2M 速率的时间点（ce_2M == 1）才进行动作
                if (ce_2M) begin

                    if (ce_1M) begin
                        // ------------------------------------------------
                        // 加载阶段 (Load Phase)
                        // 当 ce_1M 有效时，意味着新的一字节数据 I 已经准备好
                        // 此时 ce_2M 通常也是有效的（假设计数器对齐）
                        // ------------------------------------------------
                        shift_reg   <= I[N-1:0] >> 1;  // 将 Bit 1..N 存入移位寄存器
                        latched_vld <= I_vld;

                        // 立即输出最低位 (Bit 0)
                        O           <= I_vld & I[0];
                        O_vld       <= I_vld;

                        // 重置位计数器 (已输出1位)
                        bit_cnt     <= 1;
                    end else begin
                        // ------------------------------------------------
                        // 移位阶段 (Shift Phase)
                        // ce_2M 有效，但 ce_1M 无效 -> 输出剩余的位
                        // ------------------------------------------------
                        if (latched_vld && (bit_cnt < N)) begin
                            O         <= shift_reg[0];  // 输出当前移位寄存器最低位
                            shift_reg <= shift_reg >> 1;
                            O_vld     <= 1'b1;
                            bit_cnt   <= bit_cnt + 1;
                        end else begin
                            // 数据发完了，或者是无效数据
                            O     <= 1'b0;
                            O_vld <= 1'b0;
                        end
                    end
                end
            end
        end
    end

endmodule
