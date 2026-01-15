// Module: tb_Tx
// =============
// This module is the testbench for Tx.
//

// Date: 2024/01/07

`timescale 1ns / 1ps

module tb_Tx;
    // file for data writing
    integer fd;
    initial begin
        fd = $fopen("../../behav_sim/_Tx_behav_sim.csv", "w");
        $fdisplay(
            fd,
            "time, clk_1M024, rst_n_32M768, clk_16M384, clk_32M768, DAC_I, DAC_Q, DAC_bits, DAC_vld, pn_5, pn_4");
        #28000 $fclose(fd);
    end

    // mode control parameters
    localparam [3:0] MODE_BPSK = 4'b0001;
    localparam [3:0] MODE_QPSK = 4'b0010;
    localparam [3:0] MODE_MIX = 4'b0100;

    // data
    wire signed [11:0] DAC_I, DAC_Q;
    wire [ 1:0] DAC_bits;
    wire        DAC_vld;
    wire [ 3:0] DELAY_CNT;
    wire [ 3:0] MODE_CTRL;
    wire        Tx_1bit;
    wire        Tx_vld;
    wire [15:0] TX_PHASE_CONFIG;  // maximum 15 bits
    wire [ 7:0] data_tdata;
    wire        data_tlast;
    wire        data_tuser;
    wire        data_tvalid;

    // clock
    reg         clk_32M768;
    reg         rst_n_32M768;
    reg         clk_16M384;
    reg         clk_1M024;
    reg         clk_2M048;

    // configuration parameters (constants)
    assign DELAY_CNT = 4'd8;
    assign MODE_CTRL = MODE_MIX;
    assign TX_PHASE_CONFIG = 16'd8192;  // 8192 for 4.196 MHz

    // module instantiation
    Tx dut (
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
        .data_tlast     (data_tlast),
        .data_tvalid    (data_tvalid),
        .data_tuser     (data_tuser),
        .data_tdata     (data_tdata),
        .DAC_I          (DAC_I),
        .DAC_Q          (DAC_Q),
        .DAC_valid      (DAC_vld),
        .DAC_bits       (DAC_bits)
    );

    // clock generation
    always #1 clk_32M768 = ~clk_32M768;
    always #2 clk_16M384 = ~clk_16M384;
    always #16 clk_2M048 = ~clk_2M048;  // 32 per symbol
    always #32 clk_1M024 = ~clk_1M024;  // 64 per symbol

    // clock initial
    initial begin
        clk_32M768 = 1'b1;
        clk_16M384 = 1'b1;
        clk_2M048  = 1'b1;
        clk_1M024  = 1'b1;
    end

    // reset generation
    initial begin
        rst_n_32M768 = 1'b0;
        #128 rst_n_32M768 = 1'b1;
    end

    // data writing to CSV
    always #1 begin
        $fdisplay(fd, "%d, %b, %b, %b, %b, %d, %d, %d, %b, %b, %b", $time, clk_1M024, rst_n_32M768,
                  clk_16M384, clk_32M768, DAC_I, DAC_Q, DAC_bits, DAC_vld, dut.u_Tx_Data.pn_5,
                  dut.u_Tx_Data.pn_4);
    end

endmodule
