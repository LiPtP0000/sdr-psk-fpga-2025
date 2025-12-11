// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.2 (lin64) Build 5239630 Fri Nov 08 22:34:34 MST 2024
// Date        : Thu Dec 11 23:05:34 2025
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
    P);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* x_interface_mode = "slave clk_intf" *) (* x_interface_parameter = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF p_intf:b_intf:a_intf, ASSOCIATED_RESET sclr, ASSOCIATED_CLKEN ce, FREQ_HZ 10000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:data:1.0 a_intf DATA" *) (* x_interface_mode = "slave a_intf" *) (* x_interface_parameter = "XIL_INTERFACENAME a_intf, LAYERED_METADATA undef" *) input [15:0]A;
  (* x_interface_info = "xilinx.com:signal:data:1.0 b_intf DATA" *) (* x_interface_mode = "slave b_intf" *) (* x_interface_parameter = "XIL_INTERFACENAME b_intf, LAYERED_METADATA undef" *) input [15:0]B;
  (* x_interface_info = "xilinx.com:signal:data:1.0 p_intf DATA" *) (* x_interface_mode = "master p_intf" *) (* x_interface_parameter = "XIL_INTERFACENAME p_intf, LAYERED_METADATA undef" *) output [15:0]P;

  wire [15:0]A;
  wire [15:0]B;
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
  (* C_HAS_CE = "0" *) 
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
        .CE(1'b1),
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 5728)
`pragma protect data_block
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
c69A70xMgUDhKU0P+gxZ/fx/U7hB6jFBFFQ3yw==
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 10448)
`pragma protect data_block
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
jTspNZXVLv7QTwkHrTMgrNc=
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
