module top (
    input         PL_CLK_100MHz,
    input  [11:0] AD9361_P0_D,
    input         AD9361_DATACLK,
    input         AD9361_RX_FRAME,
    output        AD9361_FBCLK,
    output [11:0] AD9361_P1_D,
    output        AD9361_TX_FRAME,
    output        GPIO_TH1,
    output        GPIO_TH2,
    output        GPIO_TH3,
    output        GPIO_TH4
);

    // Constant Config.

    wire [8-1:0] DELAY_CNT;

    CONSTANT #(
        .WIDTH(4),
        .VALUE(8)
    ) u_CONSTANT_1 (
        .constant_out(DELAY_CNT)
    );

    // output declaration of module CONSTANT
    wire [4-1:0] MODE_CTRL;

    CONSTANT #(
        .WIDTH(4),
        .VALUE(4)
    ) u_CONSTANT_2 (
        .constant_out(MODE_CTRL)
    );

    // output declaration of module CONSTANT
    wire [4-1:0] FEEDBACK_SHIFT;

    CONSTANT #(
        .WIDTH(4),
        .VALUE(0)
    ) u_CONSTANT_3 (
        .constant_out(FEEDBACK_SHIFT)
    );

    // output declaration of module CONSTANT
    wire [4-1:0] GARDNER_SHIFT;

    CONSTANT #(
        .WIDTH(4),
        .VALUE(3)
    ) u_CONSTANT_4 (
        .constant_out(GARDNER_SHIFT)
    );

    // output declaration of module CONSTANT
    wire [16-1:0] RX_SD_THRESHOLD;

    CONSTANT #(
        .WIDTH(16),
        .VALUE(128)
    ) u_CONSTANT_5 (
        .constant_out(RX_SD_THRESHOLD)
    );

    // output declaration of module CONSTANT
    wire [8-1:0] RX_SD_WINDOW;

    CONSTANT #(
        .WIDTH(8),
        .VALUE(16)
    ) u_CONSTANT_6 (
        .constant_out(RX_SD_WINDOW)
    );

    // output declaration of module CONSTANT
    wire [8-1:0] RX_PD_WINDOW;

    CONSTANT #(
        .WIDTH(8),
        .VALUE(16)
    ) u_CONSTANT_7 (
        .constant_out(RX_PD_WINDOW)
    );

    // output declaration of module CONSTANT
    wire [8-1:0] RX_BD_WINDOW;

    CONSTANT #(
        .WIDTH(8),
        .VALUE(16)
    ) u_CONSTANT_8 (
        .constant_out(RX_BD_WINDOW)
    );

    // output declaration of module CONSTANT
    wire [16-1:0] TX_PHASE_CONFIG;

    CONSTANT #(
        .WIDTH(16),
        .VALUE(8192)
    ) u_CONSTANT_9 (
        .constant_out(TX_PHASE_CONFIG)
    );

    // output declaration of module Clock_Gen
    wire clk_2d048M;
    wire rst_32d768M;
    wire rst_16d384M;
    wire rst_n_1d024M;
    wire clk_32d768M;
    wire clk_16d384M;
    wire clk_200M;
    wire clk_1d024M;

    Clock_Gen u_Clock_Gen (
        .PL_CLK_100MHz(PL_CLK_100MHz),
        .clk_2d048M   (clk_2d048M),
        .rst_32d768M  (rst_32d768M),
        .rst_16d384M  (rst_16d384M),
        .rst_n_1d024M (rst_n_1d024M),
        .clk_32d768M  (clk_32d768M),
        .clk_16d384M  (clk_16d384M),
        .clk_200M     (clk_200M),
        .clk_1d024M   (clk_1d024M)
    );

    // output declaration of module Tx
    // Data interfaces are for ILA monitoring Only
    wire        tx_valid;
    wire        tx_serial;
    wire        tx_data_tlast;
    wire        tx_data_tvalid;
    wire        tx_data_tuser;
    wire [ 7:0] tx_data_tdata;
    wire [11:0] DAC_I;
    wire [11:0] DAC_Q;
    wire        DAC_valid;
    wire [ 1:0] DAC_bits;

    Tx u_Tx (
        .rst_n_1M024    (rst_n_1d024M),
        .MODE_CTRL      (MODE_CTRL),
        .DELAY_CNT      (DELAY_CNT),
        .TX_PHASE_CONFIG(TX_PHASE_CONFIG),
        .rst_16M384     (rst_16d384M),
        .clk_16M384     (clk_16d384M),
        .clk_1M024      (clk_1d024M),
        .clk_2M048      (clk_2d048M),
        .tx_valid       (tx_valid),
        .tx_serial      (tx_serial),
        .data_tlast     (tx_data_tlast),
        .data_tvalid    (tx_data_tvalid),
        .data_tuser     (tx_data_tuser),
        .data_tdata     (tx_data_tdata),
        .DAC_I          (DAC_I),
        .DAC_Q          (DAC_Q),
        .DAC_valid      (DAC_valid),
        .DAC_bits       (DAC_bits)
    );

    // output declaration of module AD9361_1RT_FDD
    wire [11:0] rev_I;
    wire [11:0] rev_Q;
    // In FDD mode, AD9361 uses FBCLK to sample transmitted data and DATACLK to sample received data.
    // FBCLK has the same frequency and duty cycle as DATACLK
    // Thus, both transmitted and received data are sampled relative to the AD9361 clock.
    wire        AD9361_CLK;

    AD9361_1RT_FDD u_AD9361_1RT_FDD (
        .clk200M        (clk_200M),
        .AD9361_P0_D    (AD9361_P0_D),
        .AD9361_DATACLK (AD9361_DATACLK),
        .AD9361_RX_FRAME(AD9361_RX_FRAME),
        .AD9361_RX_DAT_I(rev_I),
        .AD9361_RX_DAT_Q(rev_Q),
        .AD9361_RX_CLK  (AD9361_CLK),
        .AD9361_TX_DAT_I(AD9361_TX_DAT_I),
        .AD9361_TX_DAT_Q(AD9361_TX_DAT_Q),
        .AD9361_TX_CLK  (AD9361_CLK),
        .AD9361_P1_D    (AD9361_P1_D),
        .AD9361_FBCLK   (AD9361_FBCLK),
        .AD9361_TX_FRAME(AD9361_TX_FRAME)
    );


    // output declaration of module Rx_wrapper
    wire        BPSK_raw;
    wire [ 1:0] QPSK_raw;
    wire [15:0] I_16M;
    wire [15:0] Q_16M;
    wire [11:0] NCO_cos;
    wire [15:0] I_1M;
    wire [15:0] Q_1M;
    wire        clk_1M_out;
    wire [ 1:0] QPSK;
    wire        BPSK;
    wire        rx_serial;
    wire [ 7:0] rx_data_tdata;
    wire        rx_data_tvalid;
    wire        rx_data_tlast;
    wire        rx_data_tuser;
    wire [15:0] error_tdata;
    wire [15:0] feedback_tdata;
    wire        Rx_valid;
    wire [15:0] gardner_error;
    wire [15:0] gardner_increment;

    Rx_wrapper u_Rx_wrapper (
        .clk_1M024        (clk_1d024M),
        .clk_2M048        (clk_2d048M),
        .clk_16M384       (clk_16d384M),
        .clk_32M768       (clk_32d768M),
        .ADC_I            (rev_I),
        .ADC_Q            (rev_Q),
        .rst_16M384       (rst_16d384M),
        .rst_32M768       (rst_32d768M),
        .MODE_CTRL        (MODE_CTRL),
        .FEEDBACK_SHIFT   (FEEDBACK_SHIFT),
        .GARDNER_SHIFT    (GARDNER_SHIFT),
        .RX_SD_THRESHOLD  (RX_SD_THRESHOLD),
        .RX_SD_WINDOW     (RX_SD_WINDOW),
        .RX_PD_WINDOW     (RX_PD_WINDOW),
        .RX_BD_WINDOW     (RX_BD_WINDOW),
        .BPSK_raw         (BPSK_raw),
        .QPSK_raw         (QPSK_raw),
        .I_16M            (I_16M),
        .Q_16M            (Q_16M),
        .NCO_cos          (NCO_cos),
        .I_1M             (I_1M),
        .Q_1M             (Q_1M),
        .clk_1M_out       (clk_1M_out),
        .QPSK             (QPSK),
        .BPSK             (BPSK),
        .Rx_1bit          (rx_serial),
        .data_tdata       (rx_data_tdata),
        .data_tvalid      (rx_data_tvalid),
        .data_tlast       (rx_data_tlast),
        .data_tuser       (rx_data_tuser),
        .error_tdata      (error_tdata),
        .feedback_tdata   (feedback_tdata),
        .Rx_valid         (Rx_valid),
        .gardner_error    (gardner_error),
        .gardner_increment(gardner_increment)
    );

    // GPIOs
    assign GPIO_TH1 = tx_serial;
    assign GPIO_TH2 = rx_serial;
    assign GPIO_TH3 = clk_2d048M;
    assign GPIO_TH4 = clk_1M_out;

endmodule
