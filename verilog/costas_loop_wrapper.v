module costas_loop_wrapper #(
    parameter LPF_OUT_WIDTH = 80,
    parameter DATA_WIDTH = 16,
    parameter MSB_TRUNCATE_BITS = 6
) (
    input         clk_32M768,
    input         rst_32M768,
    input         rst_n_32M768,
    input         clk_16M384,
    input  [11:0] PSK_signal,
    input         is_bpsk,
    input  [ 3:0] FEEDBACK_SHIFT,
    output [11:0] NCO_cos,
    output [15:0] I_data,
    output [15:0] Q_data,
    output        I_valid,
    output        Q_valid,
    output [15:0] error_tdata,
    output [15:0] feedback_tdata
);

    // output declaration of module NCO_rx_wrapper
    wire [15:0] feedback_tdata_inmodule;
    wire        feedback_tvalid_inmodule;

    reg  [15:0] feedback_tdata_reg;
    reg         feedback_tvalid_reg;

    always @(posedge clk_32M768 or negedge rst_n_32M768) begin
        if (!rst_n_32M768) begin
            feedback_tdata_reg  <= 0;
            feedback_tvalid_reg <= 1'b0;
        end else begin
            feedback_tdata_reg  <= feedback_tdata_inmodule;
            feedback_tvalid_reg <= feedback_tvalid_inmodule;
        end
    end

    wire [11:0] NCO_sin;
    wire        NCO_valid;

    NCO_rx_wrapper u_NCO_rx_wrapper (
        .clk_32M768     (clk_32M768),
        .rst_32M768     (rst_32M768),
        .enable         (clk_16M384),
        .FEEDBACK_SHIFT (FEEDBACK_SHIFT),
        .feedback_tdata (feedback_tdata_reg),
        .feedback_tvalid(feedback_tvalid_reg),
        .NCO_cos        (NCO_cos),
        .NCO_sin        (NCO_sin),
        .NCO_valid      (NCO_valid)
    );

    wire [2*DATA_WIDTH-1:0] PD;
    // output declaration of module Multiplier
    // Has been truncated to 23:8
    wire [  DATA_WIDTH-1:0] PD_I;

    Multiplier u_Multiplier_1 (
        .CLK(clk_32M768),
        .CE (clk_16M384),
        .A  (PSK_signal),
        .B  (NCO_cos),
        .P  (PD_I)
    );

    // output declaration of module Multiplier
    // Has been truncated to 23:8
    wire [DATA_WIDTH-1:0] PD_Q;

    Multiplier u_Multiplier_2 (
        .CLK(clk_32M768),
        .CE (clk_16M384),
        .A  (PSK_signal),
        .B  (NCO_sin),
        .P  (PD_Q)
    );

    // 8 delays. This may confront uncertain value caused by FIR compilers' start-up latency. After start-up, the valid signal loop is filled with 1.
    // Specifically:
    // NCO 10 (DDS 8 + 1 + 1) + Multiplier 3 + 8 shift RAM = 21 start-up latency
    wire NCO_valid_delayed;
    Costas_LPF_shift_ram u_Costas_LPF_shift_ram (
        .CLK(clk_32M768),
        .D  (NCO_valid),
        .Q  (NCO_valid_delayed)
    );

    // Low pass FIR filter after phase detection
    // output declaration of module LPF
    wire                     LPF_data_tready;
    wire                     IQ_LPF_tvalid;
    wire [LPF_OUT_WIDTH-1:0] IQ_LPF_tdata;

    LPF u_LPF (
        .aclk              (clk_32M768),
        .aresetn           (rst_n_32M768),
        .aclken            (clk_16M384),
        .s_axis_data_tvalid(NCO_valid_delayed),
        .s_axis_data_tready(LPF_data_tready),
        .s_axis_data_tdata (PD),
        .m_axis_data_tvalid(IQ_LPF_tvalid),
        .m_axis_data_tdata (IQ_LPF_tdata)
    );

    // output declaration of module Truncate_IQ
    wire [DATA_WIDTH-1:0] I_tdata;
    wire                  I_tvalid;
    wire [DATA_WIDTH-1:0] Q_tdata;
    wire                  Q_tvalid;

    Truncate_IQ #(
        .I_WIDTH          (LPF_OUT_WIDTH),
        .O_WIDTH          (DATA_WIDTH),
        .MSB_TRUNCATE_BITS(MSB_TRUNCATE_BITS)
    ) u_Truncate_IQ (
        .IQ_tdata (IQ_LPF_tdata),
        .IQ_tvalid(IQ_LPF_tvalid),
        .I_tdata  (I_tdata),
        .I_tvalid (I_tvalid),
        .Q_tdata  (Q_tdata),
        .Q_tvalid (Q_tvalid)
    );

    // output declaration of module AXI_2x
    wire [DATA_WIDTH-1:0] O1_I_tdata;
    wire                  O1_I_tvalid;
    wire [DATA_WIDTH-1:0] O2_I_tdata;
    wire                  O2_I_tvalid;

    AXI_2x #(
        .WIDTH(DATA_WIDTH)
    ) u_AXI_2x_I (
        .I_tdata  (I_tdata),
        .I_tvalid (I_tvalid),
        .O1_tdata (O1_I_tdata),
        .O1_tvalid(O1_I_tvalid),
        .O2_tdata (O2_I_tdata),
        .O2_tvalid(O2_I_tvalid)
    );

    // output declaration of module AXI_2x
    wire [DATA_WIDTH-1:0] O1_Q_tdata;
    wire                  O1_Q_tvalid;
    wire [DATA_WIDTH-1:0] O2_Q_tdata;
    wire                  O2_Q_tvalid;

    AXI_2x #(
        .WIDTH(DATA_WIDTH)
    ) u_AXI_2x_Q (
        .I_tdata  (Q_tdata),
        .I_tvalid (Q_tvalid),
        .O1_tdata (O1_Q_tdata),
        .O1_tvalid(O1_Q_tvalid),
        .O2_tdata (O2_Q_tdata),
        .O2_tvalid(O2_Q_tvalid)
    );

    // output declaration of module Error_Detect_Ctrl
    wire [DATA_WIDTH-1:0] out_I_tdata;
    // not used since multiplier needs no valid signal
    wire                  out_I_tvalid;
    wire [DATA_WIDTH-1:0] out_Q_tdata;
    // not used since multiplier needs no valid signal
    wire                  out_Q_tvalid;
    wire                  error_tvalid;
    wire                  is_bpsk_delayed;
    wire [DATA_WIDTH-1:0] error_bpsk_tdata;
    wire [DATA_WIDTH-1:0] error_qpsk_tdata;
    Error_Detect_Ctrl #(
        .WIDTH(DATA_WIDTH)
    ) u_Error_Detect_Ctrl (
        .clk              (clk_32M768),
        .rst              (rst_32M768),
        .enable           (clk_16M384),
        .is_bpsk          (is_bpsk),
        .in_I_tdata       (O2_I_tdata),
        .in_I_tvalid      (O2_I_tvalid),
        .in_Q_tdata       (O2_Q_tdata),
        .in_Q_tvalid      (O2_Q_tvalid),
        .out_I_tdata      (out_I_tdata),
        .out_I_tvalid     (out_I_tvalid),
        .out_Q_tdata      (out_Q_tdata),
        .out_Q_tvalid     (out_Q_tvalid),
        .error_bpsk_tdata (error_bpsk_tdata),
        .error_bpsk_tvalid(1'b1),
        .error_qpsk_tdata (error_qpsk_tdata),
        .error_qpsk_tvalid(1'b1),
        .error_tdata      (error_tdata),
        .error_tvalid     (error_tvalid),
        .is_bpsk_delayed  (is_bpsk_delayed)
    );
    // output declaration of module err_detect_BPSK

    // Requires 16-bit inputs, or use * and force DSP48 use
    // Multiplier.
    err_detect_BPSK u_err_detect_BPSK (
        .CLK(clk_32M768),
        .A  (out_I_tdata),
        .B  (out_Q_tdata),
        .P  (error_bpsk_tdata)
    );

    // Requires 16-bit inputs, or use - and force DSP48 use.
    // Substracter
    err_detect_QPSK u_err_detect_QPSK (
        .A  (out_I_tdata),
        .B  (out_Q_tdata),
        .CLK(clk_32M768),
        .S  (error_qpsk_tdata)
    );

    // output declaration of module fir_compiler_0
    wire loop_filter_tready;
    // error_tvalid requires a 16.384MHz rhythm
    fir_compiler_0 u_fir_compiler_0 (
        .aclk              (clk_32M768),
        .aresetn           (rst_n_32M768),
        .aclken            (clk_16M384),
        .s_axis_data_tvalid(error_tvalid),
        .s_axis_data_tready(loop_filter_tready),
        .s_axis_data_tdata (error_tdata),
        .m_axis_data_tvalid(feedback_tvalid_inmodule),
        .m_axis_data_tdata (feedback_tdata_inmodule)
    );


    assign feedback_tdata = feedback_tdata_inmodule;
    assign PD = {PD_Q, PD_I};
    assign I_data = O1_I_tdata;
    assign Q_data = O1_Q_tdata;
    assign I_valid = O1_I_tvalid;
    assign Q_valid = O1_Q_tvalid;
endmodule
