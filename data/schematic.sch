# File saved with Nlview 7.8.0 2024-04-26 e1825d835c VDI=44 GEI=38 GUI=JA:21.0 TLS
# 
# non-default properties - (restore without -noprops)
property -colorscheme classic
property attrcolor #000000
property attrfontsize 8
property autobundle 1
property backgroundcolor #ffffff
property boxcolor0 #000000
property boxcolor1 #000000
property boxcolor2 #000000
property boxinstcolor #000000
property boxpincolor #000000
property buscolor #008000
property closeenough 5
property createnetattrdsp 2048
property decorate 1
property elidetext 40
property fillcolor1 #ffffcc
property fillcolor2 #dfebf8
property fillcolor3 #f0f0f0
property gatecellname 2
property instattrmax 30
property instdrag 15
property instorder 1
property marksize 12
property maxfontsize 12
property maxzoom 5
property netcolor #19b400
property objecthighlight0 #ff00ff
property objecthighlight1 #ffff00
property objecthighlight2 #00ff00
property objecthighlight3 #0095ff
property objecthighlight4 #8000ff
property objecthighlight5 #ffc800
property objecthighlight7 #00ffff
property objecthighlight8 #ff00ff
property objecthighlight9 #ccccff
property objecthighlight10 #0ead00
property objecthighlight11 #cefc00
property objecthighlight12 #9e2dbe
property objecthighlight13 #ba6a29
property objecthighlight14 #fc0188
property objecthighlight15 #02f990
property objecthighlight16 #f1b0fb
property objecthighlight17 #fec004
property objecthighlight18 #149bff
property objecthighlight19 #eb591b
property overlaycolor #19b400
property pbuscolor #000000
property pbusnamecolor #000000
property pinattrmax 20
property pinorder 2
property pinpermute 0
property portcolor #000000
property portnamecolor #000000
property ripindexfontsize 4
property rippercolor #000000
property rubberbandcolor #000000
property rubberbandfontsize 12
property selectattr 0
property selectionappearance 2
property selectioncolor #0000ff
property sheetheight 44
property sheetwidth 68
property showmarks 1
property shownetname 0
property showpagenumbers 1
property showripindex 1
property timelimit 1
#
module new top work:top:NOFILE -nosplit
load symbol RTL_ADD9 work RTL(+) pin I1 input.left pinBus I0 input.left [3:0] pinBus O output.right [3:0] fillcolor 1
load symbol RTL_MUX772 work MUX pinBus I0 input.left [3:0] pinBus I1 input.left [3:0] pinBus O output.right [3:0] pinBus S input.bot [3:0] fillcolor 1
load symbol RTL_MUX28 work MUX pin I0 input.left pin I1 input.left pin O output.right pin S input.bot fillcolor 1
load symbol RTL_REG_ASYNC__BREG_549 work GEN pin C input.clk.left pin CLR input.top pin D input.left pin Q output.right fillcolor 1
load symbol RTL_EQ2 work RTL(=) pin O output.right pinBus I0 input.left [3:0] pinBus I1 input.left [3:0] fillcolor 1
load symbol RTL_AND0 work AND pin I0 input pin I1 input pin O output fillcolor 1
load symbol AD9361_1RT_FDD work:AD9361_1RT_FDD:NOFILE HIERBOX pin AD9361_DATACLK input.left pin AD9361_FBCLK output.right pin AD9361_RX_CLK output.right pin AD9361_RX_FRAME input.left pin AD9361_TX_CLK input.left pin AD9361_TX_FRAME output.right pin clk200M input.left pinBus AD9361_P0_D input.left [11:0] pinBus AD9361_P1_D output.right [11:0] pinBus AD9361_RX_DAT_I output.right [11:0] pinBus AD9361_RX_DAT_Q output.right [11:0] pinBus AD9361_TX_DAT_I input.left [11:0] pinBus AD9361_TX_DAT_Q input.left [11:0] boxcolor 1 fillcolor 2 minwidth 13%
load symbol CONSTANT work:CONSTANT:NOFILE HIERBOX pinBus constant_out output.right [3:0] boxcolor 1 fillcolor 2 minwidth 13%
load symbol CONSTANT__parameterized0 work:CONSTANT__parameterized0:NOFILE HIERBOX pinBus constant_out output.right [3:0] boxcolor 1 fillcolor 2 minwidth 13%
load symbol CONSTANT__parameterized1 work:CONSTANT__parameterized1:NOFILE HIERBOX pinBus constant_out output.right [3:0] boxcolor 1 fillcolor 2 minwidth 13%
load symbol CONSTANT__parameterized2 work:CONSTANT__parameterized2:NOFILE HIERBOX pinBus constant_out output.right [3:0] boxcolor 1 fillcolor 2 minwidth 13%
load symbol CONSTANT__parameterized3 work:CONSTANT__parameterized3:NOFILE HIERBOX pinBus constant_out output.right [15:0] boxcolor 1 fillcolor 2 minwidth 13%
load symbol CONSTANT__parameterized4 work:CONSTANT__parameterized4:NOFILE HIERBOX pinBus constant_out output.right [7:0] boxcolor 1 fillcolor 2 minwidth 13%
load symbol CONSTANT__parameterized4 work:abstract:NOFILE HIERBOX pinBus constant_out output.right [7:0] boxcolor 1 fillcolor 2 minwidth 13%
load symbol CONSTANT__parameterized5 work:CONSTANT__parameterized5:NOFILE HIERBOX pinBus constant_out output.right [15:0] boxcolor 1 fillcolor 2 minwidth 13%
load symbol Clock_Gen work:Clock_Gen:NOFILE HIERBOX pin PL_CLK_100MHz input.left pin clk_16d384M output.right pin clk_1d024M output.right pin clk_200M output.right pin clk_2d048M output.right pin clk_32d768M output.right pin rst_32d768M output.right pin rst_n_32d768M output.right boxcolor 1 fillcolor 2 minwidth 13%
load symbol Rx work:Rx:NOFILE HIERBOX pin BPSK output.right pin BPSK_raw output.right pin Rx_1bit output.right pin Rx_valid output.right pin clk_16M384 input.left pin clk_1M024 input.left pin clk_1M_out output.right pin clk_2M048 input.left pin clk_32M768 input.left pin data_tlast output.right pin data_tuser output.right pin data_tvalid output.right pin rst_32M768 input.left pin rst_n_32M768 input.left pinBus ADC_I input.left [11:0] pinBus ADC_Q input.left [11:0] pinBus FEEDBACK_SHIFT input.left [3:0] pinBus GARDNER_SHIFT input.left [3:0] pinBus I_16M output.right [15:0] pinBus I_1M output.right [15:0] pinBus MODE_CTRL input.left [3:0] pinBus NCO_cos output.right [11:0] pinBus QPSK output.right [1:0] pinBus QPSK_raw output.right [1:0] pinBus Q_16M output.right [15:0] pinBus Q_1M output.right [15:0] pinBus RX_BD_WINDOW input.left [7:0] pinBus RX_PD_WINDOW input.left [7:0] pinBus RX_SD_THRESHOLD input.left [15:0] pinBus RX_SD_WINDOW input.left [7:0] pinBus data_tdata output.right [7:0] pinBus error_tdata output.right [15:0] pinBus feedback_tdata output.right [15:0] pinBus gardner_error output.right [15:0] pinBus gardner_increment output.right [15:0] boxcolor 1 fillcolor 2 minwidth 13%
load symbol Tx work:Tx:NOFILE HIERBOX pin DAC_valid output.right pin clk_16M384 input.left pin clk_1M024 input.left pin clk_2M048 input.left pin clk_32M768 input.left pin data_tlast output.right pin data_tuser output.right pin data_tvalid output.right pin rst_n_32M768 input.left pin tx_serial output.right pin tx_valid output.right pinBus DAC_I output.right [11:0] pinBus DAC_Q output.right [11:0] pinBus DAC_bits output.right [1:0] pinBus DELAY_CNT input.left [3:0] pinBus MODE_CTRL input.left [3:0] pinBus TX_PHASE_CONFIG input.left [15:0] pinBus data_tdata output.right [7:0] boxcolor 1 fillcolor 2 minwidth 13%
load symbol axis_data_fifo_AD_DA work_library0_99:abstract:axis_data_fifo_AD_DA.edf HIERBOX pin m_axis_aclk input.left pin m_axis_tready input.left pin m_axis_tvalid output.right pin s_axis_aclk input.left pin s_axis_aresetn input.left pin s_axis_tready output.right pin s_axis_tvalid input.left pinBus m_axis_tdata output.right [23:0] pinBus s_axis_tdata input.left [23:0] boxcolor 1 fillcolor 2 minwidth 13%
load symbol axis_data_fifo_AD_DA work_library0_99:axis_data_fifo_AD_DA:axis_data_fifo_AD_DA.edf HIERBOX pin m_axis_aclk input.left pin m_axis_tready input.left pin m_axis_tvalid output.right pin s_axis_aclk input.left pin s_axis_aresetn input.left pin s_axis_tready output.right pin s_axis_tvalid input.left pinBus m_axis_tdata output.right [23:0] pinBus s_axis_tdata input.left [23:0] boxcolor 1 fillcolor 2 minwidth 13%
load symbol RTL_REG_SYNC__BREG_619 work[3:0]swws GEN pin C input.clk.left pinBus D input.left [3:0] pinBus Q output.right [3:0] pin RST input.top fillcolor 1 sandwich 3 prop @bundle 4
load symbol Bits_Flatten work:Bits_Flatten:NOFILE HIERBOX pin I_vld input.left pin O output.right pin O_vld output.right pin bypass input.left pin ce_1M input.left pin ce_2M input.left pin clk input.left pin rst_n input.left pinBus I input.left [7:0] boxcolor 1 fillcolor 2 minwidth 13%
load symbol PSK_Modulation work:PSK_Modulation:NOFILE HIERBOX pin DAC_valid output.right pin clk_16d384M input.left pin clk_32d768M input.left pin psk_tlast input.left pin psk_tready output.right pin psk_tuser input.left pin psk_tvalid input.left pin rst_n_32d768M input.left pinBus DAC_I output.right [11:0] pinBus DAC_Q output.right [11:0] pinBus DAC_bits output.right [1:0] pinBus DELAY_CNT input.left [3:0] pinBus TX_PHASE_CONFIG input.left [15:0] pinBus psk_tdata input.left [7:0] boxcolor 1 fillcolor 2 minwidth 13%
load symbol Packetizer work:Packetizer:NOFILE HIERBOX pin I_tlast input.left pin I_tready output.right pin I_tuser input.left pin I_tvalid input.left pin O_tlast output.right pin O_tready input.left pin O_tuser output.right pin O_tvalid output.right pin clk input.left pin clk_enable input.left pin hdr_vld output.right pin pkt_sent output.right pin pld_vld output.right pin rst_n input.left pinBus I_tdata input.left [7:0] pinBus MODE_CTRL input.left [3:0] pinBus O_tdata output.right [7:0] pinBus payload_length input.left [15:0] boxcolor 1 fillcolor 2 minwidth 13%
load symbol Tx_Data work:Tx_Data:NOFILE HIERBOX pin clk input.left pin clk_enable input.left pin data_tlast output.right pin data_tready input.left pin data_tuser output.right pin data_tvalid output.right pin pkt_sent input.left pin rst_n input.left pinBus MODE_CTRL input.left [3:0] pinBus data_tdata output.right [7:0] pinBus payload_length output.right [15:0] boxcolor 1 fillcolor 2 minwidth 13%
load symbol Sync_FIFO work:Sync_FIFO:NOFILE HIERBOX pin m_axis_tlast output.right pin m_axis_tready input.left pin m_axis_tuser output.right pin m_axis_tvalid output.right pin s_axis_aclk input.left pin s_axis_aresetn input.left pin s_axis_tlast input.left pin s_axis_tready output.right pin s_axis_tuser input.left pin s_axis_tvalid input.left pinBus m_axis_tdata output.right [7:0] pinBus s_axis_tdata input.left [7:0] boxcolor 1 fillcolor 2 minwidth 13%
load port AD9361_DATACLK input -pg 1 -lvl 0 -x 0 -y 150
load port AD9361_FBCLK output -pg 1 -lvl 10 -x 6430 -y 230
load port AD9361_RX_FRAME input -pg 1 -lvl 0 -x 0 -y 340
load port AD9361_TX_FRAME output -pg 1 -lvl 10 -x 6430 -y 390
load port GPIO_TH1 output -pg 1 -lvl 10 -x 6430 -y 650
load port GPIO_TH2 output -pg 1 -lvl 10 -x 6430 -y 850
load port GPIO_TH3 output -pg 1 -lvl 10 -x 6430 -y 670
load port GPIO_TH4 output -pg 1 -lvl 10 -x 6430 -y 870
load port PL_CLK_100MHz input -pg 1 -lvl 0 -x 0 -y 750
load portBus AD9361_P0_D input [11:0] -attr @name AD9361_P0_D[11:0] -pg 1 -lvl 0 -x 0 -y 170
load portBus AD9361_P1_D output [11:0] -attr @name AD9361_P1_D[11:0] -pg 1 -lvl 10 -x 6430 -y 310
load inst decimate_cnt0_i RTL_ADD9 work -attr @cell(#000000) RTL_ADD -pinBusAttr I0 @name I0[3:0] -pinBusAttr O @name O[3:0] -pg 1 -lvl 3 -x 750 -y 70
load inst decimate_cnt_i RTL_MUX772 work -attr @cell(#000000) RTL_MUX -pinBusAttr I0 @name I0[3:0] -pinBusAttr I0 @attr S=4'b1011 -pinBusAttr I1 @name I1[3:0] -pinBusAttr I1 @attr S=default -pinBusAttr O @name O[3:0] -pinBusAttr S @name S[3:0] -pg 1 -lvl 4 -x 1140 -y 60
load inst decimate_cnt_i__0 RTL_MUX28 work -attr @cell(#000000) RTL_MUX -pinAttr I0 @attr S=1'b0 -pinAttr I1 @attr S=default -pg 1 -lvl 4 -x 1140 -y 420
load inst rev_aresetn_d1_reg RTL_REG_ASYNC__BREG_549 work -attr @cell(#000000) RTL_REG_ASYNC -pg 1 -lvl 2 -x 440 -y 650
load inst rev_aresetn_d2_reg RTL_REG_ASYNC__BREG_549 work -attr @cell(#000000) RTL_REG_ASYNC -pg 1 -lvl 3 -x 750 -y 640
load inst rev_valid0_i RTL_EQ2 work -attr @cell(#000000) RTL_EQ -pinBusAttr I0 @name I0[3:0] -pinBusAttr I1 @name I1[3:0] -pg 1 -lvl 6 -x 1720 -y 270
load inst rev_valid_i RTL_AND0 work -attr @cell(#000000) RTL_AND -pg 1 -lvl 7 -x 2560 -y 280
load inst u_AD9361_1RT_FDD AD9361_1RT_FDD work:AD9361_1RT_FDD:NOFILE -autohide -attr @cell(#000000) AD9361_1RT_FDD -pinBusAttr AD9361_P0_D @name AD9361_P0_D[11:0] -pinBusAttr AD9361_P1_D @name AD9361_P1_D[11:0] -pinBusAttr AD9361_RX_DAT_I @name AD9361_RX_DAT_I[11:0] -pinBusAttr AD9361_RX_DAT_Q @name AD9361_RX_DAT_Q[11:0] -pinBusAttr AD9361_TX_DAT_I @name AD9361_TX_DAT_I[11:0] -pinBusAttr AD9361_TX_DAT_Q @name AD9361_TX_DAT_Q[11:0] -pg 1 -lvl 9 -x 6120 -y 280
load inst u_CONSTANT_1 CONSTANT work:CONSTANT:NOFILE -autohide -attr @cell(#000000) CONSTANT -pinBusAttr constant_out @name constant_out[3:0] -pinBusAttr constant_out @attr V=B\"1000\" -pg 1 -lvl 6 -x 1720 -y 490
load inst u_CONSTANT_2 CONSTANT__parameterized0 work:CONSTANT__parameterized0:NOFILE -autohide -attr @cell(#000000) CONSTANT__parameterized0 -pinBusAttr constant_out @name constant_out[3:0] -pinBusAttr constant_out @attr V=B\"0100\" -pg 1 -lvl 6 -x 1720 -y 580
load inst u_CONSTANT_3 CONSTANT__parameterized1 work:CONSTANT__parameterized1:NOFILE -autohide -attr @cell(#000000) CONSTANT__parameterized1 -pinBusAttr constant_out @name constant_out[3:0] -pg 1 -lvl 8 -x 5240 -y 880
load inst u_CONSTANT_4 CONSTANT__parameterized2 work:CONSTANT__parameterized2:NOFILE -autohide -attr @cell(#000000) CONSTANT__parameterized2 -pinBusAttr constant_out @name constant_out[3:0] -pinBusAttr constant_out @attr V=B\"0011\" -pg 1 -lvl 8 -x 5240 -y 1040
load inst u_CONSTANT_5 CONSTANT__parameterized3 work:CONSTANT__parameterized3:NOFILE -autohide -attr @cell(#000000) CONSTANT__parameterized3 -pinBusAttr constant_out @name constant_out[15:0] -pinBusAttr constant_out @attr V=B\"0000000010000000\" -pg 1 -lvl 8 -x 5240 -y 1130
load inst u_CONSTANT_6 CONSTANT__parameterized4 work:CONSTANT__parameterized4:NOFILE -autohide -attr @cell(#000000) CONSTANT__parameterized4 -pinBusAttr constant_out @name constant_out[7:0] -pinBusAttr constant_out @attr V=B\"00010000\" -pg 1 -lvl 8 -x 5240 -y 1220
load inst u_CONSTANT_7 CONSTANT__parameterized4 work:abstract:NOFILE -autohide -attr @cell(#000000) CONSTANT__parameterized4 -pinBusAttr constant_out @name constant_out[7:0] -pinBusAttr constant_out @attr V=B\"00010000\" -pg 1 -lvl 8 -x 5240 -y 1310
load inst u_CONSTANT_8 CONSTANT__parameterized4 work:abstract:NOFILE -autohide -attr @cell(#000000) CONSTANT__parameterized4 -pinBusAttr constant_out @name constant_out[7:0] -pinBusAttr constant_out @attr V=B\"00010000\" -pg 1 -lvl 8 -x 5240 -y 1400
load inst u_CONSTANT_9 CONSTANT__parameterized5 work:CONSTANT__parameterized5:NOFILE -autohide -attr @cell(#000000) CONSTANT__parameterized5 -pinBusAttr constant_out @name constant_out[15:0] -pinBusAttr constant_out @attr V=B\"0010000000000000\" -pg 1 -lvl 6 -x 1720 -y 680
load inst u_Clock_Gen Clock_Gen work:Clock_Gen:NOFILE -autohide -attr @cell(#000000) Clock_Gen -pg 1 -lvl 1 -x 130 -y 680
load inst u_Rx Rx work:Rx:NOFILE -autohide -attr @cell(#000000) Rx -pinAttr BPSK @attr n/c -pinAttr BPSK_raw @attr n/c -pinAttr Rx_valid @attr n/c -pinAttr data_tlast @attr n/c -pinAttr data_tuser @attr n/c -pinAttr data_tvalid @attr n/c -pinBusAttr ADC_I @name ADC_I[11:0] -pinBusAttr ADC_Q @name ADC_Q[11:0] -pinBusAttr FEEDBACK_SHIFT @name FEEDBACK_SHIFT[3:0] -pinBusAttr GARDNER_SHIFT @name GARDNER_SHIFT[3:0] -pinBusAttr GARDNER_SHIFT @attr V=B\"0011\" -pinBusAttr I_16M @name I_16M[15:0] -pinBusAttr I_16M @attr n/c -pinBusAttr I_1M @name I_1M[15:0] -pinBusAttr I_1M @attr n/c -pinBusAttr MODE_CTRL @name MODE_CTRL[3:0] -pinBusAttr MODE_CTRL @attr V=B\"0100\" -pinBusAttr NCO_cos @name NCO_cos[11:0] -pinBusAttr NCO_cos @attr n/c -pinBusAttr QPSK @name QPSK[1:0] -pinBusAttr QPSK @attr n/c -pinBusAttr QPSK_raw @name QPSK_raw[1:0] -pinBusAttr QPSK_raw @attr n/c -pinBusAttr Q_16M @name Q_16M[15:0] -pinBusAttr Q_16M @attr n/c -pinBusAttr Q_1M @name Q_1M[15:0] -pinBusAttr Q_1M @attr n/c -pinBusAttr RX_BD_WINDOW @name RX_BD_WINDOW[7:0] -pinBusAttr RX_BD_WINDOW @attr V=B\"00010000\" -pinBusAttr RX_PD_WINDOW @name RX_PD_WINDOW[7:0] -pinBusAttr RX_PD_WINDOW @attr V=B\"00010000\" -pinBusAttr RX_SD_THRESHOLD @name RX_SD_THRESHOLD[15:0] -pinBusAttr RX_SD_THRESHOLD @attr V=B\"0000000010000000\" -pinBusAttr RX_SD_WINDOW @name RX_SD_WINDOW[7:0] -pinBusAttr RX_SD_WINDOW @attr V=B\"00010000\" -pinBusAttr data_tdata @name data_tdata[7:0] -pinBusAttr data_tdata @attr n/c -pinBusAttr error_tdata @name error_tdata[15:0] -pinBusAttr error_tdata @attr n/c -pinBusAttr feedback_tdata @name feedback_tdata[15:0] -pinBusAttr feedback_tdata @attr n/c -pinBusAttr gardner_error @name gardner_error[15:0] -pinBusAttr gardner_error @attr n/c -pinBusAttr gardner_increment @name gardner_increment[15:0] -pinBusAttr gardner_increment @attr n/c -pg 1 -lvl 9 -x 6120 -y 720
load inst u_Tx Tx work:Tx:NOFILE -autohide -attr @cell(#000000) Tx -attr @fillcolor #fafafa -pinAttr data_tlast @attr n/c -pinAttr data_tuser @attr n/c -pinAttr data_tvalid @attr n/c -pinAttr tx_valid @attr n/c -pinBusAttr DAC_I @name DAC_I[11:0] -pinBusAttr DAC_Q @name DAC_Q[11:0] -pinBusAttr DAC_bits @name DAC_bits[1:0] -pinBusAttr DAC_bits @attr n/c -pinBusAttr DELAY_CNT @name DELAY_CNT[3:0] -pinBusAttr DELAY_CNT @attr V=B\"1000\" -pinBusAttr MODE_CTRL @name MODE_CTRL[3:0] -pinBusAttr MODE_CTRL @attr V=B\"0100\" -pinBusAttr TX_PHASE_CONFIG @name TX_PHASE_CONFIG[15:0] -pinBusAttr TX_PHASE_CONFIG @attr V=B\"0010000000000000\" -pinBusAttr data_tdata @name data_tdata[7:0] -pinBusAttr data_tdata @attr n/c -pg 1 -lvl 7 -x 2560 -y 548
load inst u_axis_data_fifo_ADC axis_data_fifo_AD_DA work_library0_99:abstract:axis_data_fifo_AD_DA.edf -autohide -attr @cell(#000000) axis_data_fifo_AD_DA -pinAttr m_axis_tvalid @attr n/c -pinAttr s_axis_tready @attr n/c -pinBusAttr m_axis_tdata @name m_axis_tdata[23:0] -pinBusAttr s_axis_tdata @name s_axis_tdata[23:0] -pg 1 -lvl 8 -x 5240 -y 300
load inst u_axis_data_fifo_DAC axis_data_fifo_AD_DA work_library0_99:axis_data_fifo_AD_DA:axis_data_fifo_AD_DA.edf -autohide -attr @cell(#000000) axis_data_fifo_AD_DA -pinAttr m_axis_tvalid @attr n/c -pinAttr s_axis_tready @attr n/c -pinBusAttr m_axis_tdata @name m_axis_tdata[23:0] -pinBusAttr s_axis_tdata @name s_axis_tdata[23:0] -pg 1 -lvl 8 -x 5240 -y 520
load inst decimate_cnt_reg[3:0] RTL_REG_SYNC__BREG_619 work[3:0]swws -attr @cell(#000000) RTL_REG_SYNC -pg 1 -lvl 5 -x 1390 -y 260
load inst u_Tx|u_Bits_Flatten Bits_Flatten work:Bits_Flatten:NOFILE -hier u_Tx -autohide -attr @cell(#000000) Bits_Flatten -attr @name u_Bits_Flatten -pinBusAttr I @name I[7:0] -pg 1 -lvl 3 -x 4190 -y 828
load inst u_Tx|u_PSK_Modulation PSK_Modulation work:PSK_Modulation:NOFILE -hier u_Tx -autohide -attr @cell(#000000) PSK_Modulation -attr @name u_PSK_Modulation -pinBusAttr DAC_I @name DAC_I[11:0] -pinBusAttr DAC_Q @name DAC_Q[11:0] -pinBusAttr DAC_bits @name DAC_bits[1:0] -pinBusAttr DELAY_CNT @name DELAY_CNT[3:0] -pinBusAttr DELAY_CNT @attr V=B\"1000\" -pinBusAttr TX_PHASE_CONFIG @name TX_PHASE_CONFIG[15:0] -pinBusAttr TX_PHASE_CONFIG @attr V=B\"0010000000000000\" -pinBusAttr psk_tdata @name psk_tdata[7:0] -pg 1 -lvl 3 -x 4190 -y 568
load inst u_Tx|u_Packetizer Packetizer work:Packetizer:NOFILE -hier u_Tx -autohide -attr @cell(#000000) Packetizer -attr @name u_Packetizer -pinAttr hdr_vld @attr n/c -pinBusAttr I_tdata @name I_tdata[7:0] -pinBusAttr MODE_CTRL @name MODE_CTRL[3:0] -pinBusAttr MODE_CTRL @attr V=B\"0100\" -pinBusAttr O_tdata @name O_tdata[7:0] -pinBusAttr payload_length @name payload_length[15:0] -pinBusAttr payload_length @attr V=B\"0000000010000000\" -pg 1 -lvl 2 -x 3490 -y 818
load inst u_Tx|u_Tx_Data Tx_Data work:Tx_Data:NOFILE -hier u_Tx -autohide -attr @cell(#000000) Tx_Data -attr @name u_Tx_Data -pinBusAttr MODE_CTRL @name MODE_CTRL[3:0] -pinBusAttr MODE_CTRL @attr V=B\"0100\" -pinBusAttr data_tdata @name data_tdata[7:0] -pinBusAttr payload_length @name payload_length[15:0] -pinBusAttr payload_length @attr V=B\"0000000010000000\" -pg 1 -lvl 3 -x 4190 -y 1038
load inst u_Tx|u_axis_data_fifo_0 Sync_FIFO work:Sync_FIFO:NOFILE -hier u_Tx -autohide -attr @cell(#000000) Sync_FIFO -attr @name u_axis_data_fifo_0 -pinBusAttr m_axis_tdata @name m_axis_tdata[7:0] -pinBusAttr s_axis_tdata @name s_axis_tdata[7:0] -pg 1 -lvl 1 -x 2810 -y 998
load net <const0> -ground -pin decimate_cnt_i I0[3] -pin decimate_cnt_i I0[2] -pin decimate_cnt_i I0[1] -pin decimate_cnt_i I0[0] -pin decimate_cnt_i__0 I1 -pin rev_valid0_i I1[3] -pin rev_valid0_i I1[2] -pin rev_valid0_i I1[1] -pin rev_valid0_i I1[0]
load net <const1> -power -pin decimate_cnt0_i I1 -pin decimate_cnt_i__0 I0 -pin rev_aresetn_d1_reg D -pin u_axis_data_fifo_ADC m_axis_tready -pin u_axis_data_fifo_DAC m_axis_tready
load net AD9361_CLK -pin decimate_cnt_reg[3:0] C -pin rev_aresetn_d1_reg C -pin rev_aresetn_d2_reg C -pin u_AD9361_1RT_FDD AD9361_RX_CLK -pin u_axis_data_fifo_ADC s_axis_aclk -pin u_axis_data_fifo_DAC m_axis_aclk
netloc AD9361_CLK 1 1 9 340 560 670 320 NJ 320 1310 440 NJ 440 NJ 440 4950 190 NJ 190 6370
load net AD9361_DATACLK -port AD9361_DATACLK -pin u_AD9361_1RT_FDD AD9361_DATACLK
netloc AD9361_DATACLK 1 0 9 NJ 150 NJ 150 NJ 150 NJ 150 NJ 150 NJ 150 NJ 150 NJ 150 5710J
load net AD9361_FBCLK -port AD9361_FBCLK -pin u_AD9361_1RT_FDD AD9361_FBCLK -pin u_AD9361_1RT_FDD AD9361_TX_CLK
netloc AD9361_FBCLK 1 8 2 5790 230 6410
load net AD9361_P0_D[0] -attr @rip(#000000) AD9361_P0_D[0] -port AD9361_P0_D[0] -pin u_AD9361_1RT_FDD AD9361_P0_D[0]
load net AD9361_P0_D[10] -attr @rip(#000000) AD9361_P0_D[10] -port AD9361_P0_D[10] -pin u_AD9361_1RT_FDD AD9361_P0_D[10]
load net AD9361_P0_D[11] -attr @rip(#000000) AD9361_P0_D[11] -port AD9361_P0_D[11] -pin u_AD9361_1RT_FDD AD9361_P0_D[11]
load net AD9361_P0_D[1] -attr @rip(#000000) AD9361_P0_D[1] -port AD9361_P0_D[1] -pin u_AD9361_1RT_FDD AD9361_P0_D[1]
load net AD9361_P0_D[2] -attr @rip(#000000) AD9361_P0_D[2] -port AD9361_P0_D[2] -pin u_AD9361_1RT_FDD AD9361_P0_D[2]
load net AD9361_P0_D[3] -attr @rip(#000000) AD9361_P0_D[3] -port AD9361_P0_D[3] -pin u_AD9361_1RT_FDD AD9361_P0_D[3]
load net AD9361_P0_D[4] -attr @rip(#000000) AD9361_P0_D[4] -port AD9361_P0_D[4] -pin u_AD9361_1RT_FDD AD9361_P0_D[4]
load net AD9361_P0_D[5] -attr @rip(#000000) AD9361_P0_D[5] -port AD9361_P0_D[5] -pin u_AD9361_1RT_FDD AD9361_P0_D[5]
load net AD9361_P0_D[6] -attr @rip(#000000) AD9361_P0_D[6] -port AD9361_P0_D[6] -pin u_AD9361_1RT_FDD AD9361_P0_D[6]
load net AD9361_P0_D[7] -attr @rip(#000000) AD9361_P0_D[7] -port AD9361_P0_D[7] -pin u_AD9361_1RT_FDD AD9361_P0_D[7]
load net AD9361_P0_D[8] -attr @rip(#000000) AD9361_P0_D[8] -port AD9361_P0_D[8] -pin u_AD9361_1RT_FDD AD9361_P0_D[8]
load net AD9361_P0_D[9] -attr @rip(#000000) AD9361_P0_D[9] -port AD9361_P0_D[9] -pin u_AD9361_1RT_FDD AD9361_P0_D[9]
load net AD9361_P1_D[0] -attr @rip(#000000) AD9361_P1_D[0] -port AD9361_P1_D[0] -pin u_AD9361_1RT_FDD AD9361_P1_D[0]
load net AD9361_P1_D[10] -attr @rip(#000000) AD9361_P1_D[10] -port AD9361_P1_D[10] -pin u_AD9361_1RT_FDD AD9361_P1_D[10]
load net AD9361_P1_D[11] -attr @rip(#000000) AD9361_P1_D[11] -port AD9361_P1_D[11] -pin u_AD9361_1RT_FDD AD9361_P1_D[11]
load net AD9361_P1_D[1] -attr @rip(#000000) AD9361_P1_D[1] -port AD9361_P1_D[1] -pin u_AD9361_1RT_FDD AD9361_P1_D[1]
load net AD9361_P1_D[2] -attr @rip(#000000) AD9361_P1_D[2] -port AD9361_P1_D[2] -pin u_AD9361_1RT_FDD AD9361_P1_D[2]
load net AD9361_P1_D[3] -attr @rip(#000000) AD9361_P1_D[3] -port AD9361_P1_D[3] -pin u_AD9361_1RT_FDD AD9361_P1_D[3]
load net AD9361_P1_D[4] -attr @rip(#000000) AD9361_P1_D[4] -port AD9361_P1_D[4] -pin u_AD9361_1RT_FDD AD9361_P1_D[4]
load net AD9361_P1_D[5] -attr @rip(#000000) AD9361_P1_D[5] -port AD9361_P1_D[5] -pin u_AD9361_1RT_FDD AD9361_P1_D[5]
load net AD9361_P1_D[6] -attr @rip(#000000) AD9361_P1_D[6] -port AD9361_P1_D[6] -pin u_AD9361_1RT_FDD AD9361_P1_D[6]
load net AD9361_P1_D[7] -attr @rip(#000000) AD9361_P1_D[7] -port AD9361_P1_D[7] -pin u_AD9361_1RT_FDD AD9361_P1_D[7]
load net AD9361_P1_D[8] -attr @rip(#000000) AD9361_P1_D[8] -port AD9361_P1_D[8] -pin u_AD9361_1RT_FDD AD9361_P1_D[8]
load net AD9361_P1_D[9] -attr @rip(#000000) AD9361_P1_D[9] -port AD9361_P1_D[9] -pin u_AD9361_1RT_FDD AD9361_P1_D[9]
load net AD9361_RX_FRAME -port AD9361_RX_FRAME -pin rev_valid_i I1 -pin u_AD9361_1RT_FDD AD9361_RX_FRAME
netloc AD9361_RX_FRAME 1 0 9 NJ 340 NJ 340 NJ 340 NJ 340 NJ 340 NJ 340 2230 230 NJ 230 5590J
load net AD9361_TX_FRAME -port AD9361_TX_FRAME -pin u_AD9361_1RT_FDD AD9361_TX_FRAME
netloc AD9361_TX_FRAME 1 9 1 NJ 390
load net ADC_concat[0] -attr @rip(#000000) m_axis_tdata[0] -pin u_Rx ADC_I[0] -pin u_axis_data_fifo_ADC m_axis_tdata[0]
load net ADC_concat[10] -attr @rip(#000000) m_axis_tdata[10] -pin u_Rx ADC_I[10] -pin u_axis_data_fifo_ADC m_axis_tdata[10]
load net ADC_concat[11] -attr @rip(#000000) m_axis_tdata[11] -pin u_Rx ADC_I[11] -pin u_axis_data_fifo_ADC m_axis_tdata[11]
load net ADC_concat[12] -attr @rip(#000000) m_axis_tdata[12] -pin u_Rx ADC_Q[0] -pin u_axis_data_fifo_ADC m_axis_tdata[12]
load net ADC_concat[13] -attr @rip(#000000) m_axis_tdata[13] -pin u_Rx ADC_Q[1] -pin u_axis_data_fifo_ADC m_axis_tdata[13]
load net ADC_concat[14] -attr @rip(#000000) m_axis_tdata[14] -pin u_Rx ADC_Q[2] -pin u_axis_data_fifo_ADC m_axis_tdata[14]
load net ADC_concat[15] -attr @rip(#000000) m_axis_tdata[15] -pin u_Rx ADC_Q[3] -pin u_axis_data_fifo_ADC m_axis_tdata[15]
load net ADC_concat[16] -attr @rip(#000000) m_axis_tdata[16] -pin u_Rx ADC_Q[4] -pin u_axis_data_fifo_ADC m_axis_tdata[16]
load net ADC_concat[17] -attr @rip(#000000) m_axis_tdata[17] -pin u_Rx ADC_Q[5] -pin u_axis_data_fifo_ADC m_axis_tdata[17]
load net ADC_concat[18] -attr @rip(#000000) m_axis_tdata[18] -pin u_Rx ADC_Q[6] -pin u_axis_data_fifo_ADC m_axis_tdata[18]
load net ADC_concat[19] -attr @rip(#000000) m_axis_tdata[19] -pin u_Rx ADC_Q[7] -pin u_axis_data_fifo_ADC m_axis_tdata[19]
load net ADC_concat[1] -attr @rip(#000000) m_axis_tdata[1] -pin u_Rx ADC_I[1] -pin u_axis_data_fifo_ADC m_axis_tdata[1]
load net ADC_concat[20] -attr @rip(#000000) m_axis_tdata[20] -pin u_Rx ADC_Q[8] -pin u_axis_data_fifo_ADC m_axis_tdata[20]
load net ADC_concat[21] -attr @rip(#000000) m_axis_tdata[21] -pin u_Rx ADC_Q[9] -pin u_axis_data_fifo_ADC m_axis_tdata[21]
load net ADC_concat[22] -attr @rip(#000000) m_axis_tdata[22] -pin u_Rx ADC_Q[10] -pin u_axis_data_fifo_ADC m_axis_tdata[22]
load net ADC_concat[23] -attr @rip(#000000) m_axis_tdata[23] -pin u_Rx ADC_Q[11] -pin u_axis_data_fifo_ADC m_axis_tdata[23]
load net ADC_concat[2] -attr @rip(#000000) m_axis_tdata[2] -pin u_Rx ADC_I[2] -pin u_axis_data_fifo_ADC m_axis_tdata[2]
load net ADC_concat[3] -attr @rip(#000000) m_axis_tdata[3] -pin u_Rx ADC_I[3] -pin u_axis_data_fifo_ADC m_axis_tdata[3]
load net ADC_concat[4] -attr @rip(#000000) m_axis_tdata[4] -pin u_Rx ADC_I[4] -pin u_axis_data_fifo_ADC m_axis_tdata[4]
load net ADC_concat[5] -attr @rip(#000000) m_axis_tdata[5] -pin u_Rx ADC_I[5] -pin u_axis_data_fifo_ADC m_axis_tdata[5]
load net ADC_concat[6] -attr @rip(#000000) m_axis_tdata[6] -pin u_Rx ADC_I[6] -pin u_axis_data_fifo_ADC m_axis_tdata[6]
load net ADC_concat[7] -attr @rip(#000000) m_axis_tdata[7] -pin u_Rx ADC_I[7] -pin u_axis_data_fifo_ADC m_axis_tdata[7]
load net ADC_concat[8] -attr @rip(#000000) m_axis_tdata[8] -pin u_Rx ADC_I[8] -pin u_axis_data_fifo_ADC m_axis_tdata[8]
load net ADC_concat[9] -attr @rip(#000000) m_axis_tdata[9] -pin u_Rx ADC_I[9] -pin u_axis_data_fifo_ADC m_axis_tdata[9]
load net DAC_I[0] -attr @rip(#000000) DAC_I[0] -pin u_Tx DAC_I[0] -pin u_axis_data_fifo_DAC s_axis_tdata[0]
load net DAC_I[10] -attr @rip(#000000) DAC_I[10] -pin u_Tx DAC_I[10] -pin u_axis_data_fifo_DAC s_axis_tdata[10]
load net DAC_I[11] -attr @rip(#000000) DAC_I[11] -pin u_Tx DAC_I[11] -pin u_axis_data_fifo_DAC s_axis_tdata[11]
load net DAC_I[1] -attr @rip(#000000) DAC_I[1] -pin u_Tx DAC_I[1] -pin u_axis_data_fifo_DAC s_axis_tdata[1]
load net DAC_I[2] -attr @rip(#000000) DAC_I[2] -pin u_Tx DAC_I[2] -pin u_axis_data_fifo_DAC s_axis_tdata[2]
load net DAC_I[3] -attr @rip(#000000) DAC_I[3] -pin u_Tx DAC_I[3] -pin u_axis_data_fifo_DAC s_axis_tdata[3]
load net DAC_I[4] -attr @rip(#000000) DAC_I[4] -pin u_Tx DAC_I[4] -pin u_axis_data_fifo_DAC s_axis_tdata[4]
load net DAC_I[5] -attr @rip(#000000) DAC_I[5] -pin u_Tx DAC_I[5] -pin u_axis_data_fifo_DAC s_axis_tdata[5]
load net DAC_I[6] -attr @rip(#000000) DAC_I[6] -pin u_Tx DAC_I[6] -pin u_axis_data_fifo_DAC s_axis_tdata[6]
load net DAC_I[7] -attr @rip(#000000) DAC_I[7] -pin u_Tx DAC_I[7] -pin u_axis_data_fifo_DAC s_axis_tdata[7]
load net DAC_I[8] -attr @rip(#000000) DAC_I[8] -pin u_Tx DAC_I[8] -pin u_axis_data_fifo_DAC s_axis_tdata[8]
load net DAC_I[9] -attr @rip(#000000) DAC_I[9] -pin u_Tx DAC_I[9] -pin u_axis_data_fifo_DAC s_axis_tdata[9]
load net DAC_Q[0] -attr @rip(#000000) DAC_Q[0] -pin u_Tx DAC_Q[0] -pin u_axis_data_fifo_DAC s_axis_tdata[12]
load net DAC_Q[10] -attr @rip(#000000) DAC_Q[10] -pin u_Tx DAC_Q[10] -pin u_axis_data_fifo_DAC s_axis_tdata[22]
load net DAC_Q[11] -attr @rip(#000000) DAC_Q[11] -pin u_Tx DAC_Q[11] -pin u_axis_data_fifo_DAC s_axis_tdata[23]
load net DAC_Q[1] -attr @rip(#000000) DAC_Q[1] -pin u_Tx DAC_Q[1] -pin u_axis_data_fifo_DAC s_axis_tdata[13]
load net DAC_Q[2] -attr @rip(#000000) DAC_Q[2] -pin u_Tx DAC_Q[2] -pin u_axis_data_fifo_DAC s_axis_tdata[14]
load net DAC_Q[3] -attr @rip(#000000) DAC_Q[3] -pin u_Tx DAC_Q[3] -pin u_axis_data_fifo_DAC s_axis_tdata[15]
load net DAC_Q[4] -attr @rip(#000000) DAC_Q[4] -pin u_Tx DAC_Q[4] -pin u_axis_data_fifo_DAC s_axis_tdata[16]
load net DAC_Q[5] -attr @rip(#000000) DAC_Q[5] -pin u_Tx DAC_Q[5] -pin u_axis_data_fifo_DAC s_axis_tdata[17]
load net DAC_Q[6] -attr @rip(#000000) DAC_Q[6] -pin u_Tx DAC_Q[6] -pin u_axis_data_fifo_DAC s_axis_tdata[18]
load net DAC_Q[7] -attr @rip(#000000) DAC_Q[7] -pin u_Tx DAC_Q[7] -pin u_axis_data_fifo_DAC s_axis_tdata[19]
load net DAC_Q[8] -attr @rip(#000000) DAC_Q[8] -pin u_Tx DAC_Q[8] -pin u_axis_data_fifo_DAC s_axis_tdata[20]
load net DAC_Q[9] -attr @rip(#000000) DAC_Q[9] -pin u_Tx DAC_Q[9] -pin u_axis_data_fifo_DAC s_axis_tdata[21]
load net DAC_valid -pin u_Tx DAC_valid -pin u_axis_data_fifo_DAC s_axis_tvalid
netloc DAC_valid 1 7 1 4930 630n
load net DELAY_CNT[0] -attr @rip(#000000) constant_out[0] -pin u_CONSTANT_1 constant_out[0] -pin u_Tx DELAY_CNT[0]
load net DELAY_CNT[1] -attr @rip(#000000) constant_out[1] -pin u_CONSTANT_1 constant_out[1] -pin u_Tx DELAY_CNT[1]
load net DELAY_CNT[2] -attr @rip(#000000) constant_out[2] -pin u_CONSTANT_1 constant_out[2] -pin u_Tx DELAY_CNT[2]
load net DELAY_CNT[3] -attr @rip(#000000) constant_out[3] -pin u_CONSTANT_1 constant_out[3] -pin u_Tx DELAY_CNT[3]
load net FEEDBACK_SHIFT[0] -attr @rip(#000000) constant_out[0] -pin u_CONSTANT_3 constant_out[0] -pin u_Rx FEEDBACK_SHIFT[0]
load net FEEDBACK_SHIFT[1] -attr @rip(#000000) constant_out[1] -pin u_CONSTANT_3 constant_out[1] -pin u_Rx FEEDBACK_SHIFT[1]
load net FEEDBACK_SHIFT[2] -attr @rip(#000000) constant_out[2] -pin u_CONSTANT_3 constant_out[2] -pin u_Rx FEEDBACK_SHIFT[2]
load net FEEDBACK_SHIFT[3] -attr @rip(#000000) constant_out[3] -pin u_CONSTANT_3 constant_out[3] -pin u_Rx FEEDBACK_SHIFT[3]
load net GARDNER_SHIFT[0] -attr @rip(#000000) constant_out[0] -pin u_CONSTANT_4 constant_out[0] -pin u_Rx GARDNER_SHIFT[0]
load net GARDNER_SHIFT[1] -attr @rip(#000000) constant_out[1] -pin u_CONSTANT_4 constant_out[1] -pin u_Rx GARDNER_SHIFT[1]
load net GARDNER_SHIFT[2] -attr @rip(#000000) constant_out[2] -pin u_CONSTANT_4 constant_out[2] -pin u_Rx GARDNER_SHIFT[2]
load net GARDNER_SHIFT[3] -attr @rip(#000000) constant_out[3] -pin u_CONSTANT_4 constant_out[3] -pin u_Rx GARDNER_SHIFT[3]
load net GPIO_TH1 -port GPIO_TH1 -pin u_Tx tx_serial
netloc GPIO_TH1 1 7 3 4970J 670 5630J 650 NJ
load net GPIO_TH2 -port GPIO_TH2 -pin u_Rx Rx_1bit
netloc GPIO_TH2 1 9 1 NJ 850
load net GPIO_TH3 -port GPIO_TH3 -pin u_Clock_Gen clk_2d048M -pin u_Rx clk_2M048 -pin u_Tx clk_2M048
netloc GPIO_TH3 1 1 9 NJ 710 670J 700 NJ 700 NJ 700 1620J 630 2130 1408 5030J 810 5650 670 NJ
load net GPIO_TH4 -port GPIO_TH4 -pin u_Rx clk_1M_out
netloc GPIO_TH4 1 9 1 NJ 870
load net MODE_CTRL[0] -attr @rip(#000000) constant_out[0] -pin u_CONSTANT_2 constant_out[0] -pin u_Rx MODE_CTRL[0] -pin u_Tx MODE_CTRL[0]
load net MODE_CTRL[1] -attr @rip(#000000) constant_out[1] -pin u_CONSTANT_2 constant_out[1] -pin u_Rx MODE_CTRL[1] -pin u_Tx MODE_CTRL[1]
load net MODE_CTRL[2] -attr @rip(#000000) constant_out[2] -pin u_CONSTANT_2 constant_out[2] -pin u_Rx MODE_CTRL[2] -pin u_Tx MODE_CTRL[2]
load net MODE_CTRL[3] -attr @rip(#000000) constant_out[3] -pin u_CONSTANT_2 constant_out[3] -pin u_Rx MODE_CTRL[3] -pin u_Tx MODE_CTRL[3]
load net PL_CLK_100MHz -port PL_CLK_100MHz -pin u_Clock_Gen PL_CLK_100MHz
netloc PL_CLK_100MHz 1 0 1 NJ 750
load net RX_BD_WINDOW[0] -attr @rip(#000000) constant_out[0] -pin u_CONSTANT_8 constant_out[0] -pin u_Rx RX_BD_WINDOW[0]
load net RX_BD_WINDOW[1] -attr @rip(#000000) constant_out[1] -pin u_CONSTANT_8 constant_out[1] -pin u_Rx RX_BD_WINDOW[1]
load net RX_BD_WINDOW[2] -attr @rip(#000000) constant_out[2] -pin u_CONSTANT_8 constant_out[2] -pin u_Rx RX_BD_WINDOW[2]
load net RX_BD_WINDOW[3] -attr @rip(#000000) constant_out[3] -pin u_CONSTANT_8 constant_out[3] -pin u_Rx RX_BD_WINDOW[3]
load net RX_BD_WINDOW[4] -attr @rip(#000000) constant_out[4] -pin u_CONSTANT_8 constant_out[4] -pin u_Rx RX_BD_WINDOW[4]
load net RX_BD_WINDOW[5] -attr @rip(#000000) constant_out[5] -pin u_CONSTANT_8 constant_out[5] -pin u_Rx RX_BD_WINDOW[5]
load net RX_BD_WINDOW[6] -attr @rip(#000000) constant_out[6] -pin u_CONSTANT_8 constant_out[6] -pin u_Rx RX_BD_WINDOW[6]
load net RX_BD_WINDOW[7] -attr @rip(#000000) constant_out[7] -pin u_CONSTANT_8 constant_out[7] -pin u_Rx RX_BD_WINDOW[7]
load net RX_PD_WINDOW[0] -attr @rip(#000000) constant_out[0] -pin u_CONSTANT_7 constant_out[0] -pin u_Rx RX_PD_WINDOW[0]
load net RX_PD_WINDOW[1] -attr @rip(#000000) constant_out[1] -pin u_CONSTANT_7 constant_out[1] -pin u_Rx RX_PD_WINDOW[1]
load net RX_PD_WINDOW[2] -attr @rip(#000000) constant_out[2] -pin u_CONSTANT_7 constant_out[2] -pin u_Rx RX_PD_WINDOW[2]
load net RX_PD_WINDOW[3] -attr @rip(#000000) constant_out[3] -pin u_CONSTANT_7 constant_out[3] -pin u_Rx RX_PD_WINDOW[3]
load net RX_PD_WINDOW[4] -attr @rip(#000000) constant_out[4] -pin u_CONSTANT_7 constant_out[4] -pin u_Rx RX_PD_WINDOW[4]
load net RX_PD_WINDOW[5] -attr @rip(#000000) constant_out[5] -pin u_CONSTANT_7 constant_out[5] -pin u_Rx RX_PD_WINDOW[5]
load net RX_PD_WINDOW[6] -attr @rip(#000000) constant_out[6] -pin u_CONSTANT_7 constant_out[6] -pin u_Rx RX_PD_WINDOW[6]
load net RX_PD_WINDOW[7] -attr @rip(#000000) constant_out[7] -pin u_CONSTANT_7 constant_out[7] -pin u_Rx RX_PD_WINDOW[7]
load net RX_SD_THRESHOLD[0] -attr @rip(#000000) constant_out[0] -pin u_CONSTANT_5 constant_out[0] -pin u_Rx RX_SD_THRESHOLD[0]
load net RX_SD_THRESHOLD[10] -attr @rip(#000000) constant_out[10] -pin u_CONSTANT_5 constant_out[10] -pin u_Rx RX_SD_THRESHOLD[10]
load net RX_SD_THRESHOLD[11] -attr @rip(#000000) constant_out[11] -pin u_CONSTANT_5 constant_out[11] -pin u_Rx RX_SD_THRESHOLD[11]
load net RX_SD_THRESHOLD[12] -attr @rip(#000000) constant_out[12] -pin u_CONSTANT_5 constant_out[12] -pin u_Rx RX_SD_THRESHOLD[12]
load net RX_SD_THRESHOLD[13] -attr @rip(#000000) constant_out[13] -pin u_CONSTANT_5 constant_out[13] -pin u_Rx RX_SD_THRESHOLD[13]
load net RX_SD_THRESHOLD[14] -attr @rip(#000000) constant_out[14] -pin u_CONSTANT_5 constant_out[14] -pin u_Rx RX_SD_THRESHOLD[14]
load net RX_SD_THRESHOLD[15] -attr @rip(#000000) constant_out[15] -pin u_CONSTANT_5 constant_out[15] -pin u_Rx RX_SD_THRESHOLD[15]
load net RX_SD_THRESHOLD[1] -attr @rip(#000000) constant_out[1] -pin u_CONSTANT_5 constant_out[1] -pin u_Rx RX_SD_THRESHOLD[1]
load net RX_SD_THRESHOLD[2] -attr @rip(#000000) constant_out[2] -pin u_CONSTANT_5 constant_out[2] -pin u_Rx RX_SD_THRESHOLD[2]
load net RX_SD_THRESHOLD[3] -attr @rip(#000000) constant_out[3] -pin u_CONSTANT_5 constant_out[3] -pin u_Rx RX_SD_THRESHOLD[3]
load net RX_SD_THRESHOLD[4] -attr @rip(#000000) constant_out[4] -pin u_CONSTANT_5 constant_out[4] -pin u_Rx RX_SD_THRESHOLD[4]
load net RX_SD_THRESHOLD[5] -attr @rip(#000000) constant_out[5] -pin u_CONSTANT_5 constant_out[5] -pin u_Rx RX_SD_THRESHOLD[5]
load net RX_SD_THRESHOLD[6] -attr @rip(#000000) constant_out[6] -pin u_CONSTANT_5 constant_out[6] -pin u_Rx RX_SD_THRESHOLD[6]
load net RX_SD_THRESHOLD[7] -attr @rip(#000000) constant_out[7] -pin u_CONSTANT_5 constant_out[7] -pin u_Rx RX_SD_THRESHOLD[7]
load net RX_SD_THRESHOLD[8] -attr @rip(#000000) constant_out[8] -pin u_CONSTANT_5 constant_out[8] -pin u_Rx RX_SD_THRESHOLD[8]
load net RX_SD_THRESHOLD[9] -attr @rip(#000000) constant_out[9] -pin u_CONSTANT_5 constant_out[9] -pin u_Rx RX_SD_THRESHOLD[9]
load net RX_SD_WINDOW[0] -attr @rip(#000000) constant_out[0] -pin u_CONSTANT_6 constant_out[0] -pin u_Rx RX_SD_WINDOW[0]
load net RX_SD_WINDOW[1] -attr @rip(#000000) constant_out[1] -pin u_CONSTANT_6 constant_out[1] -pin u_Rx RX_SD_WINDOW[1]
load net RX_SD_WINDOW[2] -attr @rip(#000000) constant_out[2] -pin u_CONSTANT_6 constant_out[2] -pin u_Rx RX_SD_WINDOW[2]
load net RX_SD_WINDOW[3] -attr @rip(#000000) constant_out[3] -pin u_CONSTANT_6 constant_out[3] -pin u_Rx RX_SD_WINDOW[3]
load net RX_SD_WINDOW[4] -attr @rip(#000000) constant_out[4] -pin u_CONSTANT_6 constant_out[4] -pin u_Rx RX_SD_WINDOW[4]
load net RX_SD_WINDOW[5] -attr @rip(#000000) constant_out[5] -pin u_CONSTANT_6 constant_out[5] -pin u_Rx RX_SD_WINDOW[5]
load net RX_SD_WINDOW[6] -attr @rip(#000000) constant_out[6] -pin u_CONSTANT_6 constant_out[6] -pin u_Rx RX_SD_WINDOW[6]
load net RX_SD_WINDOW[7] -attr @rip(#000000) constant_out[7] -pin u_CONSTANT_6 constant_out[7] -pin u_Rx RX_SD_WINDOW[7]
load net TX_PHASE_CONFIG[0] -attr @rip(#000000) constant_out[0] -pin u_CONSTANT_9 constant_out[0] -pin u_Tx TX_PHASE_CONFIG[0]
load net TX_PHASE_CONFIG[10] -attr @rip(#000000) constant_out[10] -pin u_CONSTANT_9 constant_out[10] -pin u_Tx TX_PHASE_CONFIG[10]
load net TX_PHASE_CONFIG[11] -attr @rip(#000000) constant_out[11] -pin u_CONSTANT_9 constant_out[11] -pin u_Tx TX_PHASE_CONFIG[11]
load net TX_PHASE_CONFIG[12] -attr @rip(#000000) constant_out[12] -pin u_CONSTANT_9 constant_out[12] -pin u_Tx TX_PHASE_CONFIG[12]
load net TX_PHASE_CONFIG[13] -attr @rip(#000000) constant_out[13] -pin u_CONSTANT_9 constant_out[13] -pin u_Tx TX_PHASE_CONFIG[13]
load net TX_PHASE_CONFIG[14] -attr @rip(#000000) constant_out[14] -pin u_CONSTANT_9 constant_out[14] -pin u_Tx TX_PHASE_CONFIG[14]
load net TX_PHASE_CONFIG[15] -attr @rip(#000000) constant_out[15] -pin u_CONSTANT_9 constant_out[15] -pin u_Tx TX_PHASE_CONFIG[15]
load net TX_PHASE_CONFIG[1] -attr @rip(#000000) constant_out[1] -pin u_CONSTANT_9 constant_out[1] -pin u_Tx TX_PHASE_CONFIG[1]
load net TX_PHASE_CONFIG[2] -attr @rip(#000000) constant_out[2] -pin u_CONSTANT_9 constant_out[2] -pin u_Tx TX_PHASE_CONFIG[2]
load net TX_PHASE_CONFIG[3] -attr @rip(#000000) constant_out[3] -pin u_CONSTANT_9 constant_out[3] -pin u_Tx TX_PHASE_CONFIG[3]
load net TX_PHASE_CONFIG[4] -attr @rip(#000000) constant_out[4] -pin u_CONSTANT_9 constant_out[4] -pin u_Tx TX_PHASE_CONFIG[4]
load net TX_PHASE_CONFIG[5] -attr @rip(#000000) constant_out[5] -pin u_CONSTANT_9 constant_out[5] -pin u_Tx TX_PHASE_CONFIG[5]
load net TX_PHASE_CONFIG[6] -attr @rip(#000000) constant_out[6] -pin u_CONSTANT_9 constant_out[6] -pin u_Tx TX_PHASE_CONFIG[6]
load net TX_PHASE_CONFIG[7] -attr @rip(#000000) constant_out[7] -pin u_CONSTANT_9 constant_out[7] -pin u_Tx TX_PHASE_CONFIG[7]
load net TX_PHASE_CONFIG[8] -attr @rip(#000000) constant_out[8] -pin u_CONSTANT_9 constant_out[8] -pin u_Tx TX_PHASE_CONFIG[8]
load net TX_PHASE_CONFIG[9] -attr @rip(#000000) constant_out[9] -pin u_CONSTANT_9 constant_out[9] -pin u_Tx TX_PHASE_CONFIG[9]
load net clk_16d384M -pin u_Clock_Gen clk_16d384M -pin u_Rx clk_16M384 -pin u_Tx clk_16M384
netloc clk_16d384M 1 1 8 340J 750 NJ 750 NJ 750 NJ 750 NJ 750 2190 1548 5090J 950 NJ
load net clk_1d024M -pin u_Clock_Gen clk_1d024M -pin u_Rx clk_1M024 -pin u_Tx clk_1M024
netloc clk_1d024M 1 1 8 380J 790 NJ 790 NJ 790 NJ 790 NJ 790 2170 1528 5070J 930 5610J
load net clk_200M -pin u_AD9361_1RT_FDD clk200M -pin u_Clock_Gen clk_200M
netloc clk_200M 1 1 8 NJ 770 NJ 770 NJ 770 NJ 770 NJ 770 2110J 1388 5010J 790 5610
load net clk_32d768M -pin u_Clock_Gen clk_32d768M -pin u_Rx clk_32M768 -pin u_Tx clk_32M768 -pin u_axis_data_fifo_ADC m_axis_aclk -pin u_axis_data_fifo_DAC s_axis_aclk
netloc clk_32d768M 1 1 8 360J 730 NJ 730 NJ 730 NJ 730 NJ 730 2150 1348 4910 970 NJ
load net decimate_cnt0[0] -attr @rip(#000000) O[0] -pin decimate_cnt0_i O[0] -pin decimate_cnt_i I1[0]
load net decimate_cnt0[1] -attr @rip(#000000) O[1] -pin decimate_cnt0_i O[1] -pin decimate_cnt_i I1[1]
load net decimate_cnt0[2] -attr @rip(#000000) O[2] -pin decimate_cnt0_i O[2] -pin decimate_cnt_i I1[2]
load net decimate_cnt0[3] -attr @rip(#000000) O[3] -pin decimate_cnt0_i O[3] -pin decimate_cnt_i I1[3]
load net decimate_cnt0_out[0] -attr @rip(#000000) O[0] -pin decimate_cnt_i O[0] -pin decimate_cnt_reg[3:0] D[0]
load net decimate_cnt0_out[1] -attr @rip(#000000) O[1] -pin decimate_cnt_i O[1] -pin decimate_cnt_reg[3:0] D[1]
load net decimate_cnt0_out[2] -attr @rip(#000000) O[2] -pin decimate_cnt_i O[2] -pin decimate_cnt_reg[3:0] D[2]
load net decimate_cnt0_out[3] -attr @rip(#000000) O[3] -pin decimate_cnt_i O[3] -pin decimate_cnt_reg[3:0] D[3]
load net decimate_cnt[0] -attr @rip(#000000) 0 -pin decimate_cnt0_i I0[0] -pin decimate_cnt_i S[0] -pin decimate_cnt_reg[3:0] Q[0] -pin rev_valid0_i I0[0]
load net decimate_cnt[1] -attr @rip(#000000) 1 -pin decimate_cnt0_i I0[1] -pin decimate_cnt_i S[1] -pin decimate_cnt_reg[3:0] Q[1] -pin rev_valid0_i I0[1]
load net decimate_cnt[2] -attr @rip(#000000) 2 -pin decimate_cnt0_i I0[2] -pin decimate_cnt_i S[2] -pin decimate_cnt_reg[3:0] Q[2] -pin rev_valid0_i I0[2]
load net decimate_cnt[3] -attr @rip(#000000) 3 -pin decimate_cnt0_i I0[3] -pin decimate_cnt_i S[3] -pin decimate_cnt_reg[3:0] Q[3] -pin rev_valid0_i I0[3]
load net decimate_cnt__0 -pin decimate_cnt_i__0 O -pin decimate_cnt_reg[3:0] RST
netloc decimate_cnt__0 1 4 1 1270 200n
load net rev_I[0] -attr @rip(#000000) AD9361_RX_DAT_I[0] -pin u_AD9361_1RT_FDD AD9361_RX_DAT_I[0] -pin u_axis_data_fifo_ADC s_axis_tdata[0]
load net rev_I[10] -attr @rip(#000000) AD9361_RX_DAT_I[10] -pin u_AD9361_1RT_FDD AD9361_RX_DAT_I[10] -pin u_axis_data_fifo_ADC s_axis_tdata[10]
load net rev_I[11] -attr @rip(#000000) AD9361_RX_DAT_I[11] -pin u_AD9361_1RT_FDD AD9361_RX_DAT_I[11] -pin u_axis_data_fifo_ADC s_axis_tdata[11]
load net rev_I[1] -attr @rip(#000000) AD9361_RX_DAT_I[1] -pin u_AD9361_1RT_FDD AD9361_RX_DAT_I[1] -pin u_axis_data_fifo_ADC s_axis_tdata[1]
load net rev_I[2] -attr @rip(#000000) AD9361_RX_DAT_I[2] -pin u_AD9361_1RT_FDD AD9361_RX_DAT_I[2] -pin u_axis_data_fifo_ADC s_axis_tdata[2]
load net rev_I[3] -attr @rip(#000000) AD9361_RX_DAT_I[3] -pin u_AD9361_1RT_FDD AD9361_RX_DAT_I[3] -pin u_axis_data_fifo_ADC s_axis_tdata[3]
load net rev_I[4] -attr @rip(#000000) AD9361_RX_DAT_I[4] -pin u_AD9361_1RT_FDD AD9361_RX_DAT_I[4] -pin u_axis_data_fifo_ADC s_axis_tdata[4]
load net rev_I[5] -attr @rip(#000000) AD9361_RX_DAT_I[5] -pin u_AD9361_1RT_FDD AD9361_RX_DAT_I[5] -pin u_axis_data_fifo_ADC s_axis_tdata[5]
load net rev_I[6] -attr @rip(#000000) AD9361_RX_DAT_I[6] -pin u_AD9361_1RT_FDD AD9361_RX_DAT_I[6] -pin u_axis_data_fifo_ADC s_axis_tdata[6]
load net rev_I[7] -attr @rip(#000000) AD9361_RX_DAT_I[7] -pin u_AD9361_1RT_FDD AD9361_RX_DAT_I[7] -pin u_axis_data_fifo_ADC s_axis_tdata[7]
load net rev_I[8] -attr @rip(#000000) AD9361_RX_DAT_I[8] -pin u_AD9361_1RT_FDD AD9361_RX_DAT_I[8] -pin u_axis_data_fifo_ADC s_axis_tdata[8]
load net rev_I[9] -attr @rip(#000000) AD9361_RX_DAT_I[9] -pin u_AD9361_1RT_FDD AD9361_RX_DAT_I[9] -pin u_axis_data_fifo_ADC s_axis_tdata[9]
load net rev_Q[0] -attr @rip(#000000) AD9361_RX_DAT_Q[0] -pin u_AD9361_1RT_FDD AD9361_RX_DAT_Q[0] -pin u_axis_data_fifo_ADC s_axis_tdata[12]
load net rev_Q[10] -attr @rip(#000000) AD9361_RX_DAT_Q[10] -pin u_AD9361_1RT_FDD AD9361_RX_DAT_Q[10] -pin u_axis_data_fifo_ADC s_axis_tdata[22]
load net rev_Q[11] -attr @rip(#000000) AD9361_RX_DAT_Q[11] -pin u_AD9361_1RT_FDD AD9361_RX_DAT_Q[11] -pin u_axis_data_fifo_ADC s_axis_tdata[23]
load net rev_Q[1] -attr @rip(#000000) AD9361_RX_DAT_Q[1] -pin u_AD9361_1RT_FDD AD9361_RX_DAT_Q[1] -pin u_axis_data_fifo_ADC s_axis_tdata[13]
load net rev_Q[2] -attr @rip(#000000) AD9361_RX_DAT_Q[2] -pin u_AD9361_1RT_FDD AD9361_RX_DAT_Q[2] -pin u_axis_data_fifo_ADC s_axis_tdata[14]
load net rev_Q[3] -attr @rip(#000000) AD9361_RX_DAT_Q[3] -pin u_AD9361_1RT_FDD AD9361_RX_DAT_Q[3] -pin u_axis_data_fifo_ADC s_axis_tdata[15]
load net rev_Q[4] -attr @rip(#000000) AD9361_RX_DAT_Q[4] -pin u_AD9361_1RT_FDD AD9361_RX_DAT_Q[4] -pin u_axis_data_fifo_ADC s_axis_tdata[16]
load net rev_Q[5] -attr @rip(#000000) AD9361_RX_DAT_Q[5] -pin u_AD9361_1RT_FDD AD9361_RX_DAT_Q[5] -pin u_axis_data_fifo_ADC s_axis_tdata[17]
load net rev_Q[6] -attr @rip(#000000) AD9361_RX_DAT_Q[6] -pin u_AD9361_1RT_FDD AD9361_RX_DAT_Q[6] -pin u_axis_data_fifo_ADC s_axis_tdata[18]
load net rev_Q[7] -attr @rip(#000000) AD9361_RX_DAT_Q[7] -pin u_AD9361_1RT_FDD AD9361_RX_DAT_Q[7] -pin u_axis_data_fifo_ADC s_axis_tdata[19]
load net rev_Q[8] -attr @rip(#000000) AD9361_RX_DAT_Q[8] -pin u_AD9361_1RT_FDD AD9361_RX_DAT_Q[8] -pin u_axis_data_fifo_ADC s_axis_tdata[20]
load net rev_Q[9] -attr @rip(#000000) AD9361_RX_DAT_Q[9] -pin u_AD9361_1RT_FDD AD9361_RX_DAT_Q[9] -pin u_axis_data_fifo_ADC s_axis_tdata[21]
load net rev_aresetn_d1 -pin rev_aresetn_d1_reg Q -pin rev_aresetn_d2_reg D
netloc rev_aresetn_d1 1 2 1 N 650
load net rev_aresetn_d2 -pin decimate_cnt_i__0 S -pin rev_aresetn_d2_reg Q -pin u_axis_data_fifo_ADC s_axis_aresetn
netloc rev_aresetn_d2 1 3 5 980 480N 1330J 420 NJ 420 NJ 420 4870
load net rev_valid -pin rev_valid_i O -pin u_axis_data_fifo_ADC s_axis_tvalid
netloc rev_valid 1 7 1 4930 280n
load net rev_valid0 -pin rev_valid0_i O -pin rev_valid_i I0
netloc rev_valid0 1 6 1 NJ 270
load net rst_32d768M -pin rev_aresetn_d1_reg CLR -pin rev_aresetn_d2_reg CLR -pin u_Clock_Gen rst_32d768M -pin u_Rx rst_32M768
netloc rst_32d768M 1 1 8 320 590N 650 580N 960 830 NJ 830 NJ 830 2070J 1428 5050J 830 5590J
load net rst_n_32d768M -pin u_Clock_Gen rst_n_32d768M -pin u_Rx rst_n_32M768 -pin u_Tx rst_n_32M768 -pin u_axis_data_fifo_DAC s_axis_aresetn
netloc rst_n_32d768M 1 1 8 360J 810 NJ 810 NJ 810 NJ 810 NJ 810 2090 1368 4950 990 NJ
load net tsm_concat[0] -attr @rip(#000000) m_axis_tdata[0] -pin u_AD9361_1RT_FDD AD9361_TX_DAT_I[0] -pin u_axis_data_fifo_DAC m_axis_tdata[0]
load net tsm_concat[10] -attr @rip(#000000) m_axis_tdata[10] -pin u_AD9361_1RT_FDD AD9361_TX_DAT_I[10] -pin u_axis_data_fifo_DAC m_axis_tdata[10]
load net tsm_concat[11] -attr @rip(#000000) m_axis_tdata[11] -pin u_AD9361_1RT_FDD AD9361_TX_DAT_I[11] -pin u_axis_data_fifo_DAC m_axis_tdata[11]
load net tsm_concat[12] -attr @rip(#000000) m_axis_tdata[12] -pin u_AD9361_1RT_FDD AD9361_TX_DAT_Q[0] -pin u_axis_data_fifo_DAC m_axis_tdata[12]
load net tsm_concat[13] -attr @rip(#000000) m_axis_tdata[13] -pin u_AD9361_1RT_FDD AD9361_TX_DAT_Q[1] -pin u_axis_data_fifo_DAC m_axis_tdata[13]
load net tsm_concat[14] -attr @rip(#000000) m_axis_tdata[14] -pin u_AD9361_1RT_FDD AD9361_TX_DAT_Q[2] -pin u_axis_data_fifo_DAC m_axis_tdata[14]
load net tsm_concat[15] -attr @rip(#000000) m_axis_tdata[15] -pin u_AD9361_1RT_FDD AD9361_TX_DAT_Q[3] -pin u_axis_data_fifo_DAC m_axis_tdata[15]
load net tsm_concat[16] -attr @rip(#000000) m_axis_tdata[16] -pin u_AD9361_1RT_FDD AD9361_TX_DAT_Q[4] -pin u_axis_data_fifo_DAC m_axis_tdata[16]
load net tsm_concat[17] -attr @rip(#000000) m_axis_tdata[17] -pin u_AD9361_1RT_FDD AD9361_TX_DAT_Q[5] -pin u_axis_data_fifo_DAC m_axis_tdata[17]
load net tsm_concat[18] -attr @rip(#000000) m_axis_tdata[18] -pin u_AD9361_1RT_FDD AD9361_TX_DAT_Q[6] -pin u_axis_data_fifo_DAC m_axis_tdata[18]
load net tsm_concat[19] -attr @rip(#000000) m_axis_tdata[19] -pin u_AD9361_1RT_FDD AD9361_TX_DAT_Q[7] -pin u_axis_data_fifo_DAC m_axis_tdata[19]
load net tsm_concat[1] -attr @rip(#000000) m_axis_tdata[1] -pin u_AD9361_1RT_FDD AD9361_TX_DAT_I[1] -pin u_axis_data_fifo_DAC m_axis_tdata[1]
load net tsm_concat[20] -attr @rip(#000000) m_axis_tdata[20] -pin u_AD9361_1RT_FDD AD9361_TX_DAT_Q[8] -pin u_axis_data_fifo_DAC m_axis_tdata[20]
load net tsm_concat[21] -attr @rip(#000000) m_axis_tdata[21] -pin u_AD9361_1RT_FDD AD9361_TX_DAT_Q[9] -pin u_axis_data_fifo_DAC m_axis_tdata[21]
load net tsm_concat[22] -attr @rip(#000000) m_axis_tdata[22] -pin u_AD9361_1RT_FDD AD9361_TX_DAT_Q[10] -pin u_axis_data_fifo_DAC m_axis_tdata[22]
load net tsm_concat[23] -attr @rip(#000000) m_axis_tdata[23] -pin u_AD9361_1RT_FDD AD9361_TX_DAT_Q[11] -pin u_axis_data_fifo_DAC m_axis_tdata[23]
load net tsm_concat[2] -attr @rip(#000000) m_axis_tdata[2] -pin u_AD9361_1RT_FDD AD9361_TX_DAT_I[2] -pin u_axis_data_fifo_DAC m_axis_tdata[2]
load net tsm_concat[3] -attr @rip(#000000) m_axis_tdata[3] -pin u_AD9361_1RT_FDD AD9361_TX_DAT_I[3] -pin u_axis_data_fifo_DAC m_axis_tdata[3]
load net tsm_concat[4] -attr @rip(#000000) m_axis_tdata[4] -pin u_AD9361_1RT_FDD AD9361_TX_DAT_I[4] -pin u_axis_data_fifo_DAC m_axis_tdata[4]
load net tsm_concat[5] -attr @rip(#000000) m_axis_tdata[5] -pin u_AD9361_1RT_FDD AD9361_TX_DAT_I[5] -pin u_axis_data_fifo_DAC m_axis_tdata[5]
load net tsm_concat[6] -attr @rip(#000000) m_axis_tdata[6] -pin u_AD9361_1RT_FDD AD9361_TX_DAT_I[6] -pin u_axis_data_fifo_DAC m_axis_tdata[6]
load net tsm_concat[7] -attr @rip(#000000) m_axis_tdata[7] -pin u_AD9361_1RT_FDD AD9361_TX_DAT_I[7] -pin u_axis_data_fifo_DAC m_axis_tdata[7]
load net tsm_concat[8] -attr @rip(#000000) m_axis_tdata[8] -pin u_AD9361_1RT_FDD AD9361_TX_DAT_I[8] -pin u_axis_data_fifo_DAC m_axis_tdata[8]
load net tsm_concat[9] -attr @rip(#000000) m_axis_tdata[9] -pin u_AD9361_1RT_FDD AD9361_TX_DAT_I[9] -pin u_axis_data_fifo_DAC m_axis_tdata[9]
load net u_Tx|DAC_I[0] -attr @rip DAC_I[0] -attr @name DAC_I[0] -hierPin u_Tx DAC_I[0] -pin u_Tx|u_PSK_Modulation DAC_I[0]
load net u_Tx|DAC_I[10] -attr @rip DAC_I[10] -attr @name DAC_I[10] -hierPin u_Tx DAC_I[10] -pin u_Tx|u_PSK_Modulation DAC_I[10]
load net u_Tx|DAC_I[11] -attr @rip DAC_I[11] -attr @name DAC_I[11] -hierPin u_Tx DAC_I[11] -pin u_Tx|u_PSK_Modulation DAC_I[11]
load net u_Tx|DAC_I[1] -attr @rip DAC_I[1] -attr @name DAC_I[1] -hierPin u_Tx DAC_I[1] -pin u_Tx|u_PSK_Modulation DAC_I[1]
load net u_Tx|DAC_I[2] -attr @rip DAC_I[2] -attr @name DAC_I[2] -hierPin u_Tx DAC_I[2] -pin u_Tx|u_PSK_Modulation DAC_I[2]
load net u_Tx|DAC_I[3] -attr @rip DAC_I[3] -attr @name DAC_I[3] -hierPin u_Tx DAC_I[3] -pin u_Tx|u_PSK_Modulation DAC_I[3]
load net u_Tx|DAC_I[4] -attr @rip DAC_I[4] -attr @name DAC_I[4] -hierPin u_Tx DAC_I[4] -pin u_Tx|u_PSK_Modulation DAC_I[4]
load net u_Tx|DAC_I[5] -attr @rip DAC_I[5] -attr @name DAC_I[5] -hierPin u_Tx DAC_I[5] -pin u_Tx|u_PSK_Modulation DAC_I[5]
load net u_Tx|DAC_I[6] -attr @rip DAC_I[6] -attr @name DAC_I[6] -hierPin u_Tx DAC_I[6] -pin u_Tx|u_PSK_Modulation DAC_I[6]
load net u_Tx|DAC_I[7] -attr @rip DAC_I[7] -attr @name DAC_I[7] -hierPin u_Tx DAC_I[7] -pin u_Tx|u_PSK_Modulation DAC_I[7]
load net u_Tx|DAC_I[8] -attr @rip DAC_I[8] -attr @name DAC_I[8] -hierPin u_Tx DAC_I[8] -pin u_Tx|u_PSK_Modulation DAC_I[8]
load net u_Tx|DAC_I[9] -attr @rip DAC_I[9] -attr @name DAC_I[9] -hierPin u_Tx DAC_I[9] -pin u_Tx|u_PSK_Modulation DAC_I[9]
load net u_Tx|DAC_Q[0] -attr @rip DAC_Q[0] -attr @name DAC_Q[0] -hierPin u_Tx DAC_Q[0] -pin u_Tx|u_PSK_Modulation DAC_Q[0]
load net u_Tx|DAC_Q[10] -attr @rip DAC_Q[10] -attr @name DAC_Q[10] -hierPin u_Tx DAC_Q[10] -pin u_Tx|u_PSK_Modulation DAC_Q[10]
load net u_Tx|DAC_Q[11] -attr @rip DAC_Q[11] -attr @name DAC_Q[11] -hierPin u_Tx DAC_Q[11] -pin u_Tx|u_PSK_Modulation DAC_Q[11]
load net u_Tx|DAC_Q[1] -attr @rip DAC_Q[1] -attr @name DAC_Q[1] -hierPin u_Tx DAC_Q[1] -pin u_Tx|u_PSK_Modulation DAC_Q[1]
load net u_Tx|DAC_Q[2] -attr @rip DAC_Q[2] -attr @name DAC_Q[2] -hierPin u_Tx DAC_Q[2] -pin u_Tx|u_PSK_Modulation DAC_Q[2]
load net u_Tx|DAC_Q[3] -attr @rip DAC_Q[3] -attr @name DAC_Q[3] -hierPin u_Tx DAC_Q[3] -pin u_Tx|u_PSK_Modulation DAC_Q[3]
load net u_Tx|DAC_Q[4] -attr @rip DAC_Q[4] -attr @name DAC_Q[4] -hierPin u_Tx DAC_Q[4] -pin u_Tx|u_PSK_Modulation DAC_Q[4]
load net u_Tx|DAC_Q[5] -attr @rip DAC_Q[5] -attr @name DAC_Q[5] -hierPin u_Tx DAC_Q[5] -pin u_Tx|u_PSK_Modulation DAC_Q[5]
load net u_Tx|DAC_Q[6] -attr @rip DAC_Q[6] -attr @name DAC_Q[6] -hierPin u_Tx DAC_Q[6] -pin u_Tx|u_PSK_Modulation DAC_Q[6]
load net u_Tx|DAC_Q[7] -attr @rip DAC_Q[7] -attr @name DAC_Q[7] -hierPin u_Tx DAC_Q[7] -pin u_Tx|u_PSK_Modulation DAC_Q[7]
load net u_Tx|DAC_Q[8] -attr @rip DAC_Q[8] -attr @name DAC_Q[8] -hierPin u_Tx DAC_Q[8] -pin u_Tx|u_PSK_Modulation DAC_Q[8]
load net u_Tx|DAC_Q[9] -attr @rip DAC_Q[9] -attr @name DAC_Q[9] -hierPin u_Tx DAC_Q[9] -pin u_Tx|u_PSK_Modulation DAC_Q[9]
load net u_Tx|DAC_bits[0] -attr @rip DAC_bits[0] -attr @name DAC_bits[0] -hierPin u_Tx DAC_bits[0] -pin u_Tx|u_PSK_Modulation DAC_bits[0]
load net u_Tx|DAC_bits[1] -attr @rip DAC_bits[1] -attr @name DAC_bits[1] -hierPin u_Tx DAC_bits[1] -pin u_Tx|u_PSK_Modulation DAC_bits[1]
load net u_Tx|DAC_valid -attr @name DAC_valid -hierPin u_Tx DAC_valid -pin u_Tx|u_PSK_Modulation DAC_valid
netloc u_Tx|DAC_valid 1 3 1 N 678
load net u_Tx|DELAY_CNT[0] -attr @rip DELAY_CNT[0] -attr @name DELAY_CNT[0] -hierPin u_Tx DELAY_CNT[0] -pin u_Tx|u_PSK_Modulation DELAY_CNT[0]
load net u_Tx|DELAY_CNT[1] -attr @rip DELAY_CNT[1] -attr @name DELAY_CNT[1] -hierPin u_Tx DELAY_CNT[1] -pin u_Tx|u_PSK_Modulation DELAY_CNT[1]
load net u_Tx|DELAY_CNT[2] -attr @rip DELAY_CNT[2] -attr @name DELAY_CNT[2] -hierPin u_Tx DELAY_CNT[2] -pin u_Tx|u_PSK_Modulation DELAY_CNT[2]
load net u_Tx|DELAY_CNT[3] -attr @rip DELAY_CNT[3] -attr @name DELAY_CNT[3] -hierPin u_Tx DELAY_CNT[3] -pin u_Tx|u_PSK_Modulation DELAY_CNT[3]
load net u_Tx|FIFO_Packetizer_tdata[0] -attr @rip m_axis_tdata[0] -attr @name FIFO_Packetizer_tdata[0] -pin u_Tx|u_Packetizer I_tdata[0] -pin u_Tx|u_axis_data_fifo_0 m_axis_tdata[0]
load net u_Tx|FIFO_Packetizer_tdata[1] -attr @rip m_axis_tdata[1] -attr @name FIFO_Packetizer_tdata[1] -pin u_Tx|u_Packetizer I_tdata[1] -pin u_Tx|u_axis_data_fifo_0 m_axis_tdata[1]
load net u_Tx|FIFO_Packetizer_tdata[2] -attr @rip m_axis_tdata[2] -attr @name FIFO_Packetizer_tdata[2] -pin u_Tx|u_Packetizer I_tdata[2] -pin u_Tx|u_axis_data_fifo_0 m_axis_tdata[2]
load net u_Tx|FIFO_Packetizer_tdata[3] -attr @rip m_axis_tdata[3] -attr @name FIFO_Packetizer_tdata[3] -pin u_Tx|u_Packetizer I_tdata[3] -pin u_Tx|u_axis_data_fifo_0 m_axis_tdata[3]
load net u_Tx|FIFO_Packetizer_tdata[4] -attr @rip m_axis_tdata[4] -attr @name FIFO_Packetizer_tdata[4] -pin u_Tx|u_Packetizer I_tdata[4] -pin u_Tx|u_axis_data_fifo_0 m_axis_tdata[4]
load net u_Tx|FIFO_Packetizer_tdata[5] -attr @rip m_axis_tdata[5] -attr @name FIFO_Packetizer_tdata[5] -pin u_Tx|u_Packetizer I_tdata[5] -pin u_Tx|u_axis_data_fifo_0 m_axis_tdata[5]
load net u_Tx|FIFO_Packetizer_tdata[6] -attr @rip m_axis_tdata[6] -attr @name FIFO_Packetizer_tdata[6] -pin u_Tx|u_Packetizer I_tdata[6] -pin u_Tx|u_axis_data_fifo_0 m_axis_tdata[6]
load net u_Tx|FIFO_Packetizer_tdata[7] -attr @rip m_axis_tdata[7] -attr @name FIFO_Packetizer_tdata[7] -pin u_Tx|u_Packetizer I_tdata[7] -pin u_Tx|u_axis_data_fifo_0 m_axis_tdata[7]
load net u_Tx|FIFO_Packetizer_tlast -attr @name FIFO_Packetizer_tlast -pin u_Tx|u_Packetizer I_tlast -pin u_Tx|u_axis_data_fifo_0 m_axis_tlast
netloc u_Tx|FIFO_Packetizer_tlast 1 1 1 3060 848n
load net u_Tx|FIFO_Packetizer_tready -attr @name FIFO_Packetizer_tready -pin u_Tx|u_Packetizer I_tready -pin u_Tx|u_axis_data_fifo_0 m_axis_tready
netloc u_Tx|FIFO_Packetizer_tready 1 0 3 2670 768 NJ 768 3660
load net u_Tx|FIFO_Packetizer_tuser -attr @name FIFO_Packetizer_tuser -pin u_Tx|u_Packetizer I_tuser -pin u_Tx|u_axis_data_fifo_0 m_axis_tuser
netloc u_Tx|FIFO_Packetizer_tuser 1 1 1 3040 868n
load net u_Tx|FIFO_Packetizer_tvalid -attr @name FIFO_Packetizer_tvalid -pin u_Tx|u_Packetizer I_tvalid -pin u_Tx|u_axis_data_fifo_0 m_axis_tvalid
netloc u_Tx|FIFO_Packetizer_tvalid 1 1 1 3080 888n
load net u_Tx|MODE_CTRL[0] -attr @rip MODE_CTRL[0] -attr @name MODE_CTRL[0] -hierPin u_Tx MODE_CTRL[0] -pin u_Tx|u_Packetizer MODE_CTRL[0] -pin u_Tx|u_Tx_Data MODE_CTRL[0]
load net u_Tx|MODE_CTRL[1] -attr @rip MODE_CTRL[1] -attr @name MODE_CTRL[1] -hierPin u_Tx MODE_CTRL[1] -pin u_Tx|u_Packetizer MODE_CTRL[1] -pin u_Tx|u_Tx_Data MODE_CTRL[1]
load net u_Tx|MODE_CTRL[2] -attr @rip MODE_CTRL[2] -attr @name MODE_CTRL[2] -hierPin u_Tx MODE_CTRL[2] -pin u_Tx|u_Packetizer MODE_CTRL[2] -pin u_Tx|u_Tx_Data MODE_CTRL[2]
load net u_Tx|MODE_CTRL[3] -attr @rip MODE_CTRL[3] -attr @name MODE_CTRL[3] -hierPin u_Tx MODE_CTRL[3] -pin u_Tx|u_Packetizer MODE_CTRL[3] -pin u_Tx|u_Tx_Data MODE_CTRL[3]
load net u_Tx|Packetizer_PSK_tdata[0] -attr @rip O_tdata[0] -attr @name Packetizer_PSK_tdata[0] -pin u_Tx|u_Bits_Flatten I[0] -pin u_Tx|u_PSK_Modulation psk_tdata[0] -pin u_Tx|u_Packetizer O_tdata[0]
load net u_Tx|Packetizer_PSK_tdata[1] -attr @rip O_tdata[1] -attr @name Packetizer_PSK_tdata[1] -pin u_Tx|u_Bits_Flatten I[1] -pin u_Tx|u_PSK_Modulation psk_tdata[1] -pin u_Tx|u_Packetizer O_tdata[1]
load net u_Tx|Packetizer_PSK_tdata[2] -attr @rip O_tdata[2] -attr @name Packetizer_PSK_tdata[2] -pin u_Tx|u_Bits_Flatten I[2] -pin u_Tx|u_PSK_Modulation psk_tdata[2] -pin u_Tx|u_Packetizer O_tdata[2]
load net u_Tx|Packetizer_PSK_tdata[3] -attr @rip O_tdata[3] -attr @name Packetizer_PSK_tdata[3] -pin u_Tx|u_Bits_Flatten I[3] -pin u_Tx|u_PSK_Modulation psk_tdata[3] -pin u_Tx|u_Packetizer O_tdata[3]
load net u_Tx|Packetizer_PSK_tdata[4] -attr @rip O_tdata[4] -attr @name Packetizer_PSK_tdata[4] -pin u_Tx|u_Bits_Flatten I[4] -pin u_Tx|u_PSK_Modulation psk_tdata[4] -pin u_Tx|u_Packetizer O_tdata[4]
load net u_Tx|Packetizer_PSK_tdata[5] -attr @rip O_tdata[5] -attr @name Packetizer_PSK_tdata[5] -pin u_Tx|u_Bits_Flatten I[5] -pin u_Tx|u_PSK_Modulation psk_tdata[5] -pin u_Tx|u_Packetizer O_tdata[5]
load net u_Tx|Packetizer_PSK_tdata[6] -attr @rip O_tdata[6] -attr @name Packetizer_PSK_tdata[6] -pin u_Tx|u_Bits_Flatten I[6] -pin u_Tx|u_PSK_Modulation psk_tdata[6] -pin u_Tx|u_Packetizer O_tdata[6]
load net u_Tx|Packetizer_PSK_tdata[7] -attr @rip O_tdata[7] -attr @name Packetizer_PSK_tdata[7] -pin u_Tx|u_Bits_Flatten I[7] -pin u_Tx|u_PSK_Modulation psk_tdata[7] -pin u_Tx|u_Packetizer O_tdata[7]
load net u_Tx|Packetizer_PSK_tlast -attr @name Packetizer_PSK_tlast -pin u_Tx|u_PSK_Modulation psk_tlast -pin u_Tx|u_Packetizer O_tlast
netloc u_Tx|Packetizer_PSK_tlast 1 2 1 3740 678n
load net u_Tx|Packetizer_PSK_tready -attr @name Packetizer_PSK_tready -pin u_Tx|u_PSK_Modulation psk_tready -pin u_Tx|u_Packetizer O_tready
netloc u_Tx|Packetizer_PSK_tready 1 1 3 3180 728 3780J 778 4560
load net u_Tx|Packetizer_PSK_tuser -attr @name Packetizer_PSK_tuser -pin u_Tx|u_Bits_Flatten bypass -pin u_Tx|u_PSK_Modulation psk_tuser -pin u_Tx|u_Packetizer O_tuser
netloc u_Tx|Packetizer_PSK_tuser 1 2 1 3760 698n
load net u_Tx|Packetizer_PSK_tvalid -attr @name Packetizer_PSK_tvalid -pin u_Tx|u_PSK_Modulation psk_tvalid -pin u_Tx|u_Packetizer O_tvalid
netloc u_Tx|Packetizer_PSK_tvalid 1 2 1 3800 718n
load net u_Tx|TX_PHASE_CONFIG[0] -attr @rip TX_PHASE_CONFIG[0] -attr @name TX_PHASE_CONFIG[0] -hierPin u_Tx TX_PHASE_CONFIG[0] -pin u_Tx|u_PSK_Modulation TX_PHASE_CONFIG[0]
load net u_Tx|TX_PHASE_CONFIG[10] -attr @rip TX_PHASE_CONFIG[10] -attr @name TX_PHASE_CONFIG[10] -hierPin u_Tx TX_PHASE_CONFIG[10] -pin u_Tx|u_PSK_Modulation TX_PHASE_CONFIG[10]
load net u_Tx|TX_PHASE_CONFIG[11] -attr @rip TX_PHASE_CONFIG[11] -attr @name TX_PHASE_CONFIG[11] -hierPin u_Tx TX_PHASE_CONFIG[11] -pin u_Tx|u_PSK_Modulation TX_PHASE_CONFIG[11]
load net u_Tx|TX_PHASE_CONFIG[12] -attr @rip TX_PHASE_CONFIG[12] -attr @name TX_PHASE_CONFIG[12] -hierPin u_Tx TX_PHASE_CONFIG[12] -pin u_Tx|u_PSK_Modulation TX_PHASE_CONFIG[12]
load net u_Tx|TX_PHASE_CONFIG[13] -attr @rip TX_PHASE_CONFIG[13] -attr @name TX_PHASE_CONFIG[13] -hierPin u_Tx TX_PHASE_CONFIG[13] -pin u_Tx|u_PSK_Modulation TX_PHASE_CONFIG[13]
load net u_Tx|TX_PHASE_CONFIG[14] -attr @rip TX_PHASE_CONFIG[14] -attr @name TX_PHASE_CONFIG[14] -hierPin u_Tx TX_PHASE_CONFIG[14] -pin u_Tx|u_PSK_Modulation TX_PHASE_CONFIG[14]
load net u_Tx|TX_PHASE_CONFIG[15] -attr @rip TX_PHASE_CONFIG[15] -attr @name TX_PHASE_CONFIG[15] -hierPin u_Tx TX_PHASE_CONFIG[15] -pin u_Tx|u_PSK_Modulation TX_PHASE_CONFIG[15]
load net u_Tx|TX_PHASE_CONFIG[1] -attr @rip TX_PHASE_CONFIG[1] -attr @name TX_PHASE_CONFIG[1] -hierPin u_Tx TX_PHASE_CONFIG[1] -pin u_Tx|u_PSK_Modulation TX_PHASE_CONFIG[1]
load net u_Tx|TX_PHASE_CONFIG[2] -attr @rip TX_PHASE_CONFIG[2] -attr @name TX_PHASE_CONFIG[2] -hierPin u_Tx TX_PHASE_CONFIG[2] -pin u_Tx|u_PSK_Modulation TX_PHASE_CONFIG[2]
load net u_Tx|TX_PHASE_CONFIG[3] -attr @rip TX_PHASE_CONFIG[3] -attr @name TX_PHASE_CONFIG[3] -hierPin u_Tx TX_PHASE_CONFIG[3] -pin u_Tx|u_PSK_Modulation TX_PHASE_CONFIG[3]
load net u_Tx|TX_PHASE_CONFIG[4] -attr @rip TX_PHASE_CONFIG[4] -attr @name TX_PHASE_CONFIG[4] -hierPin u_Tx TX_PHASE_CONFIG[4] -pin u_Tx|u_PSK_Modulation TX_PHASE_CONFIG[4]
load net u_Tx|TX_PHASE_CONFIG[5] -attr @rip TX_PHASE_CONFIG[5] -attr @name TX_PHASE_CONFIG[5] -hierPin u_Tx TX_PHASE_CONFIG[5] -pin u_Tx|u_PSK_Modulation TX_PHASE_CONFIG[5]
load net u_Tx|TX_PHASE_CONFIG[6] -attr @rip TX_PHASE_CONFIG[6] -attr @name TX_PHASE_CONFIG[6] -hierPin u_Tx TX_PHASE_CONFIG[6] -pin u_Tx|u_PSK_Modulation TX_PHASE_CONFIG[6]
load net u_Tx|TX_PHASE_CONFIG[7] -attr @rip TX_PHASE_CONFIG[7] -attr @name TX_PHASE_CONFIG[7] -hierPin u_Tx TX_PHASE_CONFIG[7] -pin u_Tx|u_PSK_Modulation TX_PHASE_CONFIG[7]
load net u_Tx|TX_PHASE_CONFIG[8] -attr @rip TX_PHASE_CONFIG[8] -attr @name TX_PHASE_CONFIG[8] -hierPin u_Tx TX_PHASE_CONFIG[8] -pin u_Tx|u_PSK_Modulation TX_PHASE_CONFIG[8]
load net u_Tx|TX_PHASE_CONFIG[9] -attr @rip TX_PHASE_CONFIG[9] -attr @name TX_PHASE_CONFIG[9] -hierPin u_Tx TX_PHASE_CONFIG[9] -pin u_Tx|u_PSK_Modulation TX_PHASE_CONFIG[9]
load net u_Tx|Txdata_FIFO_tready -attr @name Txdata_FIFO_tready -pin u_Tx|u_Tx_Data data_tready -pin u_Tx|u_axis_data_fifo_0 s_axis_tready
netloc u_Tx|Txdata_FIFO_tready 1 1 2 N 1108 NJ
load net u_Tx|clk_16M384 -attr @name clk_16M384 -hierPin u_Tx clk_16M384 -pin u_Tx|u_PSK_Modulation clk_16d384M
netloc u_Tx|clk_16M384 1 0 3 NJ 748 NJ 748 3700
load net u_Tx|clk_1M024 -attr @name clk_1M024 -hierPin u_Tx clk_1M024 -pin u_Tx|u_Bits_Flatten ce_1M -pin u_Tx|u_Packetizer clk_enable -pin u_Tx|u_Tx_Data clk_enable
netloc u_Tx|clk_1M024 1 0 3 NJ 688 3100 1068 3780
load net u_Tx|clk_2M048 -attr @name clk_2M048 -hierPin u_Tx clk_2M048 -pin u_Tx|u_Bits_Flatten ce_2M
netloc u_Tx|clk_2M048 1 0 3 NJ 708 NJ 708 3680
load net u_Tx|clk_32M768 -attr @name clk_32M768 -hierPin u_Tx clk_32M768 -pin u_Tx|u_Bits_Flatten clk -pin u_Tx|u_PSK_Modulation clk_32d768M -pin u_Tx|u_Packetizer clk -pin u_Tx|u_Tx_Data clk -pin u_Tx|u_axis_data_fifo_0 s_axis_aclk
netloc u_Tx|clk_32M768 1 0 3 2590 948 3120 1088 3820
load net u_Tx|data_tdata[0] -attr @rip data_tdata[0] -attr @name data_tdata[0] -hierPin u_Tx data_tdata[0] -pin u_Tx|u_Tx_Data data_tdata[0] -pin u_Tx|u_axis_data_fifo_0 s_axis_tdata[0]
load net u_Tx|data_tdata[1] -attr @rip data_tdata[1] -attr @name data_tdata[1] -hierPin u_Tx data_tdata[1] -pin u_Tx|u_Tx_Data data_tdata[1] -pin u_Tx|u_axis_data_fifo_0 s_axis_tdata[1]
load net u_Tx|data_tdata[2] -attr @rip data_tdata[2] -attr @name data_tdata[2] -hierPin u_Tx data_tdata[2] -pin u_Tx|u_Tx_Data data_tdata[2] -pin u_Tx|u_axis_data_fifo_0 s_axis_tdata[2]
load net u_Tx|data_tdata[3] -attr @rip data_tdata[3] -attr @name data_tdata[3] -hierPin u_Tx data_tdata[3] -pin u_Tx|u_Tx_Data data_tdata[3] -pin u_Tx|u_axis_data_fifo_0 s_axis_tdata[3]
load net u_Tx|data_tdata[4] -attr @rip data_tdata[4] -attr @name data_tdata[4] -hierPin u_Tx data_tdata[4] -pin u_Tx|u_Tx_Data data_tdata[4] -pin u_Tx|u_axis_data_fifo_0 s_axis_tdata[4]
load net u_Tx|data_tdata[5] -attr @rip data_tdata[5] -attr @name data_tdata[5] -hierPin u_Tx data_tdata[5] -pin u_Tx|u_Tx_Data data_tdata[5] -pin u_Tx|u_axis_data_fifo_0 s_axis_tdata[5]
load net u_Tx|data_tdata[6] -attr @rip data_tdata[6] -attr @name data_tdata[6] -hierPin u_Tx data_tdata[6] -pin u_Tx|u_Tx_Data data_tdata[6] -pin u_Tx|u_axis_data_fifo_0 s_axis_tdata[6]
load net u_Tx|data_tdata[7] -attr @rip data_tdata[7] -attr @name data_tdata[7] -hierPin u_Tx data_tdata[7] -pin u_Tx|u_Tx_Data data_tdata[7] -pin u_Tx|u_axis_data_fifo_0 s_axis_tdata[7]
load net u_Tx|data_tlast -attr @name data_tlast -hierPin u_Tx data_tlast -pin u_Tx|u_Tx_Data data_tlast -pin u_Tx|u_axis_data_fifo_0 s_axis_tlast
netloc u_Tx|data_tlast 1 0 4 2630 1208 NJ 1208 NJ 1208 4640
load net u_Tx|data_tuser -attr @name data_tuser -hierPin u_Tx data_tuser -pin u_Tx|u_Tx_Data data_tuser -pin u_Tx|u_axis_data_fifo_0 s_axis_tuser
netloc u_Tx|data_tuser 1 0 4 2650 1248 NJ 1248 NJ 1248 4620
load net u_Tx|data_tvalid -attr @name data_tvalid -hierPin u_Tx data_tvalid -pin u_Tx|u_Tx_Data data_tvalid -pin u_Tx|u_axis_data_fifo_0 s_axis_tvalid
netloc u_Tx|data_tvalid 1 0 4 2670 1268 NJ 1268 NJ 1268 4600
load net u_Tx|payload_length[0] -attr @rip payload_length[0] -attr @name payload_length[0] -pin u_Tx|u_Packetizer payload_length[0] -pin u_Tx|u_Tx_Data payload_length[0]
load net u_Tx|payload_length[10] -attr @rip payload_length[10] -attr @name payload_length[10] -pin u_Tx|u_Packetizer payload_length[10] -pin u_Tx|u_Tx_Data payload_length[10]
load net u_Tx|payload_length[11] -attr @rip payload_length[11] -attr @name payload_length[11] -pin u_Tx|u_Packetizer payload_length[11] -pin u_Tx|u_Tx_Data payload_length[11]
load net u_Tx|payload_length[12] -attr @rip payload_length[12] -attr @name payload_length[12] -pin u_Tx|u_Packetizer payload_length[12] -pin u_Tx|u_Tx_Data payload_length[12]
load net u_Tx|payload_length[13] -attr @rip payload_length[13] -attr @name payload_length[13] -pin u_Tx|u_Packetizer payload_length[13] -pin u_Tx|u_Tx_Data payload_length[13]
load net u_Tx|payload_length[14] -attr @rip payload_length[14] -attr @name payload_length[14] -pin u_Tx|u_Packetizer payload_length[14] -pin u_Tx|u_Tx_Data payload_length[14]
load net u_Tx|payload_length[15] -attr @rip payload_length[15] -attr @name payload_length[15] -pin u_Tx|u_Packetizer payload_length[15] -pin u_Tx|u_Tx_Data payload_length[15]
load net u_Tx|payload_length[1] -attr @rip payload_length[1] -attr @name payload_length[1] -pin u_Tx|u_Packetizer payload_length[1] -pin u_Tx|u_Tx_Data payload_length[1]
load net u_Tx|payload_length[2] -attr @rip payload_length[2] -attr @name payload_length[2] -pin u_Tx|u_Packetizer payload_length[2] -pin u_Tx|u_Tx_Data payload_length[2]
load net u_Tx|payload_length[3] -attr @rip payload_length[3] -attr @name payload_length[3] -pin u_Tx|u_Packetizer payload_length[3] -pin u_Tx|u_Tx_Data payload_length[3]
load net u_Tx|payload_length[4] -attr @rip payload_length[4] -attr @name payload_length[4] -pin u_Tx|u_Packetizer payload_length[4] -pin u_Tx|u_Tx_Data payload_length[4]
load net u_Tx|payload_length[5] -attr @rip payload_length[5] -attr @name payload_length[5] -pin u_Tx|u_Packetizer payload_length[5] -pin u_Tx|u_Tx_Data payload_length[5]
load net u_Tx|payload_length[6] -attr @rip payload_length[6] -attr @name payload_length[6] -pin u_Tx|u_Packetizer payload_length[6] -pin u_Tx|u_Tx_Data payload_length[6]
load net u_Tx|payload_length[7] -attr @rip payload_length[7] -attr @name payload_length[7] -pin u_Tx|u_Packetizer payload_length[7] -pin u_Tx|u_Tx_Data payload_length[7]
load net u_Tx|payload_length[8] -attr @rip payload_length[8] -attr @name payload_length[8] -pin u_Tx|u_Packetizer payload_length[8] -pin u_Tx|u_Tx_Data payload_length[8]
load net u_Tx|payload_length[9] -attr @rip payload_length[9] -attr @name payload_length[9] -pin u_Tx|u_Packetizer payload_length[9] -pin u_Tx|u_Tx_Data payload_length[9]
load net u_Tx|pkt_sent -attr @name pkt_sent -pin u_Tx|u_Packetizer pkt_sent -pin u_Tx|u_Tx_Data pkt_sent
netloc u_Tx|pkt_sent 1 2 1 3660 948n
load net u_Tx|pld_vld -attr @name pld_vld -pin u_Tx|u_Bits_Flatten I_vld -pin u_Tx|u_Packetizer pld_vld
netloc u_Tx|pld_vld 1 2 1 3840 858n
load net u_Tx|rst_n_32M768 -attr @name rst_n_32M768 -hierPin u_Tx rst_n_32M768 -pin u_Tx|u_Bits_Flatten rst_n -pin u_Tx|u_PSK_Modulation rst_n_32d768M -pin u_Tx|u_Packetizer rst_n -pin u_Tx|u_Tx_Data rst_n -pin u_Tx|u_axis_data_fifo_0 s_axis_aresetn
netloc u_Tx|rst_n_32M768 1 0 3 2590 1288 3160 1148 3860
load net u_Tx|tx_serial -attr @name tx_serial -hierPin u_Tx tx_serial -pin u_Tx|u_Bits_Flatten O
netloc u_Tx|tx_serial 1 3 1 4680 878n
load net u_Tx|tx_valid -attr @name tx_valid -hierPin u_Tx tx_valid -pin u_Tx|u_Bits_Flatten O_vld
netloc u_Tx|tx_valid 1 3 1 4580 898n
load netBundle @u_Tx|DELAY_CNT 4 u_Tx|DELAY_CNT[3] u_Tx|DELAY_CNT[2] u_Tx|DELAY_CNT[1] u_Tx|DELAY_CNT[0] -autobundled
netbloc @u_Tx|DELAY_CNT 1 0 3 NJ 578 NJ 578 N
load netBundle @u_Tx|MODE_CTRL 4 u_Tx|MODE_CTRL[3] u_Tx|MODE_CTRL[2] u_Tx|MODE_CTRL[1] u_Tx|MODE_CTRL[0] -autobundled
netbloc @u_Tx|MODE_CTRL 1 0 3 NJ 598 3140 1048 N
load netBundle @u_Tx|TX_PHASE_CONFIG 16 u_Tx|TX_PHASE_CONFIG[15] u_Tx|TX_PHASE_CONFIG[14] u_Tx|TX_PHASE_CONFIG[13] u_Tx|TX_PHASE_CONFIG[12] u_Tx|TX_PHASE_CONFIG[11] u_Tx|TX_PHASE_CONFIG[10] u_Tx|TX_PHASE_CONFIG[9] u_Tx|TX_PHASE_CONFIG[8] u_Tx|TX_PHASE_CONFIG[7] u_Tx|TX_PHASE_CONFIG[6] u_Tx|TX_PHASE_CONFIG[5] u_Tx|TX_PHASE_CONFIG[4] u_Tx|TX_PHASE_CONFIG[3] u_Tx|TX_PHASE_CONFIG[2] u_Tx|TX_PHASE_CONFIG[1] u_Tx|TX_PHASE_CONFIG[0] -autobundled
netbloc @u_Tx|TX_PHASE_CONFIG 1 0 3 NJ 618 NJ 618 3680
load netBundle @u_Tx|DAC_I 12 u_Tx|DAC_I[11] u_Tx|DAC_I[10] u_Tx|DAC_I[9] u_Tx|DAC_I[8] u_Tx|DAC_I[7] u_Tx|DAC_I[6] u_Tx|DAC_I[5] u_Tx|DAC_I[4] u_Tx|DAC_I[3] u_Tx|DAC_I[2] u_Tx|DAC_I[1] u_Tx|DAC_I[0] -autobundled
netbloc @u_Tx|DAC_I 1 3 1 N 618
load netBundle @u_Tx|DAC_Q 12 u_Tx|DAC_Q[11] u_Tx|DAC_Q[10] u_Tx|DAC_Q[9] u_Tx|DAC_Q[8] u_Tx|DAC_Q[7] u_Tx|DAC_Q[6] u_Tx|DAC_Q[5] u_Tx|DAC_Q[4] u_Tx|DAC_Q[3] u_Tx|DAC_Q[2] u_Tx|DAC_Q[1] u_Tx|DAC_Q[0] -autobundled
netbloc @u_Tx|DAC_Q 1 3 1 N 638
load netBundle @u_Tx|DAC_bits 2 u_Tx|DAC_bits[1] u_Tx|DAC_bits[0] -autobundled
netbloc @u_Tx|DAC_bits 1 3 1 N 658
load netBundle @u_Tx|Packetizer_PSK_tdata 8 u_Tx|Packetizer_PSK_tdata[7] u_Tx|Packetizer_PSK_tdata[6] u_Tx|Packetizer_PSK_tdata[5] u_Tx|Packetizer_PSK_tdata[4] u_Tx|Packetizer_PSK_tdata[3] u_Tx|Packetizer_PSK_tdata[2] u_Tx|Packetizer_PSK_tdata[1] u_Tx|Packetizer_PSK_tdata[0] -autobundled
netbloc @u_Tx|Packetizer_PSK_tdata 1 2 1 3720 658n
load netBundle @u_Tx|data_tdata 8 u_Tx|data_tdata[7] u_Tx|data_tdata[6] u_Tx|data_tdata[5] u_Tx|data_tdata[4] u_Tx|data_tdata[3] u_Tx|data_tdata[2] u_Tx|data_tdata[1] u_Tx|data_tdata[0] -autobundled
netbloc @u_Tx|data_tdata 1 0 4 2610 1188 NJ 1188 NJ 1188 4660
load netBundle @u_Tx|payload_length 16 u_Tx|payload_length[15] u_Tx|payload_length[14] u_Tx|payload_length[13] u_Tx|payload_length[12] u_Tx|payload_length[11] u_Tx|payload_length[10] u_Tx|payload_length[9] u_Tx|payload_length[8] u_Tx|payload_length[7] u_Tx|payload_length[6] u_Tx|payload_length[5] u_Tx|payload_length[4] u_Tx|payload_length[3] u_Tx|payload_length[2] u_Tx|payload_length[1] u_Tx|payload_length[0] -autobundled
netbloc @u_Tx|payload_length 1 1 3 3180 1228 NJ 1228 4560
load netBundle @u_Tx|FIFO_Packetizer_tdata 8 u_Tx|FIFO_Packetizer_tdata[7] u_Tx|FIFO_Packetizer_tdata[6] u_Tx|FIFO_Packetizer_tdata[5] u_Tx|FIFO_Packetizer_tdata[4] u_Tx|FIFO_Packetizer_tdata[3] u_Tx|FIFO_Packetizer_tdata[2] u_Tx|FIFO_Packetizer_tdata[1] u_Tx|FIFO_Packetizer_tdata[0] -autobundled
netbloc @u_Tx|FIFO_Packetizer_tdata 1 1 1 3020 828n
load netBundle @AD9361_P0_D 12 AD9361_P0_D[11] AD9361_P0_D[10] AD9361_P0_D[9] AD9361_P0_D[8] AD9361_P0_D[7] AD9361_P0_D[6] AD9361_P0_D[5] AD9361_P0_D[4] AD9361_P0_D[3] AD9361_P0_D[2] AD9361_P0_D[1] AD9361_P0_D[0] -autobundled
netbloc @AD9361_P0_D 1 0 9 NJ 170 NJ 170 NJ 170 NJ 170 NJ 170 NJ 170 NJ 170 NJ 170 5610J
load netBundle @AD9361_P1_D 12 AD9361_P1_D[11] AD9361_P1_D[10] AD9361_P1_D[9] AD9361_P1_D[8] AD9361_P1_D[7] AD9361_P1_D[6] AD9361_P1_D[5] AD9361_P1_D[4] AD9361_P1_D[3] AD9361_P1_D[2] AD9361_P1_D[1] AD9361_P1_D[0] -autobundled
netbloc @AD9361_P1_D 1 9 1 NJ 310
load netBundle @decimate_cnt0 4 decimate_cnt0[3] decimate_cnt0[2] decimate_cnt0[1] decimate_cnt0[0] -autobundled
netbloc @decimate_cnt0 1 3 1 NJ 70
load netBundle @decimate_cnt0_out 4 decimate_cnt0_out[3] decimate_cnt0_out[2] decimate_cnt0_out[1] decimate_cnt0_out[0] -autobundled
netbloc @decimate_cnt0_out 1 4 1 1290 60n
load netBundle @rev_I 12 rev_I[11] rev_I[10] rev_I[9] rev_I[8] rev_I[7] rev_I[6] rev_I[5] rev_I[4] rev_I[3] rev_I[2] rev_I[1] rev_I[0] -autobundled
netbloc @rev_I 1 7 3 5090 450 NJ 450 6370
load netBundle @rev_Q 12 rev_Q[11] rev_Q[10] rev_Q[9] rev_Q[8] rev_Q[7] rev_Q[6] rev_Q[5] rev_Q[4] rev_Q[3] rev_Q[2] rev_Q[1] rev_Q[0] -autobundled
netbloc @rev_Q 1 7 3 4970 210 NJ 210 6390
load netBundle @DELAY_CNT 4 DELAY_CNT[3] DELAY_CNT[2] DELAY_CNT[1] DELAY_CNT[0] -autobundled
netbloc @DELAY_CNT 1 6 1 2230 500n
load netBundle @MODE_CTRL 4 MODE_CTRL[3] MODE_CTRL[2] MODE_CTRL[1] MODE_CTRL[0] -autobundled
netbloc @MODE_CTRL 1 6 3 2210 1328 4990J 730 5670
load netBundle @FEEDBACK_SHIFT 4 FEEDBACK_SHIFT[3] FEEDBACK_SHIFT[2] FEEDBACK_SHIFT[1] FEEDBACK_SHIFT[0] -autobundled
netbloc @FEEDBACK_SHIFT 1 8 1 5690 770n
load netBundle @GARDNER_SHIFT 4 GARDNER_SHIFT[3] GARDNER_SHIFT[2] GARDNER_SHIFT[1] GARDNER_SHIFT[0] -autobundled
netbloc @GARDNER_SHIFT 1 8 1 5710 790n
load netBundle @RX_SD_THRESHOLD 16 RX_SD_THRESHOLD[15] RX_SD_THRESHOLD[14] RX_SD_THRESHOLD[13] RX_SD_THRESHOLD[12] RX_SD_THRESHOLD[11] RX_SD_THRESHOLD[10] RX_SD_THRESHOLD[9] RX_SD_THRESHOLD[8] RX_SD_THRESHOLD[7] RX_SD_THRESHOLD[6] RX_SD_THRESHOLD[5] RX_SD_THRESHOLD[4] RX_SD_THRESHOLD[3] RX_SD_THRESHOLD[2] RX_SD_THRESHOLD[1] RX_SD_THRESHOLD[0] -autobundled
netbloc @RX_SD_THRESHOLD 1 8 1 5730 870n
load netBundle @RX_SD_WINDOW 8 RX_SD_WINDOW[7] RX_SD_WINDOW[6] RX_SD_WINDOW[5] RX_SD_WINDOW[4] RX_SD_WINDOW[3] RX_SD_WINDOW[2] RX_SD_WINDOW[1] RX_SD_WINDOW[0] -autobundled
netbloc @RX_SD_WINDOW 1 8 1 5790 890n
load netBundle @RX_PD_WINDOW 8 RX_PD_WINDOW[7] RX_PD_WINDOW[6] RX_PD_WINDOW[5] RX_PD_WINDOW[4] RX_PD_WINDOW[3] RX_PD_WINDOW[2] RX_PD_WINDOW[1] RX_PD_WINDOW[0] -autobundled
netbloc @RX_PD_WINDOW 1 8 1 5770 850n
load netBundle @RX_BD_WINDOW 8 RX_BD_WINDOW[7] RX_BD_WINDOW[6] RX_BD_WINDOW[5] RX_BD_WINDOW[4] RX_BD_WINDOW[3] RX_BD_WINDOW[2] RX_BD_WINDOW[1] RX_BD_WINDOW[0] -autobundled
netbloc @RX_BD_WINDOW 1 8 1 5750 830n
load netBundle @TX_PHASE_CONFIG 16 TX_PHASE_CONFIG[15] TX_PHASE_CONFIG[14] TX_PHASE_CONFIG[13] TX_PHASE_CONFIG[12] TX_PHASE_CONFIG[11] TX_PHASE_CONFIG[10] TX_PHASE_CONFIG[9] TX_PHASE_CONFIG[8] TX_PHASE_CONFIG[7] TX_PHASE_CONFIG[6] TX_PHASE_CONFIG[5] TX_PHASE_CONFIG[4] TX_PHASE_CONFIG[3] TX_PHASE_CONFIG[2] TX_PHASE_CONFIG[1] TX_PHASE_CONFIG[0] -autobundled
netbloc @TX_PHASE_CONFIG 1 6 1 2150 618n
load netBundle @DAC_I 12 DAC_I[11] DAC_I[10] DAC_I[9] DAC_I[8] DAC_I[7] DAC_I[6] DAC_I[5] DAC_I[4] DAC_I[3] DAC_I[2] DAC_I[1] DAC_I[0] -autobundled
netbloc @DAC_I 1 7 1 4870 610n
load netBundle @DAC_Q 12 DAC_Q[11] DAC_Q[10] DAC_Q[9] DAC_Q[8] DAC_Q[7] DAC_Q[6] DAC_Q[5] DAC_Q[4] DAC_Q[3] DAC_Q[2] DAC_Q[1] DAC_Q[0] -autobundled
netbloc @DAC_Q 1 7 1 4890 610n
load netBundle @ADC_concat 24 ADC_concat[23] ADC_concat[22] ADC_concat[21] ADC_concat[20] ADC_concat[19] ADC_concat[18] ADC_concat[17] ADC_concat[16] ADC_concat[15] ADC_concat[14] ADC_concat[13] ADC_concat[12] ADC_concat[11] ADC_concat[10] ADC_concat[9] ADC_concat[8] ADC_concat[7] ADC_concat[6] ADC_concat[5] ADC_concat[4] ADC_concat[3] ADC_concat[2] ADC_concat[1] ADC_concat[0] -autobundled
netbloc @ADC_concat 1 8 1 5710 350n
load netBundle @tsm_concat 24 tsm_concat[23] tsm_concat[22] tsm_concat[21] tsm_concat[20] tsm_concat[19] tsm_concat[18] tsm_concat[17] tsm_concat[16] tsm_concat[15] tsm_concat[14] tsm_concat[13] tsm_concat[12] tsm_concat[11] tsm_concat[10] tsm_concat[9] tsm_concat[8] tsm_concat[7] tsm_concat[6] tsm_concat[5] tsm_concat[4] tsm_concat[3] tsm_concat[2] tsm_concat[1] tsm_concat[0] -autobundled
netbloc @tsm_concat 1 8 1 5590 370n
load netBundle @decimate_cnt 4 decimate_cnt[3] decimate_cnt[2] decimate_cnt[1] decimate_cnt[0] -autobundled
netbloc @decimate_cnt 1 2 4 670 120 NJ 120N N 120 1620
levelinfo -pg 1 0 130 440 750 1140 1390 1720 2560 5240 6120 6430
levelinfo -hier u_Tx * 2810 3490 4190 *
pagesize -pg 1 -db -bbox -sgen -200 0 6630 1560
pagesize -hier u_Tx -db -bbox -sgen 2560 518 4710 1298
show
zoom 0.428499
scrollpos 557 135
#
# initialize ictrl to current module top work:top:NOFILE
ictrl init topinfo |
