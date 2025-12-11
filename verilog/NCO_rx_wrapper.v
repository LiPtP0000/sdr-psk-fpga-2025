module NCO_rx_wrapper (
    input         clk_16M384,
    input         rst_16M384,
    input  [ 3:0] FEEDBACK_SHIFT,
    input         is_bpsk,
    input  [15:0] feedback_tdata,
    input         feedback_tvalid,
    output [11:0] NCO_cos,
    output [11:0] NCO_sin,
    output        NCO_valid
);

    wire [15:0] phase_dds_tdata;
    wire        phase_dds_tvalid;
    wire        dds_cos_sin_data_tvalid;
    wire [31:0] dds_cos_sin_data_tdata;

    NCO_Phase #(
        .WIDTH    (16),
        .FREE_FREQ(16'h4000)
    ) u_NCO_Phase (
        .clk            (clk_16M384),
        .rst            (rst_16M384),
        .FEEDBACK_SHIFT (FEEDBACK_SHIFT),
        .feedback_tdata (feedback_dds_tdata),
        .feedback_tvalid(feedback_dds_tvalid),
        .phase_tdata    (phase_tdata),
        .phase_tvalid   (phase_tvalid)
    );

    NCO_DDS u_NCO_DDS (
        .aclk               (aclk),
        .s_axis_phase_tvalid(phase_dds_tvalid),
        .s_axis_phase_tdata (phase_dds_tdata),
        .m_axis_data_tvalid (dds_cos_sin_data_tvalid),
        .m_axis_data_tdata  (dds_cos_sin_data_tdata)
    );

    NCO_cos_sin #(
        .I_WIDTH(32),
        .O_WIDTH(12)
    ) u_NCO_cos_sin (
        .clk       (clk_16M384),
        .NCO_tdata (dds_cos_sin_data_tdata),
        .NCO_tvalid(dds_cos_sin_data_tvalid),
        .NCO_cos   (NCO_cos),
        .NCO_sin   (NCO_sin),
        .NCO_vld   (NCO_valid)
    );

endmodule
