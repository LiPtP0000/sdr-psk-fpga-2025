// Module: tb_QPSK
// ===============
// This module is the testbench for the QPSK mode.
//

// Date: 2024/01/07

`timescale 1ns / 1ps

module tb_QPSK;
    // file for data writing
    integer fd;
    initial begin
        fd = $fopen("/../../behav_sim/_QPSK_behav_sim.csv", "w");
        $fdisplay(fd, "time, feedback");
        #19500 $fclose(fd);
    end

    // mode control parameters
    localparam [3:0] MODE_BPSK = 4'b0001;
    localparam [3:0] MODE_QPSK = 4'b0010;
    localparam [3:0] MODE_MIX = 4'b0100;

    // clock
    reg  clk_32M768;
    reg  rst_32M768;
    reg  rst_n_32M768;
    wire clk_16M384;
    wire clk_1M024;
    wire clk_2M048;

    // Instantiate Div_clk32M768 to generate clock enable signals
    Div_clk32M768 u_Div_clk32M768 (
        .clk32M768(clk_32M768),
        .clk16M384(clk_16M384),
        .clk8M192 (),            // unused
        .clk4M096 (),            // unused
        .clk2M048 (clk_2M048),
        .clk1M024 (clk_1M024),
        .clk512K  (),            // unused
        .clk256K  (),            // unused
        .clk128K  (),            // unused
        .clk64K   (),            // unused
        .clk32K   (),            // unused
        .clk16K   (),            // unused
        .clk8K    (),            // unused
        .clk4K    (),            // unused
        .clk2K    (),            // unused
        .clk1K    ()             // unused
    );

    // Tx wires
    wire signed [11:0] DAC_I, DAC_Q;
    wire [ 1:0] DAC_bits;
    wire        DAC_vld;
    wire [ 3:0] DELAY_CNT;
    wire [ 3:0] MODE_CTRL;
    wire        Tx_1bit;
    wire        Tx_vld;
    wire [15:0] TX_PHASE_CONFIG;  // maximum 15 bits
    wire [ 7:0] Tx_tdata;
    wire        Tx_tlast;
    wire        Tx_tuser;
    wire        Tx_tvalid;

    // configuration parameters (constants)
    assign DELAY_CNT = 4'd8;
    assign MODE_CTRL = MODE_QPSK;
    assign TX_PHASE_CONFIG = 16'd8192;  // 8192 for 4.096 MHz

    // module instantiation
    Tx inst_Tx (
        .MODE_CTRL      (MODE_CTRL),
        .DELAY_CNT      (DELAY_CNT),
        .TX_PHASE_CONFIG(TX_PHASE_CONFIG),
        .clk_32M768     (clk_32M768),
        .rst_n_32M768   (rst_n_32M768),
        .clk_16M384     (clk_16M384),
        .clk_1M024      (clk_1M024),
        .clk_2M048      (clk_2M048),
        .tx_valid       (Tx_vld),
        .tx_serial      (Tx_1bit),
        .data_tlast     (Tx_tlast),
        .data_tvalid    (Tx_tvalid),
        .data_tuser     (Tx_tuser),
        .data_tdata     (Tx_tdata),
        .DAC_I          (DAC_I),
        .DAC_Q          (DAC_Q),
        .DAC_valid      (DAC_vld),
        .DAC_bits       (DAC_bits)
    );

    // Rx wires
    reg signed [11:0] noise_I, noise_Q;
    wire signed [11:0] ADC_I, ADC_Q;
    wire       BPSK;
    wire       BPSK_raw;
    wire [3:0] FEEDBACK_SHIFT;
    wire [3:0] GARDNER_SHIFT;
    wire signed [15:0] I_16M, Q_16M;
    wire signed [15:0] I_1M, Q_1M;
    wire [11:0] NCO_cos;
    wire [ 1:0] QPSK;
    wire [ 1:0] QPSK_raw;
    wire [ 7:0] RX_BD_WINDOW;
    wire [ 7:0] RX_PD_WINDOW;
    wire [15:0] RX_SD_THRESHOLD;
    wire [ 7:0] RX_SD_WINDOW;
    wire        Rx_1bit;
    wire        clk_1M_out;
    wire [ 7:0] Rx_tdata;
    wire        Rx_tlast;
    wire        Rx_tuser;
    wire        Rx_tvalid;
    wire        Rx_valid;
    wire [15:0] error_tdata;
    wire [15:0] feedback_tdata;
    wire [15:0] gardner_error;
    wire [15:0] gardner_increment;
    Rx inst_Rx (
        .clk_1M024        (clk_1M024),
        .clk_2M048        (clk_2M048),
        .clk_16M384       (clk_16M384),
        .clk_32M768       (clk_32M768),
        .ADC_I            (ADC_I),
        .ADC_Q            (ADC_Q),
        .rst_32M768       (rst_32M768),
        .rst_n_32M768     (rst_n_32M768),
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
        .Rx_1bit          (Rx_1bit),
        .data_tdata       (Rx_tdata),
        .data_tvalid      (Rx_tvalid),
        .data_tlast       (Rx_tlast),
        .data_tuser       (Rx_tuser),
        .error_tdata      (error_tdata),
        .feedback_tdata   (feedback_tdata),
        .Rx_valid         (Rx_valid),
        .gardner_error    (gardner_error),
        .gardner_increment(gardner_increment)
    );

    // loopback
    assign ADC_I = DAC_vld ? (DAC_I / 4 * 3) : 0;  // loopback with gain and noise
    assign ADC_Q = DAC_vld ? (DAC_Q / 4 * 3) : 0;  // loopback with gain and noise
    // assign ADC_I = DAC_vld ? (DAC_Q / 4 * 3 + noise_Q - 16) : 0;  // loopback with gain and noise
    // assign ADC_Q = DAC_vld ? -(DAC_I / 4 * 3 + noise_I - 16) : 0;  // loopback with gain and noise
    assign FEEDBACK_SHIFT = 4'd0;
    assign GARDNER_SHIFT = 4'd3;
    assign RX_BD_WINDOW = 8'd16;
    assign RX_PD_WINDOW = 8'd16;
    assign RX_SD_THRESHOLD = 16'd128;
    assign RX_SD_WINDOW = 8'd16;

    // clock generation - only generate 32.768MHz base clock
    always #1 clk_32M768 = ~clk_32M768;

    // clock initial
    initial begin
        clk_32M768 = 1'b1;
    end

    // reset generation
    initial begin
        rst_32M768   = 1'b1;
        rst_n_32M768 = 1'b0;
        #256 rst_32M768 = 1'b0;
        rst_n_32M768 = 1'b1;
        // #8192 $finish;
    end

    // random number
    always begin
        #4 noise_I <= $urandom_range(32) - 16;
        noise_Q <= $urandom_range(32) - 16;
    end

    // data writing to CSV
    always #4 begin
        $fdisplay(fd, "%d, %d", $time, $signed(feedback_tdata));
    end

endmodule
