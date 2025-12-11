module Rx_wrapper (
    input         clk_1M024,
    input         clk_2M048,
    input         clk_16M384,
    input         clk_32M768,
    input  [11:0] ADC_I,
    input  [11:0] ADC_Q,
    input         rst_16M384,
    input         rst_32M768,
    input  [ 3:0] MODE_CTRL,
    input  [ 3:0] FEEDBACK_SHIFT,
    input  [ 3:0] GARDNER_SHIFT,
    input  [15:0] RX_SD_THRESHOLD,
    input  [ 7:0] RX_SD_WINDOW,
    input  [ 7:0] RX_PD_WINDOW,
    input  [ 7:0] RX_BD_WINDOW,
    output        BPSK_raw,
    output [ 1:0] QPSK_raw,
    output [15:0] I_16M,
    output [15:0] Q_16M,
    output [11:0] NCO_cos,
    output [15:0] I_1M,
    output [15:0] Q_1M,
    output        clk_1M_out,
    output [ 1:0] QPSK,
    output        BPSK,
    output        Rx_1bit,
    output [ 7:0] data_tdata,
    output        data_tvalid,
    output        data_tlast,
    output        data_tuser,
    output [15:0] error_tdata,
    output [15:0] feedback_tdata,
    output        Rx_valid,
    output [15:0] gardner_error,
    output [15:0] gardner_increment
);

    wire        is_bpsk;
    reg  [11:0] PSK_signal;
    reg         is_bpsk_out;

    // Fetch I stream from ADC output. Q stream is not used in SDR.
    PSK_Signal_Extend #(
        .I_WIDTH   (12),
        .O_WIDTH   (12),
        .USE_I_STRM(1)
    ) u_PSK_Signal_Extend (
        .clk        (clk_16M384),
        .DAC_I      (ADC_I),
        .DAC_Q      (ADC_Q),
        .is_bpsk    (is_bpsk),
        .PSK_signal (PSK_signal),
        .is_bpsk_out(is_bpsk_out)
    );

    wire        I_valid;  // to Gardner
    wire [15:0] I_data;  // to Gardner
    wire        Q_valid;  // to Gardner
    wire [15:0] Q_data;  // to Gardner
    wire [15:0] feedback_tdata;  // to ILA
    wire [15:0] error_tdata;  // to ILA
    wire [11:0] NCO_cos;  // Carrier I, to ILA

    // No way to parametrize it here?
    // Unless IPs can be parametrized. 
    costas_loop_wrapper #(
        .LPF_OUT_WIDTH    (80),
        .DATA_WIDTH       (16),
        .MSB_TRUNCATE_BITS(6)
    ) u_costas_loop_wrapper (
        .clk_16M384    (clk_16M384),
        .PSK_signal    (PSK_signal),
        .is_bpsk       (is_bpsk_out),
        .rst_16M384    (rst_16M384),
        .FEEDBACK_SHIFT(FEEDBACK_SHIFT),
        .NCO_cos       (NCO_cos),
        .I_data        (I_data),
        .Q_data        (Q_data),
        .I_valid       (I_valid),
        .Q_valid       (Q_valid),
        .error_tdata   (error_tdata),
        .feedback_tdata(feedback_tdata)
    );

endmodule
