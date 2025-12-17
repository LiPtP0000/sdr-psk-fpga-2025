module PSK_Modulation (
    input         clk_32d768M,
    input         rst_n_32d768M,
    input         clk_16d384M,
    input  [ 7:0] psk_tdata,
    input         psk_tlast,
    input         psk_tuser,
    input         psk_tvalid,
    output        psk_tready,
    input  [ 3:0] DELAY_CNT,
    input  [15:0] TX_PHASE_CONFIG,
    output [11:0] DAC_I,
    output [11:0] DAC_Q,
    output        DAC_valid,
    output [ 1:0] DAC_bits
);


    // Apply RRC Filter to PSK Data


    // output declaration of module carrier_gen
    wire        dds_nco_tvalid;
    wire [31:0] dds_nco_tdata;

    carrier_gen u_carrier_gen (
        .aclk                (clk_32d768M),
        .aclken              (clk_16d384M),
        .aresetn             (rst_n_32d768M),
        .s_axis_config_tvalid(1'b1),
        .s_axis_config_tdata (TX_PHASE_CONFIG),
        .m_axis_data_tvalid  (dds_nco_tvalid),
        .m_axis_data_tdata   (dds_nco_tdata)
    );


    // output declaration of module NCO_cos_sin
    wire [12-1:0] NCO_cos;
    wire [12-1:0] NCO_sin;
    wire          NCO_vld;

    NCO_cos_sin #(
        .I_WIDTH(32),
        .O_WIDTH(12)
    ) u_NCO_cos_sin (
        .clk       (clk_32d768M),
        .enable    (clk_16d384M),
        .NCO_tdata (dds_nco_tdata),
        .NCO_tvalid(dds_nco_tvalid),
        .NCO_cos   (NCO_cos),
        .NCO_sin   (NCO_sin),
        .NCO_vld   (NCO_vld)
    );


    // output declaration of module PSK_Mod
    wire data_tready;
    wire out_last;
    wire out_is_bpsk;

    PSK_Mod #(
        .WIDTH(12),
        .BYTES(1)
    ) u_PSK_Mod (
        .clk        (clk_32d768M),
        .clk_enable (clk_16d384M),
        .rst_n      (rst_n_32d768M),
        .data_tdata (psk_tdata),
        .data_tvalid(psk_tvalid),
        .data_tready(psk_tready),
        .data_tlast (psk_tlast),
        .data_tuser (psk_tuser),
        .carrier_I  (NCO_cos),
        .carrier_Q  (NCO_sin),
        .DELAY_CNT  (DELAY_CNT),
        .out_I      (DAC_I),
        .out_Q      (DAC_Q),
        .out_vld    (DAC_valid),
        .out_last   (out_last),
        .out_is_bpsk(out_is_bpsk),
        .out_bits   (DAC_bits)
    );

endmodule
