module flatten_wrapper (
    // Global Inputs
    input wire clk_1M024,
    input wire rst_32M768,
    input wire rst_n_2M048,
    input wire clk_32M768,   // Connects to 32.768M clock
    input wire clk_enable,   // Clock enable signal (clk_gardner_rec)
    input wire clk_2M048,    // Connects to Bits_Flatten clk_out pin

    // AXI Stream Input Interface (data)
    input  wire [7:0] data_tdata,
    input  wire       data_tlast,
    input  wire [0:0] data_tuser,
    input  wire       data_tvalid,
    output wire       data_tready,  // s_axis_tready is an output from FIFO

    // Outputs
    output wire Rx_1bit,
    output wire Rx_vld
);

    // Internal Wires
    wire       w_aresetn;  // For Not_Gate_0 output
    wire [7:0] w_fifo_m_tdata;
    wire       w_fifo_m_tvalid;

    // -----------------------------------------------------------
    // Logic Replacement: Not_Gate_0
    // -----------------------------------------------------------
    assign w_aresetn = ~rst_32M768;


    // -----------------------------------------------------------
    // Submodule: AXI4-Stream Data FIFO
    // -----------------------------------------------------------
    // Renamed to axis_data_fifo_1 as requested
    axis_data_fifo_1 u_axis_data_fifo_3 (
        // Slave Interface (Write Side)
        .s_axis_aclk   (clk_32M768),
        .s_axis_aresetn(w_aresetn),    // Connected to inverted reset
        .s_axis_tdata  (data_tdata),
        .s_axis_tlast  (data_tlast),
        .s_axis_tuser  (data_tuser),
        .s_axis_tvalid (data_tvalid),
        .s_axis_tready (data_tready),

        // Master Interface (Read Side)
        .m_axis_aclk  (clk_1M024),
        .m_axis_tdata (w_fifo_m_tdata),
        .m_axis_tvalid(w_fifo_m_tvalid),
        .m_axis_tuser (),                 // Unconnected in diagram
        .m_axis_tlast (),                 // Unconnected in diagram
        .m_axis_tready(1'b1)              // xlconstant_one: Always Ready
    );


    // -----------------------------------------------------------
    // Submodule: Bits_Flatten_0
    // -----------------------------------------------------------
    Bits_Flatten #(
        .N(2),
        .M(8),
        .BYPASS_SELECTION(1)
    ) u_Bits_Flatten_0 (
        .clk_in (clk_1M024),       // 1M024 clock input
        .clk_out(clk_2M048),       // Note: Pin name is clk_out, input is clk_2M048
        .bypass (1'b1),            // xlconstant_one
        .rst_n  (rst_n_2M048),
        // Data Inputs from FIFO
        .I      (w_fifo_m_tdata),
        .I_vld  (w_fifo_m_tvalid),

        // Outputs
        .O    (Rx_1bit),
        .O_vld(Rx_vld)
    );

endmodule
