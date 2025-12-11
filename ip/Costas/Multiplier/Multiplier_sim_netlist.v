// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.2 (lin64) Build 5239630 Fri Nov 08 22:34:34 MST 2024
// Date        : Thu Dec 11 21:25:41 2025
// Host        : LiPtPDesktop running 64-bit Ubuntu 24.04.2 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/liptp/courses_2025/general_ex_6/sdr-psk-fpga-2025/ip/Costas/Multiplier/Multiplier_sim_netlist.v
// Design      : Multiplier
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "Multiplier,mult_gen_v12_0_22,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "mult_gen_v12_0_22,Vivado 2024.2" *) 
(* NotValidForBitStream *)
module Multiplier
   (CLK,
    A,
    B,
    P);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* x_interface_mode = "slave clk_intf" *) (* x_interface_parameter = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF p_intf:b_intf:a_intf, ASSOCIATED_RESET sclr, ASSOCIATED_CLKEN ce, FREQ_HZ 10000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:data:1.0 a_intf DATA" *) (* x_interface_mode = "slave a_intf" *) (* x_interface_parameter = "XIL_INTERFACENAME a_intf, LAYERED_METADATA undef" *) input [11:0]A;
  (* x_interface_info = "xilinx.com:signal:data:1.0 b_intf DATA" *) (* x_interface_mode = "slave b_intf" *) (* x_interface_parameter = "XIL_INTERFACENAME b_intf, LAYERED_METADATA undef" *) input [11:0]B;
  (* x_interface_info = "xilinx.com:signal:data:1.0 p_intf DATA" *) (* x_interface_mode = "master p_intf" *) (* x_interface_parameter = "XIL_INTERFACENAME p_intf, LAYERED_METADATA undef" *) output [15:0]P;

  wire [11:0]A;
  wire [11:0]B;
  wire CLK;
  wire [15:0]P;
  wire [47:0]NLW_U0_PCASC_UNCONNECTED;
  wire [47:0]NLW_U0_PCASC_EXT_UNCONNECTED;
  wire [1:0]NLW_U0_ZERO_DETECT_UNCONNECTED;

  (* C_A_TYPE = "0" *) 
  (* C_A_WIDTH = "12" *) 
  (* C_B_TYPE = "0" *) 
  (* C_B_VALUE = "10000001" *) 
  (* C_B_WIDTH = "12" *) 
  (* C_CCM_IMP = "0" *) 
  (* C_CE_OVERRIDES_SCLR = "0" *) 
  (* C_HAS_CE = "0" *) 
  (* C_HAS_SCLR = "0" *) 
  (* C_HAS_ZERO_DETECT = "0" *) 
  (* C_LATENCY = "3" *) 
  (* C_MODEL_TYPE = "0" *) 
  (* C_MULT_TYPE = "1" *) 
  (* C_OPTIMIZE_GOAL = "1" *) 
  (* C_OUT_HIGH = "23" *) 
  (* C_OUT_LOW = "8" *) 
  (* C_ROUND_OUTPUT = "0" *) 
  (* C_ROUND_PT = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "zynq" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  Multiplier_mult_gen_v12_0_22 U0
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
dqQjeH31kdObo3tOyC02coYKM/6y96x89fIWyg==
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 9840)
`pragma protect data_block
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
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
