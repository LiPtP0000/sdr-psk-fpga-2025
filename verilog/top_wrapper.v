module top (
    input PL_CLK_100MHz,
    input [11:0] AD9361_P0_D,
    input AD9361_DATACLK,
    input AD9361_RX_FRAME,
    output AD9361_FBCLK,
    output [11:0] AD9361_P1_D,
    output AD9361_TX_FRAME,
    output GPIO_TH1,
    output GPIO_TH2,
    output GPIO_TH3,
    output GPIO_TH4
);

// output declaration of module Clock_Gen
wire clk_2d048M;
wire rst_32d768M;
wire rst_16d384M;
wire rst_n_1d024M;
wire clk_32d768M;
wire clk_16d384M;
wire clk_200M;
wire clk_1d024M;

Clock_Gen u_Clock_Gen(
    .PL_CLK_100MHz 	(PL_CLK_100MHz  ),
    .clk_2d048M    	(clk_2d048M     ),
    .rst_32d768M   	(rst_32d768M    ),
    .rst_16d384M   	(rst_16d384M    ),
    .rst_n_1d024M  	(rst_n_1d024M   ),
    .clk_32d768M   	(clk_32d768M    ),
    .clk_16d384M   	(clk_16d384M    ),
    .clk_200M      	(clk_200M       ),
    .clk_1d024M    	(clk_1d024M     )
);

// output declaration of module Tx
// Data interfaces are for ILA monitoring Only
wire tx_valid;
wire tx_serial;
wire data_tlast;
wire data_tvalid;
wire data_tuser;
wire [7:0] data_tdata;
wire [11:0] DAC_I;
wire [11:0] DAC_Q;
wire DAC_valid;
wire [1:0] DAC_bits;

Tx u_Tx(
    .rst_n_1M024     	(rst_n_1M024      ),
    .MODE_CTRL       	(MODE_CTRL        ),
    .DELAY_CNT       	(DELAY_CNT        ),
    .TX_PHASE_CONFIG 	(TX_PHASE_CONFIG  ),
    .rst_16M384      	(rst_16M384       ),
    .clk_16M384      	(clk_16M384       ),
    .clk_1M024       	(clk_1M024        ),
    .clk_2M048       	(clk_2M048        ),
    .tx_valid        	(tx_valid         ),
    .tx_serial       	(tx_serial        ),
    .data_tlast      	(data_tlast       ),
    .data_tvalid     	(data_tvalid      ),
    .data_tuser      	(data_tuser       ),
    .data_tdata      	(data_tdata       ),
    .DAC_I           	(DAC_I            ),
    .DAC_Q           	(DAC_Q            ),
    .DAC_valid       	(DAC_valid        ),
    .DAC_bits        	(DAC_bits         )
);

// output declaration of module AD9361_1RT_FDD
wire [11:0] rev_I;
wire [11:0] rev_Q;
// In FDD mode, AD9361 uses FBCLK to sample transmitted data and DATACLK to sample received data.
// FBCLK has the same frequency and duty cycle as DATACLK
// Thus, both transmitted and received data are sampled relative to the AD9361 clock. 
wire AD9361_CLK;

AD9361_1RT_FDD u_AD9361_1RT_FDD(
    .clk200M         	(clk_200M          ),
    .AD9361_P0_D     	(AD9361_P0_D      ),
    .AD9361_DATACLK  	(AD9361_DATACLK   ),
    .AD9361_RX_FRAME 	(AD9361_RX_FRAME  ),
    .AD9361_RX_DAT_I 	(rev_I  ),
    .AD9361_RX_DAT_Q 	(rev_Q  ),
    .AD9361_RX_CLK   	(AD9361_CLK    ),
    .AD9361_TX_DAT_I 	(AD9361_TX_DAT_I  ),
    .AD9361_TX_DAT_Q 	(AD9361_TX_DAT_Q  ),
    .AD9361_TX_CLK   	(AD9361_CLK    ),
    .AD9361_P1_D     	(AD9361_P1_D      ),
    .AD9361_FBCLK    	(AD9361_FBCLK     ),
    .AD9361_TX_FRAME 	(AD9361_TX_FRAME  )
);

endmodule