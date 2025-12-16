module timing_error_wrapper (
    input wire        clk_32M768,
    input wire        is_bpsk,
    input wire [15:0] I,
    input wire [15:0] Q,

    // Outputs
    output wire [15:0] error_n
);

    // Requires I & Q signal delayed by 16 and 32 clocks
    // This is implemented by using 4 16-stage RAM-based shift registers
    // output declaration of module gardner_shift_ram
    wire [15:0] I_delay_16;
    wire [15:0] I_delay_32;
    wire [15:0] Q_delay_16;
    wire [15:0] Q_delay_32;

    gardner_shift_ram u_gardner_shift_ram_0 (
        .D  (I),
        .CLK(clk_32M768),
        .Q  (I_delay_16)
    );
    gardner_shift_ram u_gardner_shift_ram_1 (
        .D  (I_delay_16),
        .CLK(clk_32M768),
        .Q  (I_delay_32)
    );
    gardner_shift_ram u_gardner_shift_ram_2 (
        .D  (Q),
        .CLK(clk_32M768),
        .Q  (Q_delay_16)
    );
    gardner_shift_ram u_gardner_shift_ram_3 (
        .D  (Q_delay_16),
        .CLK(clk_32M768),
        .Q  (Q_delay_32)
    );

    // output declaration of module Gardner_Timing_Error
    wire [16-1:0] error_n;

    Gardner_Timing_Error #(
        .WIDTH(16)
    ) u_Gardner_Timing_Error (
        .clk    (clk_32M768),
        .is_bpsk(is_bpsk),
        .I      (I),
        .I_d16  (I_delay_16),
        .I_d32  (I_delay_32),
        .Q      (Q),
        .Q_d16  (Q_delay_16),
        .Q_d32  (Q_delay_32),
        .error_n(error_n)
    );

endmodule
