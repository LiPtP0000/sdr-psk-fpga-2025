// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.2 (lin64) Build 5239630 Fri Nov 08 22:34:34 MST 2024
// Date        : Sat Dec 20 18:03:32 2025
// Host        : LiPtPDesktop running 64-bit Ubuntu 24.04.2 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/liptp/courses_2025/general_ex_6/sdr-psk-fpga-2025/ip/Costas/err_detect_BPSK/err_detect_BPSK_sim_netlist.v
// Design      : err_detect_BPSK
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "err_detect_BPSK,mult_gen_v12_0_22,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "mult_gen_v12_0_22,Vivado 2024.2" *) 
(* NotValidForBitStream *)
module err_detect_BPSK
   (CLK,
    A,
    B,
    CE,
    P);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* x_interface_mode = "slave clk_intf" *) (* x_interface_parameter = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF p_intf:b_intf:a_intf, ASSOCIATED_RESET sclr, ASSOCIATED_CLKEN ce, FREQ_HZ 10000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:data:1.0 a_intf DATA" *) (* x_interface_mode = "slave a_intf" *) (* x_interface_parameter = "XIL_INTERFACENAME a_intf, LAYERED_METADATA undef" *) input [15:0]A;
  (* x_interface_info = "xilinx.com:signal:data:1.0 b_intf DATA" *) (* x_interface_mode = "slave b_intf" *) (* x_interface_parameter = "XIL_INTERFACENAME b_intf, LAYERED_METADATA undef" *) input [15:0]B;
  (* x_interface_info = "xilinx.com:signal:clockenable:1.0 ce_intf CE" *) (* x_interface_mode = "slave ce_intf" *) (* x_interface_parameter = "XIL_INTERFACENAME ce_intf, POLARITY ACTIVE_HIGH" *) input CE;
  (* x_interface_info = "xilinx.com:signal:data:1.0 p_intf DATA" *) (* x_interface_mode = "master p_intf" *) (* x_interface_parameter = "XIL_INTERFACENAME p_intf, LAYERED_METADATA undef" *) output [15:0]P;

  wire [15:0]A;
  wire [15:0]B;
  wire CE;
  wire CLK;
  wire [15:0]P;
  wire [47:0]NLW_U0_PCASC_UNCONNECTED;
  wire [47:0]NLW_U0_PCASC_EXT_UNCONNECTED;
  wire [1:0]NLW_U0_ZERO_DETECT_UNCONNECTED;

  (* C_A_TYPE = "0" *) 
  (* C_A_WIDTH = "16" *) 
  (* C_B_TYPE = "0" *) 
  (* C_B_VALUE = "10000001" *) 
  (* C_B_WIDTH = "16" *) 
  (* C_CCM_IMP = "0" *) 
  (* C_CE_OVERRIDES_SCLR = "0" *) 
  (* C_HAS_CE = "1" *) 
  (* C_HAS_SCLR = "0" *) 
  (* C_HAS_ZERO_DETECT = "0" *) 
  (* C_LATENCY = "2" *) 
  (* C_MODEL_TYPE = "0" *) 
  (* C_MULT_TYPE = "1" *) 
  (* C_OPTIMIZE_GOAL = "1" *) 
  (* C_OUT_HIGH = "31" *) 
  (* C_OUT_LOW = "16" *) 
  (* C_ROUND_OUTPUT = "0" *) 
  (* C_ROUND_PT = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "zynq" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  err_detect_BPSK_mult_gen_v12_0_22 U0
       (.A(A),
        .B(B),
        .CE(CE),
        .CLK(CLK),
        .P(P),
        .PCASC(NLW_U0_PCASC_UNCONNECTED[47:0]),
        .PCASC_EXT(NLW_U0_PCASC_EXT_UNCONNECTED[47:0]),
        .SCLR(1'b0),
        .ZERO_DETECT(NLW_U0_ZERO_DETECT_UNCONNECTED[1:0]));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2024.2"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
sDj9kl3EWw2hBIWMdrQEHWoDUkkkjl5SDK8LyF1D7T6FD5kEH34F0YTnGuwo0RU4bcskDhO9JeH1
bIuPyvB3SpQkIxbIWJo3rH/dXKkmYACCnCw4wz6JX9F9ZKK+yPCuoVN6Z3wDkqWc7bU7uUQHUOHv
nqlWULaO+0JDdlmWw8g=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
rbdI4v6AcOgKhl1So2ZU8yt/N+VGSqoQtMk5T305K2MFcb1u563HN1DrJ0IieQoW0qZbt1HOLSBL
7xcPm1LtM55H+QR3KL15u+Tnwk/UCP8qxoSY2oCyFdNyar5IjHtkbnkt0/UG8QI9IFhMTmPFCpzI
W37skpgWpmTDfIeeSZitQ5m2S7mtH578R33HjsXlsd+BCcc0KKOG9pHcAAvv5EKwikiMdpcchFcx
09tTf+nsY0jzC/Z70btCXVKBugPfMGfRJWvtsQVgoJKnnwMfcRl0nJsq3kzGkPvu4V5d6muxFAOu
iES/yyTVIFLfbYT3TZwcxMdHxfycIt1AIdMm2g==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
ZrZN5OQHXzZ4TXMTYRRKX3ciJ97vJF2WE78NM3SWBJu8arwEZ77LavA1ok75gyTAIzvB82uPmv8s
eyd6NvnfyXr77Zajva41IwBQ8tDPr8Vb/nPLGxh7BbpQvLv6mErqWWpcRpqBeE8aON+YN2zcEgGP
VRRzgASy426M02fa6LA=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
s56W6QNQ2+LT+WbHKrZmYhaQfQP2Hh5NpkRTjB5k8wpbHSSznMUl0Wfj+c2M8V2xfsX+3uTjN2wX
5doxdzY21zH3fF471BiRjJqlVCBwKEdvt88qqzHbPDaqVgcRawV6M5VchDPS+z229WFwkSz9ap/N
3GBRjH4h7X/60K6mABgv/xCcl37HQqoac7u4AArIx1LAziai9xFkpCWBfnsZXa5TK/3nkQgyrpoP
WcFM+BhLsvRsK2WkFyqyI3LRPn3CE9r2pzMytJaHS2aq2YfzAsxYDHV8BbaX/r5Xa2RabbVlCKpI
V1dx7nWdhVhyg+2gMlANIeb6TCZhbwIN7QktGA==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
P+w2Uyg9fAd9uaiQTsdw0/vhb9w11Es0yam6UVLuVY4AQ4xhFkep5zMPsXjKq2fRR7i8yp5k+E2n
AtExg+z4ofi/mVedHwGLHqUk0sqGAxc09djAh6WTokQqBPCp7JeTYgHj7iGSzA+qjK2Rocvn+SxI
OLQTM/xe9GYaY3+WSEDVrpawBrMrKiMU0Ifzihh6oja1MWib5WqW6/d1DXFY7nZFcwr8fPV+FX2n
y6ocJz6ZzxFr8LW+/P6HDwvI/yJo0OATNRSkEsI4FuP6Yu3YeC9Ju1UBjFg845tLdHoqOJMT5YeI
IYQxdalv3/LbjI5CIwX5bLeU2Hxi8Koyd/S8BA==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2023_11", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
WZyAq5EFFXN4VhAygUi5Pm/LTi7UEgrt4og1QkEAIuyY91Eiye+RCwy3o+oCX1sQeLRhArnYr2bq
Z1sGmg+sdobAxhh6Ud13kmSMWxu8gq22Nq15drWxoA2Xin/B2ZTlKQqhWtlD+Bytr+6ltr/ThsyP
d/gNwSPIv1Ky22pMa4HcklADZZlSK+8sFRckSLKpnwNRON0uDiq8OF8WoE1GIECpylgSO5sSrlZa
dKRoEEqT2hLDY8FV9aO4/EbKwvaTWGS8PI5ExjH92zjs50izXUm4CUWpHVZwFLqinR1epbSXQI7O
JvFqqzCJ3I4s6eJh7EmmQSIGlb4+S0DHabHz8w==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
BudHvAUQqcRSC8njGx+qSAYakH+T5KXLJCCm8C0ZGsXosa3yAGFT4tYDvnmk/lPn0/lmoseiIlSg
VZiRXKFKPuQ0/RXPHtx/mRPm74QTrWBYoG/85M/Z+FTr4Sx0VxpOxuzEStooECaLSxGCdtgiSKg9
MgtPgurbvW+9dOoZ5yqWr667czVSZ+YBTJtqZlezyI4KPnD7GKINgz0xRVJaposuVeKGEQBTZgTx
PiRJWGQdaov9olsvie3s4VFIIUtzf2S8X4LP0HtX+n3jU9jJfYLePj+oz/olffRBNg0D9xBr5akV
RAIAthPPIRzVuRevWKxHoBnNa4hovMRVRd7Reg==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
eGdUlDqP3dCbugGoi4jHs59JA09U4Bha56+iJlfYrUzjpyZIjXuEgzR0ebAhWk2/R/dfFgOphBh1
rB1/GhQLTpQwbuJTBXjejQQ5Eo7/TNq6/sQll4oAAGbCxy0S6dYePo0evJKHEd34AwDr0AzmYfwb
v7kyoake83PVliRHVbA4ZgcaV6NAcPA/BoVnkKW4FqsRNYvrPQjMM5Qd7QyTm+4iXH44VWzvYAfa
zcPxBOrbSTg1yTsW+lTxAvW7d81kpajkgSWim3VCIlZpNaaWQPTcTrWU/YV9oeahwEEGVqEiaLr2
9TXDZ2TQNiZhrd5KHsoCZhWEIGfK2D50sLc6hXmpxwwgbjHLEvgLgKyLEe1jn0LlaVwn2n9Nz22R
dje9GtSiJ16hpPVDY3DoFfzfqH3sctYIw5ZdPtvnYEPhLjssSncznB0c4rcwCuWzXeEamT7vZ434
e7LbwkU3sypQG+D2/GYQatqRNnPlo9McHD3iFV7NXIuKznuV4ZhwzHSe

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
OsFlphw2++UhaxOxJcVzQ4avzGMdpptevxemJlWm3X/wLMNZLLRk5BoxRx9xXXsqdWUscniRNMrn
M/MZ5WaC6uxxaRyPXpo4MGffUFSJ1K6/cQ9h5QhP3IObE+WUkWhtpSu5+Wsv907vdiJU/b2XqtvT
NAjU/6k9FylcS2i3+TzD07jwVLbGLJFEo5XGxIG25owtCzJ9ShRbu1gAvly5ISn2QVOyFCaJ/jx+
ah8L4XSjS3i+TjYSxKiisKux6XIv/jbUhTJiVek9TfZz9xgVYsjX18DUI5CNCFHZ9sXFJB1KAvy8
wDNEFWR+JkjTNXuuxfqto128tIti9d2J5jRI6w==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
OLdxY4ySqFUYNMjqEdMK86NEdHB2eteUnWGVFMg/NwXIJdho4el+12s84CDUTAWBWDJzSEah+NkB
VquLI/xoG/qOYTiNkw3DrXl3p0reOgtohfwEa20Mvlto/YwNLWQWSZ3AeAD1TN+qthMlDA5QWIYK
IVHkvcLXmGs5D+i0N7iwGAp1DXSw5D7BsXf36wTOJP0uoQvaVCNBRRizqYUg8SuksUISX7EeFI8P
d0Y3gMlJcgQcR2X5AOpykC0wuj2ZNof1prkIddoAcfwGbDNKNjLCvzbyxpDb1ysWTUPTuTJuBUum
A+X3EdbhR6dNwzzvVQpW5OGZZZrVwxI58h+Jig==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
H2PpqmeUr5R9ynsDkvl5shSPXj+QrvDWY/Cv6ceapckBufOOE8Opq6BWNcnfvQTx5VP6hsiWQj0T
kO9rMh1rPnwp4ur9P66sDDt7l0wt/TmD86kEYVzHpMphledbN7RBhShmosHrjMSgdaIJ+EcoNgEw
CMYlnrKajUDjv94G8Su88FIadzy3baapyNE6OWa29jZRUNDQavWY8SFTDQiV1kFqZhSYUlk1mcYT
eG1Izf486Zho/sEsCP/LmMTf50PQYDwBt3L5782Y4AsuLvLpF/tM5uFJdSSOixHldb1L/0DQXlZe
qTL0yCI1rcxPjMYyGyvr0Yz8iXl/PwtME6Rk7A==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 5744)
`pragma protect data_block
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
`pragma protect end_protected
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2024.2"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
sDj9kl3EWw2hBIWMdrQEHWoDUkkkjl5SDK8LyF1D7T6FD5kEH34F0YTnGuwo0RU4bcskDhO9JeH1
bIuPyvB3SpQkIxbIWJo3rH/dXKkmYACCnCw4wz6JX9F9ZKK+yPCuoVN6Z3wDkqWc7bU7uUQHUOHv
nqlWULaO+0JDdlmWw8g=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
rbdI4v6AcOgKhl1So2ZU8yt/N+VGSqoQtMk5T305K2MFcb1u563HN1DrJ0IieQoW0qZbt1HOLSBL
7xcPm1LtM55H+QR3KL15u+Tnwk/UCP8qxoSY2oCyFdNyar5IjHtkbnkt0/UG8QI9IFhMTmPFCpzI
W37skpgWpmTDfIeeSZitQ5m2S7mtH578R33HjsXlsd+BCcc0KKOG9pHcAAvv5EKwikiMdpcchFcx
09tTf+nsY0jzC/Z70btCXVKBugPfMGfRJWvtsQVgoJKnnwMfcRl0nJsq3kzGkPvu4V5d6muxFAOu
iES/yyTVIFLfbYT3TZwcxMdHxfycIt1AIdMm2g==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
ZrZN5OQHXzZ4TXMTYRRKX3ciJ97vJF2WE78NM3SWBJu8arwEZ77LavA1ok75gyTAIzvB82uPmv8s
eyd6NvnfyXr77Zajva41IwBQ8tDPr8Vb/nPLGxh7BbpQvLv6mErqWWpcRpqBeE8aON+YN2zcEgGP
VRRzgASy426M02fa6LA=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
s56W6QNQ2+LT+WbHKrZmYhaQfQP2Hh5NpkRTjB5k8wpbHSSznMUl0Wfj+c2M8V2xfsX+3uTjN2wX
5doxdzY21zH3fF471BiRjJqlVCBwKEdvt88qqzHbPDaqVgcRawV6M5VchDPS+z229WFwkSz9ap/N
3GBRjH4h7X/60K6mABgv/xCcl37HQqoac7u4AArIx1LAziai9xFkpCWBfnsZXa5TK/3nkQgyrpoP
WcFM+BhLsvRsK2WkFyqyI3LRPn3CE9r2pzMytJaHS2aq2YfzAsxYDHV8BbaX/r5Xa2RabbVlCKpI
V1dx7nWdhVhyg+2gMlANIeb6TCZhbwIN7QktGA==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
P+w2Uyg9fAd9uaiQTsdw0/vhb9w11Es0yam6UVLuVY4AQ4xhFkep5zMPsXjKq2fRR7i8yp5k+E2n
AtExg+z4ofi/mVedHwGLHqUk0sqGAxc09djAh6WTokQqBPCp7JeTYgHj7iGSzA+qjK2Rocvn+SxI
OLQTM/xe9GYaY3+WSEDVrpawBrMrKiMU0Ifzihh6oja1MWib5WqW6/d1DXFY7nZFcwr8fPV+FX2n
y6ocJz6ZzxFr8LW+/P6HDwvI/yJo0OATNRSkEsI4FuP6Yu3YeC9Ju1UBjFg845tLdHoqOJMT5YeI
IYQxdalv3/LbjI5CIwX5bLeU2Hxi8Koyd/S8BA==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2023_11", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
WZyAq5EFFXN4VhAygUi5Pm/LTi7UEgrt4og1QkEAIuyY91Eiye+RCwy3o+oCX1sQeLRhArnYr2bq
Z1sGmg+sdobAxhh6Ud13kmSMWxu8gq22Nq15drWxoA2Xin/B2ZTlKQqhWtlD+Bytr+6ltr/ThsyP
d/gNwSPIv1Ky22pMa4HcklADZZlSK+8sFRckSLKpnwNRON0uDiq8OF8WoE1GIECpylgSO5sSrlZa
dKRoEEqT2hLDY8FV9aO4/EbKwvaTWGS8PI5ExjH92zjs50izXUm4CUWpHVZwFLqinR1epbSXQI7O
JvFqqzCJ3I4s6eJh7EmmQSIGlb4+S0DHabHz8w==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
BudHvAUQqcRSC8njGx+qSAYakH+T5KXLJCCm8C0ZGsXosa3yAGFT4tYDvnmk/lPn0/lmoseiIlSg
VZiRXKFKPuQ0/RXPHtx/mRPm74QTrWBYoG/85M/Z+FTr4Sx0VxpOxuzEStooECaLSxGCdtgiSKg9
MgtPgurbvW+9dOoZ5yqWr667czVSZ+YBTJtqZlezyI4KPnD7GKINgz0xRVJaposuVeKGEQBTZgTx
PiRJWGQdaov9olsvie3s4VFIIUtzf2S8X4LP0HtX+n3jU9jJfYLePj+oz/olffRBNg0D9xBr5akV
RAIAthPPIRzVuRevWKxHoBnNa4hovMRVRd7Reg==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
eGdUlDqP3dCbugGoi4jHs59JA09U4Bha56+iJlfYrUzjpyZIjXuEgzR0ebAhWk2/R/dfFgOphBh1
rB1/GhQLTpQwbuJTBXjejQQ5Eo7/TNq6/sQll4oAAGbCxy0S6dYePo0evJKHEd34AwDr0AzmYfwb
v7kyoake83PVliRHVbA4ZgcaV6NAcPA/BoVnkKW4FqsRNYvrPQjMM5Qd7QyTm+4iXH44VWzvYAfa
zcPxBOrbSTg1yTsW+lTxAvW7d81kpajkgSWim3VCIlZpNaaWQPTcTrWU/YV9oeahwEEGVqEiaLr2
9TXDZ2TQNiZhrd5KHsoCZhWEIGfK2D50sLc6hXmpxwwgbjHLEvgLgKyLEe1jn0LlaVwn2n9Nz22R
dje9GtSiJ16hpPVDY3DoFfzfqH3sctYIw5ZdPtvnYEPhLjssSncznB0c4rcwCuWzXeEamT7vZ434
e7LbwkU3sypQG+D2/GYQatqRNnPlo9McHD3iFV7NXIuKznuV4ZhwzHSe

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
OsFlphw2++UhaxOxJcVzQ4avzGMdpptevxemJlWm3X/wLMNZLLRk5BoxRx9xXXsqdWUscniRNMrn
M/MZ5WaC6uxxaRyPXpo4MGffUFSJ1K6/cQ9h5QhP3IObE+WUkWhtpSu5+Wsv907vdiJU/b2XqtvT
NAjU/6k9FylcS2i3+TzD07jwVLbGLJFEo5XGxIG25owtCzJ9ShRbu1gAvly5ISn2QVOyFCaJ/jx+
ah8L4XSjS3i+TjYSxKiisKux6XIv/jbUhTJiVek9TfZz9xgVYsjX18DUI5CNCFHZ9sXFJB1KAvy8
wDNEFWR+JkjTNXuuxfqto128tIti9d2J5jRI6w==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
OLdxY4ySqFUYNMjqEdMK86NEdHB2eteUnWGVFMg/NwXIJdho4el+12s84CDUTAWBWDJzSEah+NkB
VquLI/xoG/qOYTiNkw3DrXl3p0reOgtohfwEa20Mvlto/YwNLWQWSZ3AeAD1TN+qthMlDA5QWIYK
IVHkvcLXmGs5D+i0N7iwGAp1DXSw5D7BsXf36wTOJP0uoQvaVCNBRRizqYUg8SuksUISX7EeFI8P
d0Y3gMlJcgQcR2X5AOpykC0wuj2ZNof1prkIddoAcfwGbDNKNjLCvzbyxpDb1ysWTUPTuTJuBUum
A+X3EdbhR6dNwzzvVQpW5OGZZZrVwxI58h+Jig==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
H2PpqmeUr5R9ynsDkvl5shSPXj+QrvDWY/Cv6ceapckBufOOE8Opq6BWNcnfvQTx5VP6hsiWQj0T
kO9rMh1rPnwp4ur9P66sDDt7l0wt/TmD86kEYVzHpMphledbN7RBhShmosHrjMSgdaIJ+EcoNgEw
CMYlnrKajUDjv94G8Su88FIadzy3baapyNE6OWa29jZRUNDQavWY8SFTDQiV1kFqZhSYUlk1mcYT
eG1Izf486Zho/sEsCP/LmMTf50PQYDwBt3L5782Y4AsuLvLpF/tM5uFJdSSOixHldb1L/0DQXlZe
qTL0yCI1rcxPjMYyGyvr0Yz8iXl/PwtME6Rk7A==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 10512)
`pragma protect data_block
fASbhx2o0IYMIZSCpMzVd/ifmaO/ksH61vuGDRzIcmPIRWF7BDw2WNP2vfhoFUS9BtoI8AnrA90y
v1BLsmcsOZte5/ZDhNraSRBi5/DL4ZIUnuVVnx2JJ9YfDj+n4mqWThyFuTmr6qclTUEuZCUR2HWa
Z8wNjvsLynJ37QmDfOw7uItQ1ZifaNbyH+oUZyJPrRzwxHhTxGbEnvnCr6LYS97Bsqk60RswQQfV
6ZSNTC6p89Uzcm4PUQxFRjTC3tIOUIGwPH9DV5s9husXrnQxEWBQDgGHAskm/j60ceRVmI6CFKFu
jd3tcX1x5XC3VCt8CWDlICaiAsiznQvxmCnAW/KL0PdMi9UEws4tsWf0MOtu75kzkF0dLALGHMD7
Gw+D+JEW81d9hA9uJ225j4x8+6GGKuIx1925hU2P0zKatV5FR/BaiKB4kq7w6qmkzqUe0/nTV5oe
1dq8BsO/9V6sXDkwc+61NkfNV9I3sGUAYad5corBJG6b1ZV6ExHDdRPSqzEr8ob1RGLsDIxqvv/Z
MWHyrlVO4qVXlnshuG1CJlCslqZUGAiGUwDFzQdhjqBpd9X6G5tasxAluEml5VB0gXRGTAAqq57B
0MfwpTbQdxpkKRoKPQ0+Rh5ULBMC/4GTDMeTMVwtaoUbOz2X6gYesHeWOROPcIoapZNQ+1so4T5k
XfZ8PsN8E4jEP8/M8zYij4+Og74v8SUrQxCzsez/dFcKkJZ2lI4QZrYLr70eJJXEl4z1liq12+Bq
rhwtCpYLUN3qCk05cSiqn7PgfFycNO7EFMy6qpLBhfvf2YGOnc3RRKdlJr5CNmwkLdbJ2b3Tx4aA
CsWI1esUi+4h1pDvQu0+iW2mfuH4cSzl7mjGPJYZ/vlVYzm3rRD7LEtoJLwBvFQhj+vSnbMW3BG9
Zp12uRz7YqcQ5TYlMZSEIf4oullCPkA7TuyUEUf241BBD1Ygm2BpmpoOhm7//L4V0HJhv6kOG/oR
4Va+vqrZUnRXi1x9xjJ3XO/wNve4Ym4xCPPnPZxpJQWRG4PhdEiYuEWmF4anP3uNcrjbl4/6lk14
9EeuadRTQR5zGw+oD1RjZ+CAxvu0G1VFHnD1EgvkGudHDKYO1f92hpRj9coFgv2WlFbW44AHME7v
bxqk/x5Zwt5H6IY1JLxM9B1zC+Fyug+A614iZRlltaL+651j65DI+C0Gsb4IBLaJGfvbM7CbLUjD
5YOtNCmu0b1b6hyYiAC+6X10ubTdXtoLVGA97q6jk38RYGuAdw7WJNEqXGcw9kvUDlgZAve6j6hW
Bn2jBKLOrUFcWDxzUDBQm2yCITdVzQY9tSzDH1NhZpLblJv8uaKYKgw6TxhEeJA2oWxy8qfkOo36
dlEogvHBG/AXt5k9JCKhZcjoM3SLlEj/mxD1tPGx4WnS0hKzBTMW2Rm9dqSYhHBSZtq3J/FEPL5C
edzRnsS1DYqCJfY+34ahN3gzhztS5o3q8fO8qqvzUqFBjGOAEv3Uizx17k/jMo5pADQ7mx2lR/df
6tGxYeqpSpR3PdG7hl3oHfbdEF54dZ9/L04DjNeYcMFRTel6H3BdaESPRcMWoBYH2NLRzhg7trjn
DzVxMpLbXXQsIj4ntKUimRrvRataKoMb/B42a3nl26p/kHtwcyny732JFMMA+xa41cqClkxFjycw
NOgVJjxnrN5vNZ3IMOPKJUgIHVMHirxia1O2F94Lnbg+QX2cg027TEn/gON80HOzF71VMTXUwo8T
3aG/OkjZT4/vSRMXJzDVSxoeKxh8kobdlMoZB+1ilvclhWxy1TweVEg16rXCAv4rj6bu6NthKSp0
L/Faaz7pYAp8ObRYmlriT1nvIqDKksb057S6X/wE5DURsxvtBOK02k843VkivN+PFJO7YMHyT0Jy
00Vo95dw3hxcjyu3lP0Uu/EWfOK2hcP1IyVdATQLJBtXyKlYNZfKrguz82dCv05dD2r+tpEY4K1L
D1Fv3C5HDQZhVau+PGVqQgKpk1Ya6MhMNzSOtjvDoFOps2cgZtAa9ldb07wYyV8SMZlqhpE/7Sif
Q5fDso2gG7XhZkMmPveKdW8hlYlCmEDoJOyPuW0LgnTKYUe/i0JFNzdAcijQHWr8XunjS8Ow+qkd
xenVxitwTQIbZqKFFWXIVAERFHlmMt/BBFpPaUiAMfqpIQCa2N/d6QLMbgSZ99/QpaxjiQTqGST7
6Jgurg4vN54KQEsEniKfplCGAoFTbFChH+Jr7oKDO+UaAOf/jMHsb15fOTGnYKbSjlmUPtx7MyW2
P7oBBfudPCgr4gWdm60IRVnPN9bDC2PYg7U3jfo58OaeVEXcDajJRczJkg9fNYq61Vy1u7b2TOA0
TLZBada1yfGfRnZnvU6yLKlZ9XEzOlvSxyfdgYaYq0pnxq08XhwOQIHXy3VuRgxXjJATIidQ1tQz
/hNTajYk8D5JYQSZBBt+fUQ0F8uvqZPGawKRwBu4p92gsfjaNA6jU3UH8fN4G3WHEMZ2zIiCosus
JTY9ic8Dm9W7dM47kzUPhXe5kw7gYFoEgopl3Drxgy8lVN4z4f8woSooa6wTr2fQyPMMHRh44wGA
M9V/h4jjy3tKwWvjcuthEd6osu/TTKsBjpwg/BW8p34EtG31pugjscyCFyeHEG/ffji74nWdRKFG
601cSmu+zE7cJpLilBzdXz4tr5VV4FNMQbo6eDi5W9ywruiI0zX0AWQ2ukCdAQLNHBdmakLeNRv+
gkFyKK43h3Erhbk5xXWbv+5qOqkyukqRGwxPnBJCW+pLcYymxrRTURAXLWH6BAiV/RSz5nl09aMQ
pmFaoYnueMx4tqpalnWY/n1BuvJCTpXsJ1a+WbWSCH4sxBR6fHKM+u6Q9Gd2cfK3kLNyntp/K3dC
G1SuE4nKsuITdSkIL/Yeb1vlf6ZcT9jFfBNglunuXQp78jFgp0fDNlkFeal+mBXL3K1kBbjw5pzJ
R8OMvNgpXUnFkRG2HpowLr8RxogM5nOM17QWj58fgBm23oojjhVEfXkQV/mI04eVpaD6fE5cJpLF
nmVjIXqmIEE+DoIXvY+Ljx8z7uTlsXtxUCug4hv/iNr6QDXB+PhOrpsfTkOPLEBP8HEUiRZGOCZJ
yL3ENdcCb85MePARjVDXEfkUtkfjKNl3+Ub9xkr93XACvqmwLCUspsoFUeQJnJQmPXXbaMQVkbEg
Tt+NLHFMHJNdP+bGaz6sOMEdLWFaBGeeqtTc/wpDI27+VirlWloPz0ZxnZ/H+Fr1qrrM70BUN7MH
Vj+eZFBxfjmRAQ4A++yMFLjptxS28MlHT8LmPQWXcYgCFA1ZGG3j/NXyR+lBxG05nYH2h6mwJdRE
ndqTEdZCkJxECMYICcA1xi0tICKZ/NjnNOIdgUZKfLBEUYNX8V0+B6NHzlPAewcnIIjSFLAn5VpU
s8FlUd/INrdtm9knSJ+rBPOBGeckjAe9mwrcl6sSXXVctWHipzzQOSaDzCLHT3GdvzTdcheMKPDO
OfzfpJZPCdeSTvr6JZIdw6YKvJpyBPLngugKSHcY6IOK05TkKyjpI5wrV6oTz2v97gPqk9YxD86S
JqlRhk+UMYyVOIQ+O5HKugNX/LImdC67yG4ceInao6k00hhn9Rc0dt4LVP7z5fWuw0F72680J3mo
+uRFJNaAj+V+IJnaOXk+87OIC8mTUCEikQ1Akt+zs1U3anagu8oKwRb9WvIgxufU9cxrHfy9lS+X
4JEBKpSJbF2FwB2yqRqcwfBB3yEO+XJqGcaPEXAGlTQ2d/lDpeemzjKNHlxGUU9PVDyKxlmL5pVD
tP5BxwVlNLTwhnpe99CgHc2QCeQ9aPsmsyqNB0HjuT2oxtcIYDaa3hiKcsejUIc91WOgreNgpUC+
jkf2iybdv7URdHS4ICqUAxJVl1myJCRIfv+Gnqt6p6i52jDmbO3EciQ8EOH/g8x/ALIC2r796+B4
+NrRcdGRTN6tq9DJOQadqSoyKqaZW2lf/WyLm8ij9IRK+jm529RwrqpcZKJBUOIRj3VtS13AjT8G
hp+QZFvaFwLkFw4YCPZ5hpjyKnOH6NCrW2ulRTRH+b2UO7ue6uc3dFzUNkuhyNH6vvtXTb+s8kHE
SASeQCRqeekPX5iQbPqPS5yBmM+dapmw6+qgK+OekhnezdXOW7RJBvCGMfcxgapWt+0KzyZbi1q1
pQcZCnU92sk/zYo52QvTTXbEuypaLbdGHHNZ2g4wtljeTyxr7p4PT38RqHSNFWgjJwKJHwgjyKhw
BK3n4Ug/va3XJr6BhcMGlBB1cLfNAD8qTBj9/D1/UeW80bs+In4wwQG2kBNLaG4R2P4z0CDBCV3D
Ucu6PGKI4+eRbepX2ffPYUuqRGxE8Pg5VZDqWHEC/hHuVbWdXh4MwTZYZl1yLR0eDyMOfWFjyNtx
BKtsERE5dpgcxc9MncTInVfF75KYlQIAPgUfVXjtwhUMEitintcmuN8E/V+BPVgJYUQ7Ohcfoy+Y
f7wvOTJ6AApAfDOWItcueS08J4q/agS2Rd5BQebkbZoQHnvT0M10c2vL7EUclS4gqzrUxv+oNkjR
1/twNEbpsAChCkFQqzC8PheTKwbfQoQZxmX3uPs3OEQ32BZtJYr+h0D2Us9d0sOstTFdL7gll7l1
quj7MP7P6nWEIPJA+/Az3s3HNypdMpPqKL/JiLRFzORNqnVS+grgG+WzBlgdtpxMs0YNp0KqzmYx
rU7MJuyxpZbeyxRxZrmH+GuQlhxlS6ewGbniTcv0VHo4yHUARFy0R+OJtswNtaUAVB7rei2srlq5
FHiLSUg5sbPSF9oyWOPAnklUdAmF38KlaHWdIDYe1t6LD7zv35OMc1gAuLnClpTdXr+kdKzYDgdr
dVdqj6ezbGJLx2yLFooUDOCmrFN1fhePIdmgq7EmR0MYeoUsTljmAkhzK+bM+u9c7op5DRLADszs
jD4As/E/EcCLeS7fRBv3dmoIdGy/SgSHw2wtUSKlGB93XQJXdPfqm9BMWEIjbRlKUmw4WkxnBNKD
CmpIAMUP08rPmH2Zryc2ZF8cVymEDEN7aBF5i+nbju3KcJSKTkFky8n7AtTvh3sHuRPt+xpPpWW+
mXCVtbwq7a+lQi2JvSCfLCDBkwYTYcsXb+XgiNxrcfCuOenZY9f3Vx3A7ntZU2rPx4Gg5iKVGqcz
3IV1kBvL89b715m5VeFzxhr/jroY3iGHKEHTNfQDIBvOJT9zxzaiwN2zaMWRsiUYkREFkvgSn+0o
2CZFxLEH520V3LvwBBYOG5jCZuPnC/op/uFWdrYnDKox259X1AfeU5YoA3i3PeoGnBKiA936+gpM
VMNnqT67n+BtATuA9yHhCDGnkyAhZ8HNfpNzI3oXZ0r39ec4Jj4wsLtQYlHJjstK9noNrlxBQJEq
YEByJb+9yDPPr5Fk7dTX0/UrBk4QQRBJXRkC5Qlqf69sssfaXKKmsGENIVFdlzB7m2vkBmw2BMNB
3eDTUohFeGGtTx2qJGOnr53B/sgYcmAe1qSV0MTP22cPOpJ9zKoXRyGSLnf8gWpd509nJB/wGCgV
FzDJr8QLVY5j+IyS71lx9NDxr8w73rNKgOG/EXpq+pLtWG0O2CXSZjdvBgmhS+1jWHsEVqq7Kvg5
nlrCLpvmGZ1R2qPfzpvQfhyGSFVlKJX+Ki5EmD02Ev2VG2I2yDx/mxhncIFIoPXvmqjfQzipvpUT
6Cdore+Qf5agK+FD1NTIHOiKkPCrkQtoK66mQiAnWoU9svF6/DxUW1/yI7x8SgRpx5DvfCGG3eEe
AiA9ER/x88Xx3uRyMjnSr4ZGTCxw9zMi+Fq/zD/NNc7nONys5zlaJO/R7pFkEoTr6C4kTn9rJmW/
zoD3/XkEvKcXqOdkXEd9yZh8e14nIoyEHnvr8GjXnW3VuYDttduxiEndKdeFviii7nmyJbUepmGu
84LGsxAQpkDIerBoIKjG1LTgTmXWO9DwhWOXRD4zV9cVR45hCBkgth1M7XbN1BQ+wunTm+AdbHZy
hHuK37h0yPShWStlLxsicdQ8ebJAMTXyHyoAmFrZLUYaA79nWYzqnGiRFQYBMUqDaBXMlh5mvePT
f3V3THg9INSq9sZpKKFSrSn2O6p03Gu47seo/MtH4iVtT2lK9QPWB4XiE6/zMs6kyL+Ghw7vMurW
XO7OzgXIT7yJ2dHJwz+5ijXU2YvoFkrxHviScc0L90Ut1UE+oI48zFJzbltPnQsi3/50bBK2hW0E
sNuCfL1I/meALcAg1tcjameeyExS62XPEhZOTCMSaILbFktBbHSBNRe26qcEvIg9nMk++eyP5KKD
BYEl7SSlOoQwEmxNhchIjLCUjpK6YugrMr7Mii8cM8LrWrYMHyjn8FCVHFHX94oChW4LPN8Bjz3q
aK9xZ5hKrmMrdBAKGcHeEvJGSsNKSpCZwNixIxYLduCgBW24R1tiSBQJGE55lHmthdbpVL0AKVdU
qEGBj8ehInh3S47CFdXABuHJTYzh3yd0zesZaICxYQ3z9+Y3V52y1XNFS6Eks9E9tvVoCo1CVMhu
E2AtEH1tZGniO2D/bDy7IN2eVyT7rc7kRYTXv83E0mlZ6DCGxdyw52+MywK9Db+VspNBLkPQNY/5
UKgVWx/lpMT0tgMteRCxyyi0B7qYsxHBpOJgbehTriGF7DhGOM497u5+i3bib5DgqudlwW/wtgnD
TiczRvIfmzG3Cc2sWRN5uSv/Ren6sZBypkFXk5OZCGYHLT7m6hH8UUBZl5rSVk1rDw7QTWOnQ1kZ
NgXnUDEWGY8M6p1uUynv/imh93BoqHBSHfmYv2LdRBOGR48JbJzzZmpb1OCrZq2e+e7H6mqW9Dim
/omQdSz0EuCHp4nJfSjTfd256HujGVvR5mgBwSM2J7MBHtU5QJT4GhGbg6RUI1VT2qCgAHcLW3kx
QVhTQZpjnAwdV4Xql8qMhwoKwrLbjbKcoN0OLTfoU2HMqtg+5kcCCgtzb2+Ch0FXf1821p61OVjQ
uj1/5pcbrERi2DEVMgCyS30HFc2GAYp0k5koUoO+wrRurRih0FUXhVHdNDn2/tOzVuKnbxtSBV4r
GRiBcIaChgXfHu9HyS15KA1or4sVIVWUyEKQOhfW8wkwUXFHWnaD40oIzgHqj8beA+vwzP5cV/qC
7kqDnr4TQWtcTpHNRhyIk+eBkOpLTtP/+93uxUrdSP7vhPD4fBuUxrbVPbjq71WCCB6o4b/Wq6B+
0eVaql3M8dl5xxfG7ILmgvrLmza/d5WhQuZTpeiXoNaFd3eHDKN5n22pN0w8X5lP9D9Z/0WuyhBl
YuuveBYnGvVcs2i/qnI52I8tw47i43d3WmqgoXtes3b9kF29fK/3MJvYmHUWKp7OaClhJh3JcthI
osgrGFA+RuFOCtOfFrsAv+PmtQY3wqEgpZ6QHnwV9n12Q4V1A+CF4NGsVXRd0ubIrAd1UkxWKHz6
r/yy4TmKxU6vBMF8GYobS9OwWfNW4bANL6SGiQ7Trnt/Untwo2uRFIZTqAk1SPv6gky0Lo4wYXdB
h4gxyrkU9sJKM4xFnuLOAAgOHgE8jmqqt4oQ/k5827tsxIqULHCsgfV8jFe+OCkV+BPwYwbpuw4G
adxmpbIIcxtx6D+JbLp/d7/sy44m6/7ZLqTFQp5Nbtkh6H7mJ7CJNxivIwX/8R4FJ+kywE/ReU6K
LdZ5bUSoEm7DKCMC+bsOhCmz1LTZjMOd8LV3YIIcQsk42FUDq101t/Pa/gezt0C4RMUJEWUSeeJ7
8GG+/oNKdPneJZiVeEriSWFKo5gQqM2j59uu1P1t5CTz+3u+6xMdfK2o6mC3sYaQtZ4Jr5J3oNAb
bY1uXCUOpkPa7gXQNz5vbsewgy+C4x2iDghzbodgBZOH1QkFvUroYYWDimYgvfdGwbVLvIwYZ/mo
YWGxTQ5zg2Lm8j6WZEIhyMZaNlpjptsUm9kK2d/NZKJB3d2Cta5CV3UU1cf2/x/V7f0Bp3Ubep4G
wd9u4iZmo6R6yQxgr9xHHyzFskwdB5Vg/SGacH3g1iLRYShxN0BrrbEd/ZTVLdU6pZutEVtL3Jex
z64EKLbx+Ijdym2xTJnG6qliJlnkI9Jm388XBRBURMfXwCPVG/h2u/rTNbeLZ/9f3GfJIRkYYdyK
vBHsmMSOOd4Iu1EzpnFIbuWT6nNUc2uYvRoypYW5DV/T3oRIbGtnzlFHpONdasBh3EA0Qo7jA/Rr
9bv6yFgyH2CsdoO/amCo+PWcGY63kPy1zqVAsDu0Z9dvga4cXgFSH5/QAO+0HAzeqE7REkfMQZxm
3EY6z0UnVRir7+fjOZPEjYh1SnGccq6GZt9f7ZHdQbL9tnjs4tx8Ch2zP05/ZtBlQepif1CWGv2g
XkMtN+n2DYuFYcGRDqplrWSK3nJ+WquDM2GPFzCRa1wmz57cH9bKQi/xgMCE9Od58vmpjNm1N++R
Oc284UUsMeVRb66CNAWB0IKfTFZjdIC3lmXRhWwwDLqJ+Ji9Ks6i20BF0q3wVsC9QthwKK7ZdOgX
ui6TqIwT2r5+VY0JS2po1lQ9G+Y4f3w8aFPy1vYSo73qzSR2MgoZC9EkGN/pVLhhyVJBbbYYscKW
YlFc4rIbwJpq6LdmMhRfJxjOEoar9DW0mcsCYb1blsviM0i3Rbyifq49bdz0w029m8DKq5Druglu
LenXhxjJFPkHCh7K4usdnpZCETR1nMdLX7kTcyytNC5wj5XwtZGZADuSSf7uvllEf0zDGyAeW5Vi
v68/FA2ryXPoM365j00mr7CBZe+or4LfW/9Xoly/C9IB0R9HcGkJvOAgHs4fOZOjmz1+cPckNzbN
pKrSfQgkpiUoIOHpC5iPMYEFMzSlK5XL1lhieGiwHenYc2Z+pSSSpJmuMTIYwwwjiWhXTFwqSFfF
b5B/xFCRShPej+FDFxpuzxBgy5Ecdi6QB1ZC+rVSjwImeimFaYTXBRqgs7zNSoM6XFvYMNs98Squ
sqTYCwZUgZXGG+7IL1OTEVGBJs5cW874UeGaLs635m4xAD6qxZsxT9akJ5b0g2Qg1+7sGDIoCcLL
f59HA/M1hFHdUKNvJKm5YfhWO/4TLUvvOlMwaPtRUKYW6Ja5USsX6AlnCZ+DLsPelbTTu/jpqP3h
Jv3jdkkesJT9mFadShU1vWkW8qeAyVVVBYHr36xkpbOrU/qJvDB1jhQsbZ+rDkrcZjtJY9dc9/qa
cKFMkTfQH+c+OU00PoV4yQQ+ymwqKWUxgui5DzgoVV+EA7nH2B/t/MjSm1xAz9JZeCFxcYNM5rdI
BtSTJgzulZz69nLcmNqc4UNA42M3gfJoap/LLj0G5Rcp9+aT1tL1TkQvRvhA0ZV89ixFYve+GHiq
6j2vQnkeB3iw8V/raofKB0yJlmHDK4PLlJjdVTIYGmQqV82RmFsARL+UUr391uIOulPi9398wO1Z
9TQ3nmk5lm/+xXIKCd046JJKr5nmgsr/2Nq3eNt5ScoIO3jm12RYMpKgtvTvn8SkLiqXfE0tGnSz
/MM4c+vvfdm4g00kdA3r6zzvPudzMoYnkXdf0+9XX6mUdwbBUdtIdQQGFL53yr8vhD7+cjVXGs1P
y+qx21Xr/wHibSYnNvTJBt8QAv6WxBwzp0nCcssUePYP94GyqnYk6wfzSxEnP2gK24un2BEc6umz
Lz+FWCE3IKoFJRwbRDtGDG70z/fXFyuVrDaO+LhKU+kyY/EE0tkPA+p+r7rZqS6XLNW6vxmkkHO+
0LvOxY8dswsvqPkuz38yY0/1NXxOwEzto0/8cXrhN/eeeC9nh7N1oD6fBIwtHV6VUpuGPG5MS+qG
dRhw/9ZeeyfqQIpjKA6SIuO0ec0sMZylj3FwcQE/fPQWewXWcswdmpai2mdZKCrGzPyhK4wEa3mM
ThouvrSCqIjfRkRE0hUt7lsHFqrR2rV1LSkaDUApNVuazs397sJ9i5o0PTLXsXQ2Fii5WjUZiIq+
l9FkzrzROoqripRuvaA+jQ2X00od84ucHX7hndaYJTAZ/bcfpzFOS04kJMzdW4K9NOZic5EZAShT
80gF5fCqi1Jhmp9vff0QsFCSP2o8vjKgN2YBigZwnVhwBAf/DbFdDDTldrHJKmVJKWDDbMy9jMr6
eeFXCV+uJh7y/h8kyuMZ0HjZkAeB2P/TbeICijX/V5d8ceXCz/stZrZUtLsiskIXBod5Zo/staUv
SRIu3ZMQFtd1IqpowW4hukumE+TVO1KJXzVnuszIMg8dpcgpHVbSkc3oEl1M6lR4EZYGkH+YLKoy
vpAtGk83/EydVKQAwwmsd/wYOSIbkFKndGpAVt+2OC3YI86DakqtqhVyOKyBIuD7Mnqs0HIe9VdW
EqlJQ+9EzjseZOqxRrzYz5mLiFBMKBHNxdV3mq6hivgzaHD1ujWUxuQlJuC8mJQ/w3A5H3TgE2aa
GiWK3ywrk4WmmYePHJXsntmd+RVkcTR3iJi1D19jMlt0ztBpUcyWdoDxaSa1QvTKd1sD+Rc7ZjSu
T0AE5XYfGdg1PPoZZK5J93x9OKfhc6vJqWw3uIHW4KkxYr2XUpw9fbGkrUiHaNPw9QR9xdmO/ToO
xjRZ1ypKMaYZ/g0YQkjz9RL8FCtp4CiEGMwWcMGxj6hqtxryeZw44IEhlgBCc1XyrCGwmOYv+96k
LmmOnl6ot2LI7UlMLPlJFewmUWq8GC7EzVM0a+kkPc4wSle3Sood90dqu/TQHzNp6tJYmwCt0PEo
v+i4OFtW8nvN73ie9Uq7Coh4qtzVnlbr78Fa76zpNEX77xn6t5GTNV68kaZ3StUw6v57Gf9X9XWt
hcbu6D8lk6NyoaCQErDU/JgRn6b2hCko4SiA+o8wLfDUg/oUapCcfbzZsgUYMb/v9qdDwEBKDt9/
Vw9z9IPMGk/RyT7URvAQuk/Xc4MvI251OIvW5ODwSLrrud0soVfn1jJ64W20ESOkouQ/ywVB1Xt7
WwOWfFgE7F+ffuvjvgL7FosGJqT+3WyfnokL28sQ/RFKq9aenMtcIoqKhISbLvzuye1vc+FG4Eu/
wVUwRg8tUqLssX6zSM2dc0VGcTsajeBuZ+OfcgXi7PYlhV1MRPRGcdpUEXWVXMoBnSE79gh0YYMO
nOwOs5c79ay6KHSaEhA66//HKmYQutkQKpNTkSZb5kEMbHmN6vz2KJ1I+J9q+iXp7XTbPWBak31c
Xjxsdw+Wb0mXafaHu/81/eEDBrohs+lTsC1o7MkBOmcmD2sCbHYLr2OWxLQDYGz+diKgvPi75H5x
QQ8ndcw+QPoV6pZGx4nQBSAEsW8aGeNeDia2+oV0kFGd0Z6Iwb+BI4OIvwVrtlA/ZUXlyKvtBN+n
uffmfcEfuC7Akjdh1Kb6ynRvHG8P017haJ5gz7EO9NheObB90nJF9xIlHT9gsuLuOhkaZtmGn6Ba
Ai8UQywFly8zptZ1GkI8WH6mHDVG4jCJCGbHvDOwe1bV76a+/w2KxglP7yXfo2KQ7LRAwNzHZ8zi
S5RLWH3aSN1ok+LzSkfeqBvvDIkNDjoENNkZQ5rQlFjNlAO7MKVVH+HjpKVKkEZclvi68tdGe1XO
XiibR8SlfvwK2lcv9nILbreMt6ELr5YSG60Qi8xXuDDeIfG9RzJ6qbrXlAXCHXffMHwqHi88GkWW
BHpBSyGgfp65/KGD8aROBDuxRLGS7mGRU5admgeuoivgs2RHXKSNdM2tQhlRkLUB6ok6XcVb23oT
jjKCL3L1kwY2VUzuiKJquZ3LIp0Mb/O/+9zshDWcB9kcTLNDELiauAFNwhHbyMrQgxpPArZrHHcL
FXt55pG86ZUKcwKe2B4RHzwVldCroixgkDamqyihrbgewPnhQEhVU6ouJ/vZqdhvu1WX/EQKPDwf
SMHknWimzAslluO28EUZUPmpsNCztUCrA2a8exmb3RJdv/FQbzm43WTReKARXLiN/mYZGf3tAA5Q
dQTFm1EBSHdbtO3oEFJ5F/HYIidK+mxfcBQPu7EUgALIJLfmjrEoMiBUkfSmdEzAru0fvC8YpC+a
WDGyw82iq8MXSMHz5fLlZ/ry5Gbsl9V84Ax+K7s1fmhS//nVSPwBcJs4lRmL6oTuB7w7p1vC+ztp
psvQV64DMbTNSigdd1Js+mvZnwQ4aHiIwVQkHvUMWa6EUbKW/zbLPgKTPegCIPE7E83huawZnuNe
eQLFyctq+/AASR5vntiepOP1l06WxurcLBgCDqACkgUAQqGQ4f4HqeSkJOLR+WC/5BXuPbSoNRZR
Vri9oOx6YEIVOF13H5ZNb787FMX+lf/hOZWx68kADPn/mmOj3rDEa8cZrg33JAwUUtseoOeXzSdj
OIuFsiy9L4iQM8UCNZJlOwXc42i/W8T0NESLM2gh5pTs4azUCEWyErwiO/QxLYjn9sVfGmNunGQy
CeZ4kCuA5RIcDVhe8+gW8+SuUT+9piGP7wAQiYEniq5uV1k7DYu0edDpYSvW/sk+J7SJJ0srLjeJ
qLARtSQW4UUiBMLCY9QzdhX6YT/CK0RzDZLPJrBJasBMl+wlxLgaGW+wz/7ZUzwdOyDWMexsWS9Y
v6+TDIlYfOrVFWRWsHjZe0bkbCWEPPodRp4SA5mk/Q3SZpUVbjZWpCf/geZ3CIP2iDKqq40XQ+em
lazrPQE0g2XU5z+md15MdnNGOymOWYWBH1K7Mgi7proZs+l7K53+BcB7MzA+M/g5PJfr7m+GP047
aMWyMxkatoEdSj5xbt0z0TdkqfgUxvdFjEu5zY1t8UnPj5I2xGYmmUCebFUZuAjthYLlUy5yIxVu
nSfVYIkQqtA+FF2B3chSMfKiG4i6qDzNoAIvbLaWRHR7IlySvytJqP45pD5DQn1/lZNAPxs99sgL
GlihrqCNNnvbbb9bB4nQNE31ioim3hWNG1FkC0bUDdb4T/d6C1JEM/Blgx1C90xD38m6m1PyIwcb
mvNZ08oLZKopdE1q2qn6RZbzbiyQ/D4CNupgwnQfSNog4kVWXJR7INs9EBPdy67jJMdvpqFqdgJd
2EieqSGVDSZ7q9MqGxb3RPABC2U2g5qCZFdVjp1RDQsFL84C+orM7oero6uDBVxE+aKKugr+AccB
g8VzPIEERlQ/9PZq+3Grqo3tN9BQM/PWDSJ8OsZl0xqCkemMFwXgl9moWniAq1erYFvV7AJOCWRR
1Fn3eyS2g8wyWE+eg6XOn3I20xxwW59XoYd+BEMjA/82kawMCA06dCi4MoKQSebzzVm5LMcZs8hI
PX7ccgohCSsjVnVUakabhYc3Rb9RjADxSuE9gYevLqfxLkZRhwrsyNGUix2pVV6GH7UvDKMEJ8BE
lobXqp+D5NGi8x4pDTzsjZI9wFNPeMhiNr4ZYzSaIK6k07CjuoVg+7+D01vvTMA9GOs6kNG1amUy
KcA0Wqb638LM/z89L2wffmXYxOO8lPkALZB/aR5RM98Ej58VGp1tY2/ITO+oX6dUS9cjdbd+8tN6
CQEz69OJ5AZXA+TAu+9QXDXYsvjksCRP+QI+3KVXfppjF8TjEA5lH6kHoWZfZd4PdxI2susDgNWF
z4AfxdlcI7c1FOOjinxoDyMIDFGwEXjGRCLwNMBU49u1ssxKFKUawrorp8ws3mZCeSgBFGeCPro0
Y2eCzBC2gdAJQo9CTOoNTI8pOICFAxGxyW8aTIkdTgCIMf2wtcW3qJHeJLFvBccf+mBHZYPMmE0D
7tztTErZzNLmzBKDjZXIn9ZCcrj/9pXGrjqBuFMgJ0zS/SAW8ApSnE+ozpflOycwkYP7ji7C+YME
v98YT1nT/wBRGCNiM55l0cFmwrFwDLQnl3oFMb7RZq872CoSQY2FsiwhsWZ6UXbB2z4yUaSNxuza
5muXM59KxyekdC7+vFgLFlSXL0MwmhIRM0UzF14BHEel632CvOGygOgW9pHY/frm7H4/6IK7Iq5z
fu+usN2zPFJQeEbvhfTUVeOuJl7D1/tLZlNOJyfYnGZAPxRseDNAuh6IIwmT1WKFyuaC5iUeU/9W
kEe9o1oJ5lV7NhkQSkqSOjtZVcJ4QXIA
`pragma protect end_protected
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
