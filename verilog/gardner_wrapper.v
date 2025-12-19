module gardner_wrapper (
    // Global inputs
    input wire       clk_32M768,
    input wire       rst_32M768,
    input wire [3:0] GARDNER_SHIFT,

    // Data inputs (AXI-Stream style from image)
    input wire [15:0] I_tdata,
    input wire        I_tvalid,
    input wire [15:0] Q_tdata,
    input wire        Q_tvalid,

    // Global outputs
    output wire [15:0] I_1M,
    output wire [15:0] Q_1M,
    output wire        clk_out,
    output wire [15:0] error_n,
    output wire [15:0] increment
);

    // Internal Wires
    wire [15:0] w_I_up2;
    wire [15:0] w_Q_up2;
    wire w_interp_vld;  // Valid output from interpolation module, typically present though not shown in diagram
    wire [15:0] w_error_n;

    // Output assignment for error_n (it feeds back to Gardner and goes out)
    assign error_n = w_error_n;


    // --- Submodules ---

    interpolation_wrapper u_interpolation_wrapper (
        .clk_32M768(clk_32M768),
        .I_tdata   (I_tdata),
        .I_tvalid  (I_tvalid),
        .Q_tdata   (Q_tdata),
        .Q_tvalid  (Q_tvalid),
        // Outputs
        .I_smoothed_tdata(w_I_up2),
        .Q_smoothed_tdata(w_Q_up2),
        .smoothed_tvalid (w_interp_vld)
    );

    timing_error_wrapper u_timing_error_wrapper (
        .clk_32M768(clk_32M768),
        .I         (w_I_up2),     // [15:0]
        .Q         (w_Q_up2),     // [15:0]
        // Outputs
        .error_n   (w_error_n)
    );

    Gardner_Corrector #(
        .WIDTH(16)
    ) u_Gardner_Corrector (
        .clk          (clk_32M768),
        .rst          (rst_32M768),
        .GARDNER_SHIFT(GARDNER_SHIFT),
        .I_32M        (w_I_up2),        // Connect to Interpolation output
        .Q_32M        (w_Q_up2),        // Connect to Interpolation output
        .error_n      (w_error_n),      // Connect to Timing_Error output
        .increment    (increment),
        .I_1M         (I_1M),
        .Q_1M         (Q_1M),
        .clk_out      (clk_out)
    );

endmodule
