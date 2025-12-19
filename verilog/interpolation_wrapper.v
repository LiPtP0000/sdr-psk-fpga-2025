module interpolation_wrapper (
    input wire        clk_32M768,
    input wire [15:0] I_tdata,
    input wire        I_tvalid,
    input wire [15:0] Q_tdata,
    input wire        Q_tvalid,

    // Outputs
    output wire [15:0] I_smoothed_tdata,
    output wire [15:0] Q_smoothed_tdata,
    output wire        smoothed_tvalid
);

    reg [16-1:0] I_up2_tdata;
    reg          I_up2_tvalid;
    reg [16-1:0] Q_up2_tdata;
    reg          Q_up2_tvalid;

    // Assign 0 when input not valid, this ensures the upsampler receives 0s at interpolated points.
    always @(posedge clk_32M768) begin
        I_up2_tvalid <= I_tvalid;
        Q_up2_tvalid <= Q_tvalid;
        I_up2_tdata  <= I_tvalid ? I_tdata : 16'b0;
        Q_up2_tdata  <= Q_tvalid ? Q_tdata : 16'b0;
    end

    wire I_up2_tready;  // not used
    wire Q_up2_tready;  // not used
    wire I_smoothed_tvalid;
    wire Q_smoothed_tvalid;

    interp_smoothing_filter u_interp_smoothing_filter_I (
        .aclk              (clk_32M768),
        .s_axis_data_tvalid(I_up2_tvalid),
        .s_axis_data_tready(I_up2_tready),
        .s_axis_data_tdata (I_up2_tdata),
        .m_axis_data_tvalid(I_smoothed_tvalid),
        .m_axis_data_tdata (I_smoothed_tdata)
    );

    interp_smoothing_filter u_interp_smoothing_filter_Q (
        .aclk              (clk_32M768),
        .s_axis_data_tvalid(Q_up2_tvalid),
        .s_axis_data_tready(Q_up2_tready),
        .s_axis_data_tdata (Q_up2_tdata),
        .m_axis_data_tvalid(Q_smoothed_tvalid),
        .m_axis_data_tdata (Q_smoothed_tdata)
    );

    assign smoothed_tvalid = I_smoothed_tvalid & Q_smoothed_tvalid;
endmodule
