// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.2 (lin64) Build 5239630 Fri Nov 08 22:34:34 MST 2024
// Date        : Tue Dec 16 15:30:19 2025
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
  (* c_depth = "128" *) 
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
ZXbQdrzJsMGkUWcCgJql01AwiA7FG1LiUWwXcg==
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
ekPMYCFRdogneLKPFPNzPIk8m30p6U717Lr6Ad5bEhdv7Z9MQXjKsWviAwWkp01kqA+uV9q/RA2A
ELfEcoiAAc+3VE7BCxfl5X1HtY4kimxuMWAdeEjrCvCjTdk+RR7tpGf92Sm3IPW5HDyUkHyRey/r
gBRwf5GJbYceIkdfcybNkftJdlYgKKMiB7wHnEQ/XL5X4ybTlVpEl95ZqmpHPWmMPWAWWOqjFeHM
znUeSViooL36J3tAH7jbqBhCHjfZCYOdh1xQX3ntT6hZtMMsc4yNTUnyxYtDSeNUi4DAtAjRhusy
EkcS9cvWowdSGCyfUn880UTttvuXTN484c053A==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
0MvE4U8tTj87zSTAqJjdsU6OfC5PPARgnkHHuRddJmTK+J1+oezmOENVMkvoovhd62NcmmO+ayZx
J9NNvsAcOKrUYJZO8qq+VfYDpc06GD7I8xYyIM5xqCdf7RwH6JI5hjx8yBxiM1HGmlFco1ob4jcD
c1rMdI4Apidf+WWeBt1Ty3d94ziam8g2Rzrql7BRZyE5Ys9i4pojxjyAPgCtw/P5maawBr6T5fUK
qI6hJgUqKRuHWly8pdvOfV2rieEEzSa+ooP9X79VYwbKdn+MjMGMqDMqQMV3cA/ODh8HnCIxt9WO
9iyi4gSvXLlJKrjaTmQ/DfpL44ZoFv8p+p9xbA==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 6880)
`pragma protect data_block
4b5aiXqo0ZwWdU+HT9afl6nU6iMolBbjgZJlQDyr4MJpWuC/MTOUEFfwazV4ZBKO30tn8Pq2bc9v
P2/rg2urohqbSSxVFaCCvEFL72ZmGDu8AFJ8Y6CbrVwfxARdxm4nMuWR3f9wD7u+7oJGjaYeOGFm
PCSVrNxImNb1CjT+nRQqwXFGxOxUsl6VFIIrmFFUrnfn45RWzpnFKdc9OKFNc+ROpJmoIxgzRMsV
3LHNHNTRBPG1wf/qtYsxzXau7FZuPdwXCxnP4UrIZ7TPQkj43ZOMO1bd6W+azEljXyUrsw1B9x+J
vpTzGwYlOtH3N/axkZCPrMBfqLpi6gqJbTTWMRp3RITxUJRSHswSstZ7L/DMJVDN1V+ksFKJwx8H
HvQCYYG6xK+Hzw0RziW2STDh2xQLdvRlK+N/rjG6d3CBaM04ZO9Zxc7JfXH0/hB8QpLv9CwVIddC
081nmrz9yKi7NFSyuO1PO7vEuukfZxnjlEh/Hm3J5ja3CtE7L+wQuWLeOF7X4WE1rGgPTEGhsabJ
CVLKpZ/YzQRzZQKlp2aHD18D1Q8YUFJd9TdZ2RLRW08w1bniPz5jhJel5riRt8QNOBANOWugt0FV
HY0QqUl8qEY0mYsVnhkioVxCS54fPJDZLe/N5XgFu08gbJ4TgBQoEXhQgiN7mmHmhAcd+9Xfb9w1
fe0rdB5pAfoS5MyTNx9yoQr59vY1YmM4gYxURgvRwq2xKeYx/AZfKsM905iYGhq72xgT6g6cmwaa
vvpoDZ9RKiHKxqwyY+gpE8FvWIzGIdTtnz8fe89OLMhfxXn6dGsTE39d6PECtarA4hgPquDaZE1T
kfEE+nm7hH5ZBfQTXvJ+uYJJU/GM8LOVgW7/WiR4cCEffU8u9iq/p+y2lOaS0NA2jkC4KIpb3w52
pQvSzU6sTFJL5UOmKrxZ+9eCnSLUEK/XzfT+XF1JHNLLlP63lTf+yxL1nNTr9mc38H6B+5WgAs94
NJh7aBmtfZBAbB8E1X07NoSmnToHwqNgVXnKDUtvxKukfq2+7cMWiHPolXiFdsuhA8s8H4CgEAIa
y89UJfchY3rImWr397f4StZrUbPUXVTf/pf0fXW4Qxxu4UA7mqaIgQyaat64pGsvwuGx6L4jQoCi
126CWE699v//V5dCEE/1lhhd9Mx/XyhpPYRNV4RzkxieA7ytopMEO7zGN4bAEY6RBCuG70Kdve/y
5CYC3DXchke5PEwljK4HwJ1leKtk1qCzra7e6niBMqBjxvblGksqddc0S0wh4O1FP9v0Hmd7qT0H
/v6MjPHUiEhWuss5MtwhCkd9vM4igLGYdXhZvHxQhy5cV+n47cYiPDslxAJh0B9F+cGOqQAA79P4
nDbuohB5hx5azPDbOMvVNVHcAk2WD0/Sqz413z6nG3O5GD7KY1x1MYh9CyucKwu/xmPcUFZIZDhF
HUUE75vQU70r7k+UeIQixU0zPfGqNEJyPMAedNNb/hCUCQ3Ghd8IseTlvv7e1AeAKWC6cGoTXj9E
fkHJICzALHXOVZUQWjMeyJdEx8+y27GoKyPl0iikkec/Vjrku/xPMuOdBIpaEiE7YH3rpRtFybaT
iKyTos+T3QLImMnqJUmPpr3cj1lClyF/bB1b1dVNhCOdzZRl6txbmcCLv2V3SIYxPBc0nL98cZfN
9rXG4T4XYiHRQCUrvOnBnjeBvZnYHwUfiI7pNbsNzCifh5/QkGPxE7cbFHE3UxjUP8VVTw7PThDY
l50xd5EaQl931rUzXUbYegkvfcGryYY/SA/lmz2+uXdCc7zXDyPQI1IYojYPcJ2sslMvvYQghrD+
wf1j8tweAOKHnKbP9vx7EPd8mqQKpqst3LFjOhM2X1L3JsOvrhaD7TLKC5jaPnbPAo1F6rDM1ns/
F+NoAsN2W5tSwP4khAQjrLO9K1fzwa7h97y6JmzproX8bpmqv13qmJQJxoQBJ7r0rKJ2kaQdI9IZ
lLd45so7MIDJIRGkOeXCKaWdgo7TzHoxp5JMEndpDP412FFTe7O2AG95z7CoM/fAFKP6AaSZbDra
vjWFnqoifsphY4V3x+YmLR8O6q3BdbC5lKq0Wxxqc0kD7xxuCTVfUdrmRytL+aUtsLdnXtGf91+C
s/SNg+lZtql1/DCt4qjbBDcvSOVdjCFDxy9e8umnwOXR+KMeJJLoiLdoemIoI77+gKIXU0cadRHq
BBgOHgd0XglTS+BXoWzIxl90Cshx9GIFiR6/stwwBHE1XJVEIMg1R9BdsludUjqAclmhZHOsf8mu
pomepPfIJhx9HXWUlNUhogj4OhZOXQgBCwtbK0z5MpadXCzgFRD9zLx3HNVxDdH3xHELjQRLnAf2
j0pII5fq0pTVtwno2EXnC/+qb5QN+gewjYypP7v0B6k8iPQG0rqx7EZ05piMjoyvdQnlt72YZvoA
1gMEhDhLZB/GzdMD7RJaDa5PshZwibdMBVY/5Gt5qvKnD145aClq6VQPskmoaFxNXPgxBAE9TLQc
v4mdQDNtJjnj4fZhgzfmN8ScOw9IRMNbqDcHVzcwcoF535TWD9/0nxvYVzkjpPIY7Pb5I+Ube6HK
9bAo0nH7yj9wqYcZZzEtX00DOA8VrbhhmwwdqSY1ix7V2wFRBMuQZ7+XkxtzrX6tYtqFxD8MTeMa
wvdNZQ3bIPR1ODfz/byniJeiEaIaKCPQ+GRcJvHumXjng5hdKFsAvi1nLhrQnOuwyy9zVCXk+XSg
j+abDhZrAzrqkYi4BKqjoAEvU8RVAQF/Dd2LyrzT3yX/BMNsSn20Vsbo2VuuJGRxZPgJDWmI2iWi
pwDz/pww63M48am1MDrkD2+KJwEQMbz1BjyacwzyoISV027YJstWRUh9W9WEo77oj7l2HmjajENE
C02JTs20n5jc/kf/cTz04U5PWkbJut1emcKSmo0IFidTCpKt1LyUb4GwIGrSUiYpZQGrN+WkET5a
4f6pFxGJO2+mj0FNuIPLXL+JScYs233GdSwi5IN7IJWZoHB+yq6hzIaTK3GF3CZo6PPT/xegIOEB
1HC/0y3Rr7IoT31xjThLn8YS9UbLrqfC9s9hppUqepRPI2y954d1usZgc27LNTr+u/JK1vwFx4Yy
3qYd2fIWFXu2WFdeztm6+K1X4O4x2Ngwsr50NY2CzBUh+i3OsKdftDkR98TUVGxS+Lil32vEbxGm
TjEvxG1NoaNsCL6FydsVrkPdS/tBUeH3h4VYQg9WOaxF6PDByzAvI7tvyPxIFsSmFytvYQUSQg4r
EtC7tiRmoWjcFQnPR5t3IhsVGTfBvF3cOWnNww7T1u9vFKqj5MJPAoQD1R8e8M2nScD9j3fWdudV
HbF/As5g0snqAehbOqlPkO955Eiv4HVYY3bL9VE5smYsoMJgs4EZ7lZH3u41iGOfhWWVYuJI7+2R
OpnKOZpLE/gDfOxvUgqpmSIbJ3IHAulm0X1ZpnO6V5BVAuXuswhrsQDb612bEoU8l5UetMQgDBOn
SMADPvHZMMU+/EQ5zRNWyFEOi0KV6em0DGKtnKaC4Goz6+DIM09V36qP5H0kdnfekfpVEmemmcdU
iJdF9PzlnleGo0ea8SwYeaNgwmwq7mxyYVwxcvgGZwLAh6L8Wz836rYWIqDcFI35NqGmSLdNkeu3
pv7di63Lj/WtoYSuRiOQZDV9yo7Y0EFAjEbvhAlWvuppMmw3QwG2bG6CFj6T20m/bzdyUDDPCa2p
RcRaBo65MsVCWktI2K40/Rk1DgQ0uidfH7/ja/A4HL48Ss9rKF6ngLE/8nHynPJtDqVKyILbmsAZ
E1jlNydAE7ImDcaCXiQKNEwGEkN8C6AAAYxJoBVAwJ67C03wpKnEL4xagiBbAlskSFGSAnYOJGVN
EvUn3nV+ni58FZdUoGHk/b8GmkIpmtIUr49NXYyWU7JJYVjySpYkoha+fVU37YGLk4wXU09IkXJr
WYO/LcBSBddeeznrYa5vQBz5XUMqQohdOagf/h6bKiukfyqMPW9V/LabsS2f4V7zPrtzEs5J5fpI
qMwJicWZiz5opqw1FgKabdOreK6TeFU0MmM7UhKb5K/rZL7Pp22gXfZ/Z4ADLR4VNxWGXGXKarsG
k0q7o3Hp08rF3MnCQWZWLEx3+s6PFyaiG/sQHgMOVDjAJLTRUa9o61Qcg//rJHDmoqLIIZSW4VQI
3EFTZZiNlNMIi5+saq/ugRaXRlmnLNTRgn+KJJqvvR3OQ5+HF9r7tqtW90dvctAWzXwAtEMAwD2K
HXpbeVJ06HLTOGGHb57zhBqD/2srHZW+ZDTjqUYV/pw/HZMo6U05dK4h7zW0V4U4Ab30vVgz3D05
DJiPMyVrUYXthwzGB8E3ceIhMJPfH5f5Ph+vkvBfuiewcoM6N3D5idKSrOnHY970rTl0fUwgKjVm
IgpDKFAfkr7nTsZxvkXGG6pRZqooXsGf/3ApjwJgukBBw05jkPeHRJBGvryd1VdK8bCMOumj8ZeK
N/kNznRi9MbNj8NSxnMMAVNXJPHK+tWDl0jT/dHkXMNh4UdBjxRGrI0ED4gYa4il8NSb1AwMST+G
YjUafXi1CJuVlH+pzFlqZLNrfWz0t7kn7CIBFkcEKNTiwLJQ/KOfVCFwMoKMx6SL76O7IAI5stwg
xmPU5Eu//6fw65RC+SehdFICtSszE7vEGZ7elmI4mrxW/OA9oFh1RyadkNEAQQKAkldaOE4udS72
1U3rjX38Kf+7WB2EwCrz8wlzp+b8mbgBoS2c2bJTGnivyolNwTo+BnnfmqOBxSf07VtbGiOws/V8
ILhMt2OWCH+uXHK2C91QTs7kFRA55d9rSm6S24az0ctmlZe+gupe0r25iTibc+Jv2+KtdqwnL0z0
lQ4zbM0vMoBxUjkuWQeFkqa/tbT0kTLnaj5iFKDEHAKbBfNXojt0S1jQ0K5mwrogRorLQTP5lBv9
KW2d/4fKtVOSEgsA/v9it/HXRA4qwlMB7U9FrW9exfse6gcEXSw1wRlfk4i4CO26M2mX4Tye+HtY
q2I6fcMKC/cUxblfLHS+xV9wjWPDYsMGdM830y2HdbrqGbsE6pPbfaZzSe4w9rcj792Y7sCVP7fn
wMfAh6nTMmnFBqPYKw6lhBCEMI733K6Bs4M/P+QcelISXQfIVmCHVdGWYay7BxYwtyDN3B0iV4F8
Ts16OCxzsr98WqCGXZT9xGd8cczD0u/vuDhJmfOKHVDWO9M7a63DjA/JPbzQEz7U4aeQKWrtvomT
PZdlZVcC6k9w8omqo1H1ggK7lVSxKdGS4DI6brLJJh9+WBINO+eOif9tAx4/L1vjRwFkNExHM5Jm
Y/JbjN6mjl8E7RXohb402N4QZjHXUsvp1GcGtGlYVhMKbqKjOd0cIlly6eT62hNz23LBvpuED9Uv
W31N6OSS1gkUD5BQtixF2AAE1hbvvf9vt5673PIlMpWQY7vftyb6O3OH1E9kLEpRI9gcJRB80SXv
e19RGnaOnlEHUnRSFD4SVQkTbSiADD2jJcSLqkkn/PWrf+Qg5+0lp/yUz9qy/r6zODpTmYbrGZS/
kqmoGqJToKG8p/xpZhepCIiH27G37oXghggzu4ibPmavafWLYENxIjSvMMiwHBTOLlYagV4M0Skn
sb73PhBdnF5GbisPbwqqMa6ZKYIH03P9QIUdcWlKcVWKB5+mKe519ty60esjC99HJrKf8xk5swEW
2BpH59ufvTCe1zZoN1apRA8pPkqPxRF9CTFhBbrOYnWLClWLN0Y3ynqPLu9Zs8vY3jcKU0KF0942
4XAF/ah9WY51y/nKFcxyDXEgfh5bAXHq89eoyHzii+X/faVOI8tQ+lTALPX6jWm98xFpF98Ur3Cz
x+e2tfeCWEiJ5JgcbTKQbAJsSL5TIGKhNwVH40Abmo5ZWiubPwuxpx20WmMMllh7oW5e7OEnTp90
HqcT3XgSJYptcqlK0uLDbFLlp75NtN1zIUQAZqn9WHFal40sT0c3P+7r/i+baaY7VoTINXdAlNMX
KH4BGr4R9cTw/11SvNjpcIZm6BNseznh1xpYyBUHGb+TT1/ve33PW/lsjoGu3AWQbgsvY4qwyvg+
fQxadt4VYiT1izyEYijmJMe1mwBj/6dUs2TDXA6E8K0PpY3xUJykw8E41i9KTo5JMR9N7vVRwgRb
qQkpa26TAmOKqELyn9ias27kiDXDVdlABqiNQ/EgqWe02IRVX0j2ST7L+6HsxYfOvMTxiAxr8ku4
6fjIUMA2VrP5IQPv6lX/TRtlbZoN18n6nRBHyg1bqFgKDL1KO246Ji4Vu1EQbSux+mxiR0DUxDlL
Xp/DNxugW7BFUs6vgYR6gLZJamtCQ7aV8IjVu66Bje1E0A4Gnfs/B+O8G/Cye5kShUWjgR5rsRc7
M42siX7CnxYnTYJquaJHqHnW0Ux5Hbo+84IfV8A8+baxeL55bPSiKjaO6e3TvUTU135KkFf+r+ad
RC7/BDD+ZcBC5LzYJKnKLzcd4a+CA54d9BIc552sWW/1kmVpSgJF5gN4rgsRMKdRi0uennivEXc7
ztGiypNq7hUbw/5deuF/KfAN172kFp36BnmgYNkfD0O79K8cJtF+uQATZhM5T4ahtWqTMoGAenHp
0zuwy2zaBWtNRuAjo5jQDFpUc/pWmR3maYrDrqZNerSwMyKPjTlM0Lm3UqktwTXRVzDngW5OXSH4
CMVFdVpLFc7OisZPRKhhRxQp/8syoVEKdoTQb2IcSHlj7EhqrInE0rDfdYCUW2tSDbOMI6eyEDdo
BYHY8aDyDJqqay+7nwbq/oC9OksYC8SgZ7ZG75x9ns7aVTRbXlMPwmygnV6oliH6vnSRLvsO13ne
ZCaab2Cv+kN5oizNwEKeja5K+xY4bYn/TlEgjXlMPWGFuYI3retNPGr/Hqf1/igvXhibEr1goL//
4p7IpSabKs+Uesox10VCCuk6L7exTbjL+DQbIehRgaG2wcfay+rLFdT0Emc/IxLQBn+kYEZuDAq1
/jK3J1bMRyyJpxzWQ4x0Ky2Wyv5ojjUMuyXU/3ddRuHMOp8HW9KgB6yRO2qxn8jqhRVIPl5gxDx0
hbZSg3isEPfK8XjjdYL2p/vL9mDcq/KyhNYIDha7ERgeTbhAlRe5hIYDex9pu1yq/8yJd6gkpPeO
9NdjrUTlpg5NNk4KV90i8k9URMOj8IRByX75dr19HDZ8eiU8nt3ZpZmNVjOB4tbxUfkdlwA3yxqB
5Q6Qi0v2P84z1o23JBy3/d73h0hrhxaPh1YCLLnuhdVT+B986tdqmL6sEsayYFpfvtvZMTLu243w
2oxzqk42h9ctYO5GdSydBV84LvaiJD1rq4vU9N5R1ozwkWXFXqGGURso/hL2OvtoQ1xpRGpgOiUv
E1YqJqUdpNn+Al4wY5C84qokxjI/tzQk7nu3/LCG28HlLLds78JHl+1qMXi31jGow5EN9z8kJX1k
GkorZWzRZYXp8VcHWtwDakMVepF/67AvLd7EzvlvoIe9285bI3gG2cI02zBH8kXt7BdqRsPPsGBN
mAk/n9isnFCcm9ebiiCMXL8YiYwgLlBq5xkip0806CdX5t7fyg7JbKy5RA+nlVsow4huHz4keKhy
0JjhsvhEbBGhaDxJJQoB5EMwnEhwoRwitoFgIUqCDNNKfZsOCCUARUo9arPW17KURbguZ2W8XAvd
Q5JSKvr8422fKQyRhpRlU3o2d+dtQHJgLPNIk/gED9NDVWLoqoU1Rhc1+Pv62DWB+7kKgn2fHWGi
DX8tBC3iNE65T6eH+eoH8NLbxxLR/payPdh2DPaPNJXhkkLacKOLwsuX0pRdB1g0qSCAWsTZ8b02
xCpKe54u96izh+cD/5fl7EXMepdvgSUuL1QSYKgTw9Olk7MxhsIPtQ95hslWk6CyOUhiOfl6nNjV
vH+TA0RekmSQ3pQemMM9wPrKm4ZHWLyb28BJ9Ja0vHoFIrxmEloekVnjt3koEij+letxrj27FqWm
W0GalvtZUgRmYprw61xh4d612aFfWhVsznr11n//5uGaVN6zyzeB8DYqVRU3jia4th05zim5EMa9
ZU0w4e8rkNuDk3fmhMQIHnWv5mM3fa+IidfXn8A0snkwgw9wCh6fTbya81+qRVLyStNfJWtQR2a0
OGDTPl1h7c1M1MZsRPTqKVinBm/1DST36JS3mfLp5cWCpmiZJYLHaDdJvCcQ65Tyu21PRmXUjQCk
fLMv5txqX3Egi0Q8d1pPTgdr8m3ClRAOZruFC4q85YtoQYTMjVrewRdT4KpV6hizq5tly2/u/Pb7
0/LqbNWJQjKLBCNBR9clr154pVWKXqaApDMZrTtFpGlbvk8tyYHNqpaXpCV3xmUp3me11/yGe0hb
IplVsMDO5HCSiKuKujudeC/VBFPVySo+RyQO6ia9jiB9Yhmu0Urwj/lrDyidlJ0Zn/EEbRnLq5RD
wsfabzWoFfS6ytkIL7dxe5RJbgZr2U5Z4rmUAlzUdzU4Pau+NC+hLGSOokLTL95kTS15nb64ws2j
lPnmekYnQfP+Lh5H19PN3+3r1jREC7ng1ovWCnFNQpJG8WglgFX7uEAKIiYKQyjjujxfB/Blj2yy
kZYGnLhVkrq7Wc4UFp1PKW38Z5d8ASsqSRgS1bJOAdBU34drcqAVzrff6Zb7oL0MCxFIBl+EBdgx
c1GY8Zd46XG/sKi4+RdmZbJI2ZxGuq7LNfX7vojv4Zzm53oqhFJitmUdIvVGQmWIZ+o0DgZl9I05
eJTHikoz/iKSkN3DDC7jqIDeq2d23y8aSXlwhr9ObmMNtnvwv2nBj1yn76wfOKez3G6/FVT0QCct
4mBSlvfNImuomW2dXbtTZacB0spT3b3YiSONgQBpUPnDy4PdIEwz6skHovv0bi5sTIgi/bbLv7iG
I5y8BKMpZiemMUeIMlkODHgit/Eo39I2GQW9YF2aTxwh0PAJuQ2nnV3AxNrTxllnzpkVVVlNG2RM
XheAUWFPl1yBTQ/il219AOqyGDzOKJaVBZiqeeYEos/R6LuGJlMwoTVaOTKNdu1SGw2lZQupp78/
+t0Z5YUOkoY5/lYL9XRGCF1b2h+bOTmQR5c1Ls8vJ4OlDTVCiQMdjdDmGnD1cGewJlFbf0d7QBjo
AvZMCDMaPKRa0RrWwGO8iWGasWtrGb+NK9kOX/6QNpY3T5887znRcQ==
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
