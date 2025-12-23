module Rx (
    input              clk_1M024,
    input              clk_2M048,
    input              clk_16M384,
    input              clk_32M768,
    input              rst_n_32M768,
    input              rst_32M768,
    input       [11:0] ADC_I,
    input       [11:0] ADC_Q,
    input       [ 3:0] MODE_CTRL,
    input       [ 3:0] FEEDBACK_SHIFT,
    input       [ 3:0] GARDNER_SHIFT,
    input       [15:0] RX_SD_THRESHOLD,
    input       [ 7:0] RX_SD_WINDOW,
    input       [ 7:0] RX_PD_WINDOW,
    input       [ 7:0] RX_BD_WINDOW,
    output             BPSK_raw,
    output      [ 1:0] QPSK_raw,
    output      [15:0] I_16M,
    output      [15:0] Q_16M,
    output      [11:0] NCO_cos,
    output      [15:0] I_1M,
    output      [15:0] Q_1M,
    output             clk_1M_out,
    output      [ 1:0] QPSK,
    output             BPSK,
    output             Rx_1bit,
    output      [ 7:0] data_tdata,
    output             data_tvalid,
    output             data_tlast,
    output             data_tuser,
    output      [15:0] error_tdata,
    output      [15:0] feedback_tdata,
    output             Rx_valid,
    output      [15:0] gardner_error,
    output      [15:0] gardner_increment,
    output wire        SD_flag,
    output wire        PD_flag,
    output wire        BD_flag,
    output wire        BD_sgn
);

    // =========================================================================
    // Internal Signals Declaration
    // =========================================================================

    // PSK Signal Extension & Costas Loop
    wire        is_bpsk_from_depacketizer;
    wire        is_bpsk_extended;
    wire [11:0] PSK_signal_extended;
    wire [15:0] I_data_costas;
    wire [15:0] Q_data_costas;
    wire        I_valid_costas;
    wire        Q_valid_costas;
    wire [11:0] NCO_cos_internal;
    wire [15:0] error_tdata_internal;
    wire [15:0] feedback_tdata_internal;

    // Registers for 16M Output (Requested Logic)
    reg  [15:0] I_16M_reg;
    reg  [15:0] Q_16M_reg;

    // Gardner Loop
    wire [15:0] I_gardner_rec;
    wire [15:0] Q_gardner_rec;
    wire        clk_gardner_rec;
    wire [15:0] gardner_error_internal;
    wire [15:0] gardner_increment_internal;

    // PSK Detection
    wire        BPSK_detect;
    wire [ 1:0] QPSK_detect;
    wire        psk_detection_valid;

    // SPB Detection

    wire        disassert_BD;
    wire        disassert_PD;

    // Depacketizer
    wire        in_ready;  // Unused in this context
    wire [ 7:0] depacketizer_tdata;
    wire        depacketizer_tvalid;
    wire        depacketizer_tready;
    wire        depacketizer_tlast;
    wire        depacketizer_tuser;
    wire [ 1:0] QPSK_final;
    wire        BPSK_final;

    // Flatten
    wire        Rx_1bit_internal;
    wire        Rx_vld_internal;


    // =========================================================================
    // Module Instantiations
    // =========================================================================

    // 1. Extend Signal
    PSK_Signal_Extend #(
        .I_WIDTH   (12),
        .O_WIDTH   (12),
        .USE_I_STRM(0)
    ) u_PSK_Signal_Extend (
        .clk        (clk_32M768),
        .DAC_I      (ADC_I),
        .DAC_Q      (ADC_Q),
        .is_bpsk    (is_bpsk_from_depacketizer),
        .PSK_signal (PSK_signal_extended),
        .is_bpsk_out(is_bpsk_extended)
    );

    // 2. Costas Loop
    costas_loop_wrapper #(
        .LPF_OUT_WIDTH    (80),
        .DATA_WIDTH       (16),
        .MSB_TRUNCATE_BITS(6)
    ) u_costas_loop_wrapper (
        .clk_32M768    (clk_32M768),
        .rst_32M768    (rst_32M768),
        .rst_n_32M768  (rst_n_32M768),
        .clk_16M384    (clk_16M384),
        .PSK_signal    (PSK_signal_extended),
        .is_bpsk       (is_bpsk_extended),
        .FEEDBACK_SHIFT(FEEDBACK_SHIFT),
        .NCO_cos       (NCO_cos_internal),
        .I_data        (I_data_costas),
        .Q_data        (Q_data_costas),
        .I_valid       (I_valid_costas),
        .Q_valid       (Q_valid_costas),
        .error_tdata   (error_tdata_internal),
        .feedback_tdata(feedback_tdata_internal)
    );

    // 3. 16M Data Registering
    always @(posedge clk_32M768) begin
        if (clk_16M384) begin
            I_16M_reg <= I_data_costas;
            Q_16M_reg <= Q_data_costas;
        end else begin
            I_16M_reg <= I_16M_reg;
            Q_16M_reg <= Q_16M_reg;
        end
    end

    // 4. Gardner Loop
    gardner_wrapper u_gardner_wrapper (
        .clk_32M768   (clk_32M768),
        .rst_32M768   (rst_32M768),
        .GARDNER_SHIFT(GARDNER_SHIFT),
        .I_tdata      (I_data_costas),
        .I_tvalid     (I_valid_costas),
        .Q_tdata      (Q_data_costas),
        .Q_tvalid     (Q_valid_costas),
        .I_1M         (I_gardner_rec),
        .Q_1M         (Q_gardner_rec),
        .clk_out      (clk_gardner_rec),
        .error_n      (gardner_error_internal),
        .increment    (gardner_increment_internal)
    );

    // 5. PSK Detection
    PSK_Detection #(
        .WIDTH(16)
    ) u_PSK_Detection (
        .clk       (clk_32M768),
        .clk_enable(clk_gardner_rec),
        .rst_32M768(rst_32M768),
        .I_tdata   (I_gardner_rec),
        .I_tvalid  (1'b1),
        .Q_tdata   (Q_gardner_rec),
        .Q_tvalid  (1'b1),
        .BPSK      (BPSK_detect),
        .QPSK      (QPSK_detect),
        .vld       (psk_detection_valid)
    );

    // 6. SPB Detection
    SPB_Detection u_SPB_Detection (
        .clk            (clk_32M768),
        .clk_enable     (clk_gardner_rec),
        .rst_32M768     (rst_32M768),
        .I_1M           (I_gardner_rec),
        .Q_1M           (Q_gardner_rec),
        .RX_SD_THRESHOLD(RX_SD_THRESHOLD),
        .RX_SD_WINDOW   (RX_SD_WINDOW),
        .RX_PD_WINDOW   (RX_PD_WINDOW),
        .RX_BD_WINDOW   (RX_BD_WINDOW),
        .BPSK           (BPSK_detect),
        .disassert_PD   (disassert_PD),
        .disassert_BD   (disassert_BD),
        .SD_flag        (SD_flag),
        .PD_flag        (PD_flag),
        .BD_flag        (BD_flag),
        .BD_sgn         (BD_sgn)
    );

    // 7. Depacketizer
    Depacketizer #(
        .BYTES           (1),
        .WIDTH           (16),
        .MAX_WINDOW_WIDTH(8)
    ) u_Depacketizer (
        .clk         (clk_32M768),
        .clk_enable  (clk_gardner_rec),
        .rst         (rst_32M768),
        .RX_BD_WINDOW(RX_BD_WINDOW),
        .MODE_CTRL   (MODE_CTRL),
        .SD_flag     (SD_flag),
        .PD_flag     (PD_flag),
        .BD_flag     (BD_flag),
        .BD_sgn      (BD_sgn),
        .in_QPSK     (QPSK_detect),                // Connected from PSK_Detection
        .in_BPSK     (BPSK_detect),
        .in_ready    (in_ready),
        .data_tdata  (depacketizer_tdata),
        .data_tvalid (depacketizer_tvalid),
        .data_tready (depacketizer_tready),
        .data_tlast  (depacketizer_tlast),
        .data_tuser  (depacketizer_tuser),
        .QPSK        (QPSK_final),
        .BPSK        (BPSK_final),
        .is_bpsk     (is_bpsk_from_depacketizer),
        .disassert_BD(disassert_BD),
        .disassert_PD(disassert_PD)
    );

    // 8. Flatten
    // The bypass signal
    Bits_Flatten #(
        .N               (2),
        .M               (8),
        .BYPASS_SELECTION(1)
    ) u_Bits_Flatten (
        .clk    (clk_32M768),
        .rst_n  (rst_n_32M768),
        .ce_1M  (clk_1M024),
        .ce_2M  (clk_2M048),
        .bypass (depacketizer_tuser),
        .I      (depacketizer_tdata),
        .I_valid(depacketizer_tvalid),
        .I_ready(depacketizer_tready),
        .O      (Rx_1bit_internal),
        .O_valid(Rx_vld_internal),
        .O_ready(1'b1)
    );


    // =========================================================================
    // Output Assignment
    // =========================================================================

    // Raw detection outputs
    assign BPSK_raw          = BPSK_detect;
    assign QPSK_raw          = QPSK_detect;

    // Registered 16M data outputs
    assign I_16M             = I_16M_reg;
    assign Q_16M             = Q_16M_reg;

    // Costas Loop debug outputs
    assign NCO_cos           = NCO_cos_internal;
    assign error_tdata       = error_tdata_internal;
    assign feedback_tdata    = feedback_tdata_internal;

    // Recovered 1M signal and clock
    assign I_1M              = I_gardner_rec;
    assign Q_1M              = Q_gardner_rec;
    assign clk_1M_out        = clk_gardner_rec;
    assign gardner_error     = gardner_error_internal;
    assign gardner_increment = gardner_increment_internal;

    // Final Protocol outputs (from Depacketizer)
    assign QPSK              = QPSK_final;
    assign BPSK              = BPSK_final;
    assign data_tdata        = depacketizer_tdata;
    assign data_tvalid       = depacketizer_tvalid;
    assign data_tlast        = depacketizer_tlast;
    assign data_tuser        = depacketizer_tuser;

    // Final Bit Stream outputs (from Flatten)
    assign Rx_1bit           = Rx_1bit_internal;
    assign Rx_valid          = Rx_vld_internal;

endmodule
