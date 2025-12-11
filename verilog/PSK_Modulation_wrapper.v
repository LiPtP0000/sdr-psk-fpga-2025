module PSK_Modulation (
    input  [ 7:0] psk_tdata,
    input         psk_tlast,
    input         psk_tuser,
    input         psk_tvalid,
    input         clk_16d384M,
    input         rst_16d384M,
    input         clk_1d024M,
    input         rst_n_1d024M,
    input  [ 3:0] DELAY_CNT,
    input  [15:0] TX_PHASE_CONFIG,
    output        psk_tready,
    output [11:0] DAC_I,
    output [11:0] DAC_Q,
    output        DAC_valid,
    output [ 1:0] DAC_bits
);

    // FIFO
    // output declaration of module axis_data_fifo_0
    wire       psk_16M_tvalid;
    wire [7:0] psk_16M_tdata;
    wire       psk_16M_tlast;
    wire [0:0] psk_16M_tuser;
    wire       psk_16M_tready;  // backpressure

    axis_data_fifo_1 u_axis_data_fifo_cdc_3 (
        .s_axis_aresetn(rst_n_1d024M),
        .s_axis_aclk   (clk_1d024M),
        .s_axis_tvalid (psk_tvalid),
        .s_axis_tready (psk_tready),
        .s_axis_tdata  (psk_tdata),
        .s_axis_tlast  (psk_tlast),
        .s_axis_tuser  (psk_tuser),
        .m_axis_tvalid (psk_16M_tvalid),
        .m_axis_tready (psk_16M_tready),
        .m_axis_tdata  (psk_16M_tdata),
        .m_axis_tlast  (psk_16M_tlast),
        .m_axis_tuser  (psk_16M_tuser)
    );

    wire        dds_nco_tvalid;
    wire [31:0] dds_nco_tdata;

    carrier_gen u_carrier_gen (
        .aclk                (clk_16d384M),
        .s_axis_config_tvalid(1'b1),
        .s_axis_config_tdata (TX_PHASE_CONFIG),
        .m_axis_data_tvalid  (dds_nco_tvalid),
        .m_axis_data_tdata   (dds_nco_tdata)
    );


    // output declaration of module NCO_cos_sin
    wire [12-1:0] NCO_cos;
    wire [12-1:0] NCO_sin;
    reg           NCO_vld;

    NCO_cos_sin #(
        .I_WIDTH(32),
        .O_WIDTH(12)
    ) u_NCO_cos_sin (
        .clk       (clk_16d384M),
        .NCO_tdata (dds_nco_tdata),
        .NCO_tvalid(dds_nco_tvalid),
        .NCO_cos   (NCO_cos),
        .NCO_sin   (NCO_sin),
        .NCO_vld   (NCO_vld)
    );


    // output declaration of module PSK_Mod
    reg  data_tready;
    reg  out_last;
    reg  out_is_bpsk;
    wire out_clk_1M024;

    PSK_Mod #(
        .WIDTH(12),
        .BYTES(1)
    ) u_PSK_Mod (
        .clk_16M384   (clk_16d384M),
        .rst_16M384   (rst_16d384M),
        .data_tdata   (PSK_16M_tdata),
        .data_tvalid  (PSK_16M_tvalid),
        .data_tready  (PSK_16M_tready),
        .data_tlast   (PSK_16M_tlast),
        .data_tuser   (PSK_16M_tuser),
        .carrier_I    (NCO_cos),
        .carrier_Q    (NCO_sin),
        .DELAY_CNT    (DELAY_CNT),
        .out_I        (DAC_I),
        .out_Q        (DAC_Q),
        .out_vld      (DAC_valid),
        .out_last     (out_last),
        .out_is_bpsk  (out_is_bpsk),
        .out_bits     (DAC_bits),
        .out_clk_1M024(out_clk_1M024)
    );

endmodule
