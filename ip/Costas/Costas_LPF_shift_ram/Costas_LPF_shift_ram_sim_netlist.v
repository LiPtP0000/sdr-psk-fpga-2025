// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.2 (lin64) Build 5239630 Fri Nov 08 22:34:34 MST 2024
// Date        : Thu Dec 11 22:36:33 2025
// Host        : LiPtPDesktop running 64-bit Ubuntu 24.04.2 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/liptp/courses_2025/general_ex_6/sdr-psk-fpga-2025/ip/Costas/Costas_LPF_shift_ram/Costas_LPF_shift_ram_sim_netlist.v
// Design      : Costas_LPF_shift_ram
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "Costas_LPF_shift_ram,c_shift_ram_v12_0_18,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_shift_ram_v12_0_18,Vivado 2024.2" *) 
(* NotValidForBitStream *)
module Costas_LPF_shift_ram
   (D,
    CLK,
    Q);
  (* x_interface_info = "xilinx.com:signal:data:1.0 d_intf DATA" *) (* x_interface_mode = "slave d_intf" *) (* x_interface_parameter = "XIL_INTERFACENAME d_intf, LAYERED_METADATA undef" *) input [0:0]D;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* x_interface_mode = "slave clk_intf" *) (* x_interface_parameter = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF q_intf:sinit_intf:sset_intf:d_intf:a_intf, ASSOCIATED_RESET SCLR, ASSOCIATED_CLKEN CE, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:data:1.0 q_intf DATA" *) (* x_interface_mode = "master q_intf" *) (* x_interface_parameter = "XIL_INTERFACENAME q_intf, LAYERED_METADATA undef" *) output [0:0]Q;

  wire CLK;
  wire [0:0]D;
  wire [0:0]Q;

  (* c_addr_width = "4" *) 
  (* c_ainit_val = "0" *) 
  (* c_default_data = "0" *) 
  (* c_depth = "8" *) 
  (* c_elaboration_dir = "./" *) 
  (* c_has_a = "0" *) 
  (* c_has_ce = "0" *) 
  (* c_has_sclr = "0" *) 
  (* c_has_sinit = "0" *) 
  (* c_has_sset = "0" *) 
  (* c_mem_init_file = "no_coe_file_loaded" *) 
  (* c_opt_goal = "0" *) 
  (* c_parser_type = "0" *) 
  (* c_read_mif = "0" *) 
  (* c_reg_last_bit = "1" *) 
  (* c_shift_type = "0" *) 
  (* c_sinit_val = "0" *) 
  (* c_sync_enable = "0" *) 
  (* c_sync_priority = "1" *) 
  (* c_verbosity = "0" *) 
  (* c_width = "1" *) 
  (* c_xdevicefamily = "zynq" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  Costas_LPF_shift_ram_c_shift_ram_v12_0_18 U0
       (.A({1'b0,1'b0,1'b0,1'b0}),
        .CE(1'b1),
        .CLK(CLK),
        .D(D),
        .Q(Q),
        .SCLR(1'b0),
        .SINIT(1'b0),
        .SSET(1'b0));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2024.2"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
m9qUT+fldtChniqI6IFTTNxBTM7FBU0iNgjkHvvtmZKQsDW5OztY8BWBBt0k+nwBFa2J+GGUZxJZ
18jaHgL/Nlvu9QTQ0DNk5LxuyaR1G4/tVyZNUFG5oXQHjA9afGLVM00GmzHFJ06EXgy7d1oj+e0d
Ev8eSLqph3wOijaAUtE=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
iN1a3I86VGj20JW/dhsfg9Dklezjtc4QmfqHt+bakyplWEPEP4Vqv48kQErAPN/Ul8MgdGiuiYn2
FwbtAsN66efV55sPsVduRZDGG5lrrGVgJ92NRT8MKDSEvx/9sl1WbbKrJTqAsEhG/2fCiyyTeLFd
wuA5UH5DPiwLDkdG+arBnLgKHV9RpuaRAnv3GI31WaUwaYSbuB1q/hPDd/Sg+Bt4+HyZb5ltqps0
Yh/gu/zk00iTZ0R5Hj045xmjtZWGU5xeGCtiAYuV4CiB4JEz5ewZzJr+G0VH97vfBpdyZq8T164F
CaBQPf/24VTFZZbtP0XACDCddNtIeUS3nwgtTA==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
pMEiPFZAQf6goTFIbq0MtY0j1dld4c9qA0FfaUnMFeg4GRTO/x6EoX2KhVAHgBu2gm0qxvT5BJck
JZEArujmdnYsOrtI2P10JAJJzU66YBACYam6OKfmNfY/+Ya7cqiDEXL3Sq7AVWWI6EgKoe/RrNcb
czQZ8JRSiTThW0Zhp3Y=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
LtYVpcHK/1G3aFvur5QYPnwiu//hwprprMkWOLN1vCA/j4B57THd/8eHUK9MKqYyufgsnqoNKQVh
3ZS9+APH0sxMOezX3bYV2bcTtjONSPM6+7g5gsQibE7SRPh+QIx5zGwsVBIQD5DVlwwP/vMs7lWs
KgtPEmYHMwQJ+TyRPsEhxuEsVjgXfOWhR0UdR6OXoSHLvmm9mxXYmegzts+KeQ43K3QLg+3LIYnS
BOOT3Yosty1nVSy7Ohb5cFdWuVxmbq2fPqT/0+kmIbxD1fC/xfCVuu38Zv034Ps1K6DSXG98/jm0
S9h5zn2Bat87VpECS3QdCAM/ZRIjhrDMCcYU5A==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
z4q5VbqJ00HIFaiVYg4q3BMTx01R1G45Hglaf5vBBJ3RbsxDS56mp0KTZhQwNwj/flOh4EbfMe2v
9zkuLigkgA3gpNJ5BETxjlDcwsMLTZ4JunV3jMwRlA14IuaU7ZqCRYBVwPSMyLbOcJ8vsYvgMRCq
Kg7TUIMhNmfXj9fZWd9t7WMMeUWLBR7KOynOU/LmlFVL/QHov3yWGrer3DU5HhGNP9Fn1i30p8jh
VbtXYbvStydz7j6nw8B7oZf6Bnf5KLzsIGi4MoJN7cBoGW+vt9o1YNmfpDqXv88oeyBhzSfsAE2j
whgSTz0KmFbI8UefsFSPG+oixypoZ4UV4uT9Aw==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2023_11", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
LKO7+GaQMkO974w2kcvcgyGAmP0+Wv1LWZRCvymWQGFBYYasVHsa2pn44tJZNz1h0Hqv7Jz6rMuT
tlVcV7RMBry72t6owZxH9WtkByoRq6cDryP+ZSDKbW6+2gQDgXvabL0ZrE9TKcmjbk2tVUWGyLWz
M3q9AraI8F3GyorzeeQpPMZmDuNnWifM1eCDljS3DtaKLdoiQHHYUClEil/isXQlgJIWzSVaefUk
ghN9zWIdRAcBGIMszR+UTDH0rvnWM3Cgy2M8u9RZ+pgRejtPkiau3ArWotirhmXcImN/HVU/Zxo1
47XvLRZurUNggf9+qfX1iMx73eCjti53tiJUsA==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
PWj2kYT2N+tMK+bfjDLCjIGdwGEwmDbgC5LNQ45kel5Z9eRAVIIYZij+c83EvcL2VwJjTSlF8+aU
ymEp/cl/WwKZuYbE/H9j5VoAqrH1zNe/BDfNaCaza0+VLz4/6/6N2PE/XAbQQ4cDkRkkpcaqdoV1
iuQfkMCiH73V3kk7faugsN0aIRy91a4M3sAlvcJFuIy9YchUVwm9Qw3NoBfP0IrJMTIzgEYaSkJZ
KRbyXThADJQnMY6OL5sIWf6n6qrh3Dr+PsBOr9nDnsLw8aI5llZs4rvIEQB8jQMMrdXouGFPLkzJ
zLEniR3jvcrykfdlFeBGmyBF6XJxPdEaZ2cvuA==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
YjEWFZrvUXIK+AN1uVTPdBJlQypLOirNeOehmGlvNvEn/PiMW7lsFXFgShQ5kUGymMkPlNDpSlfo
xapJ96+cj4N6WK/n+ExGvKlTiTzFEHs61gpx3XaTOdOgtK/GyPFxQUjfw4rHZGgfBgdYZDG8YSih
j6/hcRGZynQz83GMDwDTuUaitH9I8+23sA/Ja9f/yy8N76casEoBs6cqNPxyYgQ8W+Pv8H006cLz
2aH0McSQqOTouAOdAUadIIw1zzXfeM11//LSymKnim39NC7zlm5ue2Kqnn8qLxoTD2EbPOGczBxV
40J+E1AY3tPehlp+rbTmXJ9uCRnXBWmiEU2YVsomiYWn5IPREZp0/OCYZvfazQC7yY2l6Vo5olSt
ygVrWm8+WwOK8q7QTJCgbDlvuQHdiLoVNBglF6VPBWMUNrpbIAJiCwoV+Vk5R7UjWfv0Kc1A5EL1
k1zh3khpsgKDOyr29hXkvMtu9MVvCQVj+OelQYPrzkz/pTPTgVkp3iE/

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
BE4xRuvg7Rw9YBIdL+H4SCMDlTpFR2RM9VWIZM55o0qeYxA4Vb2MeloUXWl7LAWWA51yTjooW7IG
L1XpbMho4xywsAL5lhGZLIZlzzA6tDZDmg+GvEeg3olVRW3/LyNRo9ZgnonssrgZVle8I8y11maS
hrMbrrLMEYu0XIXwO3TCaY16eYVID6RqYgOXEEj1bFNkDpj1DUS4rjkVz6/+3hbkyb0+yp+McC2M
Z65xE6WTkJE298/Y52x27Mttvfh0WhAyrH3822qWaGLwJCTy5SFncSdy2/vjsuQb/Qyd1aDqpW3U
qEI8NZUvt0CdW7/VDsDUJcrM47wBkk/AAXdZuA==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 2080)
`pragma protect data_block
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
X6q6adye7lqa2UQlg370ChbVNvELhJN1KLLqbQ==
`pragma protect end_protected
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2024.2"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
m9qUT+fldtChniqI6IFTTNxBTM7FBU0iNgjkHvvtmZKQsDW5OztY8BWBBt0k+nwBFa2J+GGUZxJZ
18jaHgL/Nlvu9QTQ0DNk5LxuyaR1G4/tVyZNUFG5oXQHjA9afGLVM00GmzHFJ06EXgy7d1oj+e0d
Ev8eSLqph3wOijaAUtE=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
iN1a3I86VGj20JW/dhsfg9Dklezjtc4QmfqHt+bakyplWEPEP4Vqv48kQErAPN/Ul8MgdGiuiYn2
FwbtAsN66efV55sPsVduRZDGG5lrrGVgJ92NRT8MKDSEvx/9sl1WbbKrJTqAsEhG/2fCiyyTeLFd
wuA5UH5DPiwLDkdG+arBnLgKHV9RpuaRAnv3GI31WaUwaYSbuB1q/hPDd/Sg+Bt4+HyZb5ltqps0
Yh/gu/zk00iTZ0R5Hj045xmjtZWGU5xeGCtiAYuV4CiB4JEz5ewZzJr+G0VH97vfBpdyZq8T164F
CaBQPf/24VTFZZbtP0XACDCddNtIeUS3nwgtTA==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
pMEiPFZAQf6goTFIbq0MtY0j1dld4c9qA0FfaUnMFeg4GRTO/x6EoX2KhVAHgBu2gm0qxvT5BJck
JZEArujmdnYsOrtI2P10JAJJzU66YBACYam6OKfmNfY/+Ya7cqiDEXL3Sq7AVWWI6EgKoe/RrNcb
czQZ8JRSiTThW0Zhp3Y=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
LtYVpcHK/1G3aFvur5QYPnwiu//hwprprMkWOLN1vCA/j4B57THd/8eHUK9MKqYyufgsnqoNKQVh
3ZS9+APH0sxMOezX3bYV2bcTtjONSPM6+7g5gsQibE7SRPh+QIx5zGwsVBIQD5DVlwwP/vMs7lWs
KgtPEmYHMwQJ+TyRPsEhxuEsVjgXfOWhR0UdR6OXoSHLvmm9mxXYmegzts+KeQ43K3QLg+3LIYnS
BOOT3Yosty1nVSy7Ohb5cFdWuVxmbq2fPqT/0+kmIbxD1fC/xfCVuu38Zv034Ps1K6DSXG98/jm0
S9h5zn2Bat87VpECS3QdCAM/ZRIjhrDMCcYU5A==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
z4q5VbqJ00HIFaiVYg4q3BMTx01R1G45Hglaf5vBBJ3RbsxDS56mp0KTZhQwNwj/flOh4EbfMe2v
9zkuLigkgA3gpNJ5BETxjlDcwsMLTZ4JunV3jMwRlA14IuaU7ZqCRYBVwPSMyLbOcJ8vsYvgMRCq
Kg7TUIMhNmfXj9fZWd9t7WMMeUWLBR7KOynOU/LmlFVL/QHov3yWGrer3DU5HhGNP9Fn1i30p8jh
VbtXYbvStydz7j6nw8B7oZf6Bnf5KLzsIGi4MoJN7cBoGW+vt9o1YNmfpDqXv88oeyBhzSfsAE2j
whgSTz0KmFbI8UefsFSPG+oixypoZ4UV4uT9Aw==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2023_11", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
LKO7+GaQMkO974w2kcvcgyGAmP0+Wv1LWZRCvymWQGFBYYasVHsa2pn44tJZNz1h0Hqv7Jz6rMuT
tlVcV7RMBry72t6owZxH9WtkByoRq6cDryP+ZSDKbW6+2gQDgXvabL0ZrE9TKcmjbk2tVUWGyLWz
M3q9AraI8F3GyorzeeQpPMZmDuNnWifM1eCDljS3DtaKLdoiQHHYUClEil/isXQlgJIWzSVaefUk
ghN9zWIdRAcBGIMszR+UTDH0rvnWM3Cgy2M8u9RZ+pgRejtPkiau3ArWotirhmXcImN/HVU/Zxo1
47XvLRZurUNggf9+qfX1iMx73eCjti53tiJUsA==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
PWj2kYT2N+tMK+bfjDLCjIGdwGEwmDbgC5LNQ45kel5Z9eRAVIIYZij+c83EvcL2VwJjTSlF8+aU
ymEp/cl/WwKZuYbE/H9j5VoAqrH1zNe/BDfNaCaza0+VLz4/6/6N2PE/XAbQQ4cDkRkkpcaqdoV1
iuQfkMCiH73V3kk7faugsN0aIRy91a4M3sAlvcJFuIy9YchUVwm9Qw3NoBfP0IrJMTIzgEYaSkJZ
KRbyXThADJQnMY6OL5sIWf6n6qrh3Dr+PsBOr9nDnsLw8aI5llZs4rvIEQB8jQMMrdXouGFPLkzJ
zLEniR3jvcrykfdlFeBGmyBF6XJxPdEaZ2cvuA==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
YjEWFZrvUXIK+AN1uVTPdBJlQypLOirNeOehmGlvNvEn/PiMW7lsFXFgShQ5kUGymMkPlNDpSlfo
xapJ96+cj4N6WK/n+ExGvKlTiTzFEHs61gpx3XaTOdOgtK/GyPFxQUjfw4rHZGgfBgdYZDG8YSih
j6/hcRGZynQz83GMDwDTuUaitH9I8+23sA/Ja9f/yy8N76casEoBs6cqNPxyYgQ8W+Pv8H006cLz
2aH0McSQqOTouAOdAUadIIw1zzXfeM11//LSymKnim39NC7zlm5ue2Kqnn8qLxoTD2EbPOGczBxV
40J+E1AY3tPehlp+rbTmXJ9uCRnXBWmiEU2YVsomiYWn5IPREZp0/OCYZvfazQC7yY2l6Vo5olSt
ygVrWm8+WwOK8q7QTJCgbDlvuQHdiLoVNBglF6VPBWMUNrpbIAJiCwoV+Vk5R7UjWfv0Kc1A5EL1
k1zh3khpsgKDOyr29hXkvMtu9MVvCQVj+OelQYPrzkz/pTPTgVkp3iE/

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
BE4xRuvg7Rw9YBIdL+H4SCMDlTpFR2RM9VWIZM55o0qeYxA4Vb2MeloUXWl7LAWWA51yTjooW7IG
L1XpbMho4xywsAL5lhGZLIZlzzA6tDZDmg+GvEeg3olVRW3/LyNRo9ZgnonssrgZVle8I8y11maS
hrMbrrLMEYu0XIXwO3TCaY16eYVID6RqYgOXEEj1bFNkDpj1DUS4rjkVz6/+3hbkyb0+yp+McC2M
Z65xE6WTkJE298/Y52x27Mttvfh0WhAyrH3822qWaGLwJCTy5SFncSdy2/vjsuQb/Qyd1aDqpW3U
qEI8NZUvt0CdW7/VDsDUJcrM47wBkk/AAXdZuA==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
hFSAN08D8K5/BFx05ISzx42DbkAB7hrCq4iN36o/BdS3avxklDN7D5uIrrD9g3dhemltbWsvinfw
LBtgtZNS/Vtkpj2Ry0HcmrLHBa5abJFkmHCFDgf+gcz47jvpAOT7LS3V+nR9llW48GV5vyU/1Asx
cynipwbcrpbZ+hiNqw3GaWPM3mG0X2/vs2OUXCOOeHhLG3o3BTm6JvYeNUtzlf4r5+tSx1EB8RF8
6uuzhPvhJAA3FWpUI5DFLT8Tr1cqF2zHCsRmYPHLx1uOZ+Xo7Y7l94oDAteaWyNxBvlUELvAX82t
urqs9OuVyl0jw9eHwOwKmt/bMRcTOuC7kjE/cg==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
37ObbTEtZy+dYyzz0n/KW76CUdKQU/+vjBSl/agaUhcA6sBZ0nBqGfSv/staY+VWmwwjYHl2AtD+
rhH5oz0qBNbK2ebi1DfrI73fHIahJVcR2KqXofIovuJNbPYUUGapdT65eZOeIA2M9iIpliT7PPap
O+TkYs2jXcqaA4dRs/u84oP/FHCQ3RxRwbzTvOU73Si1I+yYbJuoXVs9lXC5Alruqa9xk+dey0hv
MC+7I+7XihJgn1y9+qlvEl0HXKS05QTcNryiQEw1KosPp3rwnK94OTn5gOCrx6iEhLWIstb1iYKZ
REkjN6MPlzdgeKqA2QKZDwuuxS4gKMBOQbpb1w==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 4720)
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
