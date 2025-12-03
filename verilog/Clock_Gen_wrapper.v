module Clock_Gen (
    input  wire PL_CLK_100MHz,
    output wire clk_2d048M,
    output wire rst_32d768M,
    output wire rst_16d384M,
    output wire rst_n_1d024M,
    output wire clk_32d768M,
    output wire clk_16d384M,
    output wire clk_200M,
    output wire clk_1d024M
);

    //--------------------------------------------------------------------------
    // Internal Signals
    //--------------------------------------------------------------------------
    
    // Clock Wizard 128M outputs
    wire clk_128M;
    // clk_200M is an output port
    
    // Clock Wizard 32.768M outputs
    wire clk_gen_32d768M;
    wire locked;
    
    // Clock Divider outputs
    wire clk16M384;
    wire clk8M192;
    wire clk4M096;
    wire clk2M048;
    wire clk1M024;
    wire clk512K;
    wire clk256K;
    wire clk128K;
    wire clk64K;
    wire clk32K;
    wire clk16K;
    wire clk8K;
    wire clk4K;
    wire clk2K;
    wire clk1K;

    // Reset Generator outputs
    wire [0:0] bus_struct_reset_2;
    wire [0:0] peripheral_reset;
    wire [0:0] peripheral_reset_2;
    wire [0:0] peripheral_reset_3;
    wire [0:0] interconnect_aresetn;
    wire [0:0] interconnect_aresetn_3;
    wire [0:0] peripheral_aresetn;
    wire [0:0] peripheral_aresetn_2;
    wire [0:0] peripheral_aresetn_3;
    wire       mb_reset;
    wire       mb_reset_2;
    wire       mb_reset_3;

    //--------------------------------------------------------------------------
    // Clock Generation
    //--------------------------------------------------------------------------

    // Generate 128MHz and 200MHz from 100MHz input
    clk_wiz_128M u_clk_wiz_128M (
        .clk_in1  (PL_CLK_100MHz),
        .clk_128M (clk_128M),
        .clk_200M (clk_200M)
    );
    
    // Generate 32.768MHz from 128MHz
    clk_wiz_32M768 u_clk_wiz_32M768 (
        .clk_in1    (clk_128M),
        .clk_32M768 (clk_gen_32d768M),
        .locked     (locked)
    );
    
    // Divide 32.768MHz into lower frequencies
    Div_clk32M768 u_Div_clk32M768 (
        .clk32M768 (clk_gen_32d768M),
        .clk16M384 (clk16M384),
        .clk8M192  (clk8M192),
        .clk4M096  (clk4M096),
        .clk2M048  (clk2M048),
        .clk1M024  (clk1M024),
        .clk512K   (clk512K),
        .clk256K   (clk256K),
        .clk128K   (clk128K),
        .clk64K    (clk64K),
        .clk32K    (clk32K),
        .clk16K    (clk16K),
        .clk8K     (clk8K),
        .clk4K     (clk4K),
        .clk2K     (clk2K),
        .clk1K     (clk1K)
    );

    //--------------------------------------------------------------------------
    // Output Assignments
    //--------------------------------------------------------------------------
    
    assign clk_32d768M = clk_gen_32d768M;
    assign clk_16d384M = clk16M384;
    assign clk_2d048M  = clk2M048;
    assign clk_1d024M  = clk1M024;

    //--------------------------------------------------------------------------
    // Reset Generation
    //--------------------------------------------------------------------------

    // Reset for 16.384MHz domain
    proc_sys_reset_gen u_proc_sys_reset_16M384 (
        .slowest_sync_clk     (clk16M384),
        .ext_reset_in         (1'b1),
        .aux_reset_in         (1'b1),
        .mb_debug_sys_rst     (1'b0),
        .dcm_locked           (locked),
        .mb_reset             (mb_reset),
        .bus_struct_reset     (rst_16d384M),
        .peripheral_reset     (peripheral_reset),
        .interconnect_aresetn (interconnect_aresetn),
        .peripheral_aresetn   (peripheral_aresetn)
    );
    
    // Reset for 1.024MHz domain
    proc_sys_reset_gen u_proc_sys_reset_1M024 (
        .slowest_sync_clk     (clk1M024),
        .ext_reset_in         (1'b1),
        .aux_reset_in         (1'b1),
        .mb_debug_sys_rst     (1'b0),
        .dcm_locked           (locked),
        .mb_reset             (mb_reset_2),
        .bus_struct_reset     (bus_struct_reset_2),
        .peripheral_reset     (peripheral_reset_2),
        .interconnect_aresetn (rst_n_1d024M),
        .peripheral_aresetn   (peripheral_aresetn_2)
    );
    
    // Reset for 32.768MHz domain
    proc_sys_reset_gen u_proc_sys_reset_32M768 (
        .slowest_sync_clk     (clk_gen_32d768M),
        .ext_reset_in         (1'b1),
        .aux_reset_in         (1'b1),
        .mb_debug_sys_rst     (1'b0),
        .dcm_locked           (locked),
        .mb_reset             (mb_reset_3),
        .bus_struct_reset     (rst_32d768M),
        .peripheral_reset     (peripheral_reset_3),
        .interconnect_aresetn (interconnect_aresetn_3),
        .peripheral_aresetn   (peripheral_aresetn_3)
    );
    
endmodule