module Tx (
    input         rst_n_1M024,
    input  [ 3:0] MODE_CTRL,
    input  [ 3:0] DELAY_CNT,
    input  [15:0] TX_PHASE_CONFIG,
    input         rst_16M384,
    input         clk_16M384,
    input         clk_1M024,
    input         clk_2M048,
    output        tx_valid,
    output        tx_serial,
    output        data_tlast,
    output        data_tvalid,
    output        data_tuser,
    output [ 7:0] data_tdata,
    output [11:0] DAC_I,
    output [11:0] DAC_Q,
    output        DAC_valid,
    output [ 1:0] DAC_bits
);

    // Tx_Data <-> FIFO interface
    wire [ 7:0] Txdata_FIFO_tdata;
    wire        Txdata_FIFO_tready;
    wire        Txdata_FIFO_tvalid;
    wire        Txdata_FIFO_tlast;
    wire        Txdata_FIFO_tuser;
    wire [15:0] payload_length;

    wire        pkt_sent;
    Tx_Data #(
        .BYTES(1'b1)
    ) u_Tx_Data (
        .clk           (clk_1M024),
        .rst_n         (rst_n_1M024),
        .MODE_CTRL     (MODE_CTRL),
        .pkt_sent      (pkt_sent),
        .data_tdata    (Txdata_FIFO_tdata),
        .data_tvalid   (Txdata_FIFO_tvalid),
        .data_tready   (Txdata_FIFO_tready),
        .data_tlast    (Txdata_FIFO_tlast),
        .data_tuser    (Txdata_FIFO_tuser),
        .payload_length(payload_length)
    );

    // output declaration of module axis_data_fifo_0
    wire [7:0] FIFO_Packetizer_tdata;
    wire       FIFO_Packetizer_tvalid;
    wire       FIFO_Packetizer_tready;
    wire       FIFO_Packetizer_tlast;
    wire       FIFO_Packetizer_tuser;

    axis_data_fifo_0 u_axis_data_fifo_0 (
        .s_axis_aresetn(rst_n_1M024),
        .s_axis_aclk   (clk_1M024),
        .s_axis_tvalid (Txdata_FIFO_tvalid),
        .s_axis_tready (Txdata_FIFO_tready),
        .s_axis_tdata  (Txdata_FIFO_tdata),
        .s_axis_tlast  (Txdata_FIFO_tlast),
        .s_axis_tuser  (Txdata_FIFO_tuser),
        .m_axis_tvalid (FIFO_Packetizer_tvalid),
        .m_axis_tready (FIFO_Packetizer_tready),
        .m_axis_tdata  (FIFO_Packetizer_tdata),
        .m_axis_tlast  (FIFO_Packetizer_tlast),
        .m_axis_tuser  (FIFO_Packetizer_tuser)
    );

    // output declaration of module Packetizer
    reg        I_tready;
    wire [7:0] Packetizer_PSK_tdata;
    wire       Packetizer_PSK_tvalid;
    wire       Packetizer_PSK_tlast;
    wire       Packetizer_PSK_tuser;
    wire       Packetizer_PSK_tready;

    wire       hdr_vld;
    wire       pld_vld;


    Packetizer #(
        .BYTES(1'b1)
    ) u_Packetizer (
        .clk           (clk_1M024),
        .rst_n         (rst_n_1M024),
        .MODE_CTRL     (MODE_CTRL),
        .payload_length(payload_length),
        .I_tdata       (FIFO_Packetizer_tdata),
        .I_tvalid      (FIFO_Packetizer_tvalid),
        .I_tready      (FIFO_Packetizer_tready),
        .I_tlast       (FIFO_Packetizer_tlast),
        .I_tuser       (FIFO_Packetizer_tuser),
        .O_tdata       (Packetizer_PSK_tdata),
        .O_tvalid      (Packetizer_PSK_tvalid),
        .O_tready      (Packetizer_PSK_tready),
        .O_tlast       (Packetizer_PSK_tlast),
        .O_tuser       (Packetizer_PSK_tuser),
        .hdr_vld       (hdr_vld),
        .pld_vld       (pld_vld),
        .pkt_sent      (pkt_sent)
    );

    PSK_Modulation u_PSK_Modulation (
        .psk_tdata      (Packetizer_PSK_tdata),
        .psk_tlast      (Packetizer_PSK_tlast),
        .psk_tready     (Packetizer_PSK_tready),
        .psk_tuser      (Packetizer_PSK_tuser),
        .psk_tvalid     (Packetizer_PSK_tvalid),
        .clk_16d384M    (clk_16M384),
        .rst_16d384M    (rst_16M384),
        .clk_1d024M     (clk_1M024),
        .rst_n_1d024M   (rst_n_1M024),
        .DELAY_CNT      (DELAY_CNT),
        .TX_PHASE_CONFIG(TX_PHASE_CONFIG),
        .DAC_I          (DAC_I),
        .DAC_Q          (DAC_Q),
        .DAC_valid      (DAC_valid),
        .DAC_bits       (DAC_bits)
    );
    // output declaration of module Bits_Flatten
    reg O;
    reg O_vld;

    Bits_Flatten #(
        .N               (2),
        .M               (8),
        .BYPASS_SELECTION(1'b1)
    ) u_Bits_Flatten (
        .bypass (Packetizer_PSK_tuser),
        .clk_in (clk_1M024),
        .clk_out(clk_2M048),
        .I      (Packetizer_PSK_tdata),
        .I_vld  (pld_vld),
        .O      (tx_serial),
        .O_vld  (tx_valid)
    );

    // Output assignments
    assign data_tdata  = Txdata_FIFO_tdata;
    assign data_tvalid = Txdata_FIFO_tvalid;
    assign data_tlast  = Txdata_FIFO_tlast;
    assign data_tuser  = Txdata_FIFO_tuser;
endmodule
