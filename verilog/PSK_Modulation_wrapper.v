module PSK_Modulation (
    input [7:0] psk_tdata,
    input psk_tlast,
    input psk_tready,
    input psk_tuser,
    input psk_tvalid,
    input clk_16d384M,
    input rst_16d384M,
    input clk_1d024M,
    input rst_n_1d024M,
    input [3:0] DELAY_CNT,
    input [15:0] TX_PHASE_CONFIG,
    output [11:0] DAC_I,
    output [11:0] DAC_Q,
    output DAC_valid,
    output [1:0] DAC_bits
);

endmodule 