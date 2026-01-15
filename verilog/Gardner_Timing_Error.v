// Module: Gardner_Timing_Error
// ============================
// This module calculates the timing error using the Gardner algorithm.
// It requires samples y(n), y(n-16), y(n-32) as inputs,
// which has a sample rate 32x of the symbol rate.
//

// Date: 2024/01/05

`timescale 1ns / 1ps

module Gardner_Timing_Error #(
    parameter WIDTH              = 16,
    parameter USE_SIMPLE_GARDNER = 1,   // 1: Sign-only (original), 0: Linear (more bits)
    parameter DIFF_BITS          = 8    // Number of MSB bits to use for difference in Linear mode
) (
    input                     clk,
    input  signed [WIDTH-1:0] I,       // Only MSB (sign bit) is used for edge detection
    input  signed [WIDTH-1:0] I_d16,   // All bits used for error calculation
    input  signed [WIDTH-1:0] I_d32,   // Only MSB (sign bit) is used for edge detection
    input  signed [WIDTH-1:0] Q,       // Only MSB (sign bit) is used for edge detection
    input  signed [WIDTH-1:0] Q_d16,   // All bits used for error calculation
    input  signed [WIDTH-1:0] Q_d32,   // Only MSB (sign bit) is used for edge detection
    output signed [WIDTH-1:0] error_n
);
    // localparam [2:0] SGN_DIFF_P = 3'b001;
    // localparam [2:0] SGN_DIFF_N = 3'b010;
    // localparam [2:0] SGN_DIFF_0 = 3'b100;

    reg signed [WIDTH-1:0] I_error_n, Q_error_n;

    generate
        if (USE_SIMPLE_GARDNER) begin : gen_simple_gardner
            // Gardner algorithm: detect sign changes between I(n) and I(n-32)
            // Note: Only sign bits (MSB) of I, I_d32, Q, Q_d32 are used. Lower bits will be optimized away.
            wire       I_sgn_n = I[WIDTH-1];
            wire       I_d32_sgn_n = I_d32[WIDTH-1];
            wire [1:0] I_sgn_x2 = {I_sgn_n, I_d32_sgn_n};

            wire       Q_sgn_n = Q[WIDTH-1];
            wire       Q_d32_sgn_n = Q_d32[WIDTH-1];
            wire [1:0] Q_sgn_x2 = {Q_sgn_n, Q_d32_sgn_n};

            always @(posedge clk) begin
                case (I_sgn_x2)
                    2'b01:   I_error_n <= I_d16;  // I_sgn_diff <= SGN_DIFF_P; // 1 - 0
                    2'b10:   I_error_n <= -I_d16;  // I_sgn_diff <= SGN_DIFF_N; // 0 - 1
                    default: I_error_n <= 0;  // I_sgn_diff <= SGN_DIFF_0; // x - x
                endcase
                case (Q_sgn_x2)
                    2'b01:   Q_error_n <= Q_d16;  // Q_sgn_diff <= SGN_DIFF_P; // 1 - 0
                    2'b10:   Q_error_n <= -Q_d16;  // Q_sgn_diff <= SGN_DIFF_N; // 0 - 1
                    default: Q_error_n <= 0;  // Q_sgn_diff <= SGN_DIFF_0; // x - x

                endcase
            end
        end else begin : gen_linear_gardner
            // Linear Gardner: error = I(n-16) * (I(n) - I(n-32))
            // Use top DIFF_BITS bits for the difference calculation
            wire signed [DIFF_BITS-1:0] I_msb = I[WIDTH-1:WIDTH-DIFF_BITS];
            wire signed [DIFF_BITS-1:0] I_d32_msb = I_d32[WIDTH-1:WIDTH-DIFF_BITS];
            wire signed [  DIFF_BITS:0] I_diff = I_msb - I_d32_msb;

            wire signed [DIFF_BITS-1:0] Q_msb = Q[WIDTH-1:WIDTH-DIFF_BITS];
            wire signed [DIFF_BITS-1:0] Q_d32_msb = Q_d32[WIDTH-1:WIDTH-DIFF_BITS];
            wire signed [  DIFF_BITS:0] Q_diff = Q_msb - Q_d32_msb;

            always @(posedge clk) begin
                // Multiply and shift to maintain scale
                // Result is roughly proportional to I_d16 * slope
                // We shift by DIFF_BITS-1 to normalize the slope part
                I_error_n <= (I_d16 * I_diff) >>> (DIFF_BITS - 1);
                Q_error_n <= (Q_d16 * Q_diff) >>> (DIFF_BITS - 1);
            end
        end
    endgenerate

    // In our transmission case, I and Q should be the same, so we still add them up.
    assign error_n = (I_error_n >>> 1) + (Q_error_n >>> 1);
endmodule
