module SPB_Detection (
    // Global Clock and Reset
    input wire clk,
    input wire clk_enable,
    input wire rst_32M768,

    // Data Inputs (from I_1M/Q_1M ports)
    input wire [15:0] I_1M,
    input wire [15:0] Q_1M,

    // Configuration Inputs
    input wire [15:0] RX_SD_THRESHOLD,
    input wire [ 7:0] RX_SD_WINDOW,
    input wire [ 7:0] RX_PD_WINDOW,
    input wire [ 7:0] RX_BD_WINDOW,

    // Control Inputs
    input wire BPSK,
    input wire disassert_PD,
    input wire disassert_BD,

    // Outputs
    output wire SD_flag,
    output wire PD_flag,
    output wire BD_flag,
    output wire BD_sgn
);

    // Internal wires for inter-module connections
    wire w_sd_flag;
    wire w_pd_flag;

    // Assign internal wires to output ports
    assign SD_flag = w_sd_flag;
    assign PD_flag = w_pd_flag;

    // -----------------------------------------------------------
    // Submodule: Rx_SD_0
    // -----------------------------------------------------------
    Rx_SD #(
        .WIDTH(16),
        .MAX_WINDOW_WIDTH(8)
    ) u_Rx_SD_0 (
        .clk(clk),
        .clk_enable(clk_enable),
        .rst(rst_32M768),

        // AXI Stream-like Interface
        .I_tdata (I_1M),
        .I_tvalid(1'b1),  // xlconstant_one (Constant 1)
        .Q_tdata (Q_1M),
        .Q_tvalid(1'b1),  // xlconstant_one (Constant 1)

        // Config
        .RX_SD_THRESHOLD(RX_SD_THRESHOLD),
        .RX_SD_WINDOW   (RX_SD_WINDOW),

        // Output
        .SD_flag(w_sd_flag)  // Feeds Rx_PD_0 and External Output
    );

    // -----------------------------------------------------------
    // Submodule: Rx_PD_0
    // -----------------------------------------------------------
    Rx_PD #(
        .WIDTH(16),
        .MAX_WINDOW_WIDTH(8)
    ) u_Rx_PD_0 (
        .clk(clk),
        .clk_enable(clk_enable),
        .rst(rst_32M768),

        // Config & Control
        .RX_PD_WINDOW(RX_PD_WINDOW),
        .BPSK        (BPSK),
        .disassert_PD(disassert_PD),

        // Input from previous stage
        .SD_flag(w_sd_flag),

        // Output
        .PD_flag(w_pd_flag)  // Feeds Rx_BD_0 and External Output
    );

    // -----------------------------------------------------------
    // Submodule: Rx_BD_0
    // -----------------------------------------------------------
    Rx_BD #(
        .WIDTH(16),
        .MAX_WINDOW_WIDTH(8)
    ) u_Rx_BD_0 (
        .clk(clk),
        .clk_enable(clk_enable),
        .rst(rst_32M768),

        // Config & Control
        .RX_BD_WINDOW(RX_BD_WINDOW),
        .BPSK        (BPSK),
        .disassert_BD(disassert_BD),

        // Input from previous stage
        .PD_flag(w_pd_flag),

        // Outputs
        .BD_init(),         // Unconnected in diagram
        .BD_flag(BD_flag),
        .BD_sgn (BD_sgn)
    );

endmodule
