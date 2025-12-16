module interpolation_wrapper (
    input wire        clk_32M768,
    input wire [15:0] I_tdata,
    input wire        I_tvalid,
    input wire [15:0] Q_tdata,
    input wire        Q_tvalid,

    // Outputs
    output wire [15:0] I_up2,
    output wire [15:0] Q_up2,
    output wire        vld
);

    // Logic implementation goes here...
    // output declaration of module Gardner_IQ_SHIFT
    wire [16-1:0] I_out_tdata;
    wire          I_out_tvalid;
    wire [16-1:0] Q_out_tdata;
    wire          Q_out_tvalid;

    // No shift, sample at 32.768MHz clock.
    Gardner_IQ_Preprocess #(
        .WIDTH(16),
        .SHIFT(0)
    ) u_Gardner_IQ_Preprocess (
        .clk         (clk_32M768),
        .I_in_tdata  (I_tdata),
        .I_in_tvalid (I_tvalid),
        .Q_in_tdata  (Q_tdata),
        .Q_in_tvalid (Q_tvalid),
        .I_out_tdata (I_out_tdata),
        .I_out_tvalid(I_out_tvalid),
        .Q_out_tdata (Q_out_tdata),
        .Q_out_tvalid(Q_out_tvalid)
    );
    // Smoothing Filter
    // output declaration of module interp_smoothing_filter
    wire I_out_tready;
    wire Q_out_tready;
    wire I_up2_tvalid;
    wire Q_up2_tvalid;
    interp_smoothing_filter u_interp_smoothing_filter_I (
        .aclk              (clk_32M768),
        .s_axis_data_tvalid(I_out_tvalid),
        .s_axis_data_tready(I_out_tready),
        .s_axis_data_tdata (I_out_tdata),
        .m_axis_data_tvalid(I_up2_tvalid),
        .m_axis_data_tdata (I_up2)
    );

    interp_smoothing_filter u_interp_smoothing_filter_Q (
        .aclk              (clk_32M768),
        .s_axis_data_tvalid(Q_out_tvalid),
        .s_axis_data_tready(Q_out_tready),
        .s_axis_data_tdata (Q_out_tdata),
        .m_axis_data_tvalid(Q_up2_tvalid),
        .m_axis_data_tdata (Q_up2)
    );

    assign vld = I_up2_tvalid & Q_up2_tvalid;
endmodule
