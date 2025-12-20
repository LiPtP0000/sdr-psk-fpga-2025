// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.2 (lin64) Build 5239630 Fri Nov 08 22:34:34 MST 2024
// Date        : Sat Dec 20 18:02:44 2025
// Host        : LiPtPDesktop running 64-bit Ubuntu 24.04.2 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/liptp/courses_2025/general_ex_6/sdr-psk-fpga-2025/ip/Costas/err_detect_QPSK/err_detect_QPSK_sim_netlist.v
// Design      : err_detect_QPSK
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "err_detect_QPSK,c_addsub_v12_0_19,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_addsub_v12_0_19,Vivado 2024.2" *) 
(* NotValidForBitStream *)
module err_detect_QPSK
   (A,
    B,
    CLK,
    CE,
    S);
  (* x_interface_info = "xilinx.com:signal:data:1.0 a_intf DATA" *) (* x_interface_mode = "slave a_intf" *) (* x_interface_parameter = "XIL_INTERFACENAME a_intf, LAYERED_METADATA undef" *) input [15:0]A;
  (* x_interface_info = "xilinx.com:signal:data:1.0 b_intf DATA" *) (* x_interface_mode = "slave b_intf" *) (* x_interface_parameter = "XIL_INTERFACENAME b_intf, LAYERED_METADATA undef" *) input [15:0]B;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* x_interface_mode = "slave clk_intf" *) (* x_interface_parameter = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF s_intf:c_out_intf:sinit_intf:sset_intf:bypass_intf:c_in_intf:add_intf:b_intf:a_intf, ASSOCIATED_RESET SCLR, ASSOCIATED_CLKEN CE, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:clockenable:1.0 ce_intf CE" *) (* x_interface_mode = "slave ce_intf" *) (* x_interface_parameter = "XIL_INTERFACENAME ce_intf, POLARITY ACTIVE_HIGH" *) input CE;
  (* x_interface_info = "xilinx.com:signal:data:1.0 s_intf DATA" *) (* x_interface_mode = "master s_intf" *) (* x_interface_parameter = "XIL_INTERFACENAME s_intf, LAYERED_METADATA undef" *) output [15:0]S;

  wire [15:0]A;
  wire [15:0]B;
  wire CE;
  wire CLK;
  wire [15:0]S;
  wire NLW_U0_C_OUT_UNCONNECTED;

  (* C_ADD_MODE = "1" *) 
  (* C_AINIT_VAL = "0" *) 
  (* C_A_TYPE = "0" *) 
  (* C_A_WIDTH = "16" *) 
  (* C_BORROW_LOW = "1" *) 
  (* C_BYPASS_LOW = "0" *) 
  (* C_B_CONSTANT = "0" *) 
  (* C_B_TYPE = "0" *) 
  (* C_B_VALUE = "0000000000000000" *) 
  (* C_B_WIDTH = "16" *) 
  (* C_CE_OVERRIDES_BYPASS = "1" *) 
  (* C_CE_OVERRIDES_SCLR = "0" *) 
  (* C_HAS_BYPASS = "0" *) 
  (* C_HAS_CE = "1" *) 
  (* C_HAS_C_IN = "0" *) 
  (* C_HAS_C_OUT = "0" *) 
  (* C_HAS_SCLR = "0" *) 
  (* C_HAS_SINIT = "0" *) 
  (* C_HAS_SSET = "0" *) 
  (* C_IMPLEMENTATION = "1" *) 
  (* C_LATENCY = "2" *) 
  (* C_OUT_WIDTH = "16" *) 
  (* C_SCLR_OVERRIDES_SSET = "1" *) 
  (* C_SINIT_VAL = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "zynq" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  err_detect_QPSK_c_addsub_v12_0_19 U0
       (.A(A),
        .ADD(1'b1),
        .B(B),
        .BYPASS(1'b0),
        .CE(CE),
        .CLK(CLK),
        .C_IN(1'b0),
        .C_OUT(NLW_U0_C_OUT_UNCONNECTED),
        .S(S),
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
oeiSycU/+UTHUctAP/1EG0ARA7oWt+xFQ9F10RrtHn5SZO+NXJ2Sm1lpLWPVfe/IDP9GV69i1poN
BhSAs1MJDIQLH5itROLuDXYYF/elSJEMeT/k73s+GON1baIJHccZb15U9aChMHgHXrYpoUMUrHTj
cWKmcYvrvycsSZ0Ngj0=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
qORY6ws3UX1BZqnQJ1io0G9Nj1mDoEV6ROyL+jga0TOnG+bD0DFym5LX2wB5jhQI/eRptItp6+Xw
3dz9zFmq8NXFF+H+NoAKmelb5s1UO1+nfsrEsY8jRSPwzzSzuTFf9OtMNFu42aJmeH09lBQfBPMd
0g8oj4NEftYfLjmarR5bIjHb/GieQEuAG4o3tNixOIZPopFrEcLQmXA0/6Si94XRfX8SGit/uPiX
Cm3Ld7fjVMOIf5S5tOgoEZwsHYzMx0XvK3i+9QPsCeqsuebvotwtKvZDSmshdCRoRGC2h/2yNcZl
ec51FkbmEd1je49PLDVQ8/qLCS6k38XKHO3MBQ==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
lmkJZn2yha+73EQxzvf2ftjA2ZPsXiOCU7WmgNFhW/A6MvolqZ8LDAIchWnJc/ZHbIScX4wfK6+7
nDmo6Gs7JUBsq8skyRrsRz+cU89cm9KQWXWgtduzrbZnLzKX46ZgLyQglaYI6K3bULnKfCjO8SLR
LtNR6Q2KaQzjkJvk6SQ=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
eUZvqSLYSMj/GdGxHahsqEMos5RJfJi42gE7cSTGksQEWHG4i3FQfGZX1wHlW544I/vgSbV+T81a
VLBgL8TiR93gf3RM05BCx8hCdksptudNbJ1B+4bvi8ZUhlGzurVccrLFZwFViff1f7GRdvDjzWaC
gOP2Ljbv4XRXnLGH2pxiBcZOMaKwAlxIvD4LazzzRpctyr2JFmoxUvEo+YztJYzUGHSBsEtnzBtd
J7yR39/fIvbDUpo/EHHYPEgeKU4TqN311PIFFg4H/jMgjESY+COMLQNxYMNBoLECrtgjYfOa0o2M
cChrq3YEH96IEyG8GPIv/BrjL3zNOZfog2sp8w==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
K26hlSK1EjbroYKyAOeyuiAeDIHUk71YecuhEaZditw+NrpQu3KoUAiuicPSmI1CMdSZyYBxyLV5
1zZW6PAXj/jSMlODXEo5cpb86txEmESnLjH9zpgRiRvN5tSxGAIHxnuwOlqT6Oqsyek5yoTywyTz
lAjGwIvXleEv832/9ERcxAFOPqeI5aKS39t+VTcC9fhAnvrMTACqwFgkEWl8O5l0B5tK49ogIRlj
NmgVEAnTph1Jz2k5wajNZccl3LPj/11FbVllMHM8UV3jR/Jn21gWOnBcc+Z55sGeUvOMdOXuv1gX
OU8m9JenUD3vWSVeyg3klIRuYc+H8lLDlxT70Q==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2023_11", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
bzXdP1pGOW3mmxgqQfwXHtnVzDGC/wEa2NlskilDjfkNQUN5CsHuexL9ELnpc4xM656F9IQy3qdN
piNJKaCQxyCFaAKUELbM5o+y8sbqpyVb7p+1PEkmVqZEX6WN4hWeKD20/nlshmC7fHDGYRDOFHQv
UVCqnndg8GmguGkFVlc6xNb0DB+UFIUeMVxsbRC3c+5xuIKlUpf3xO2wJ2JMcHsGoGExA5jDpVtC
XUb6lRjP6FQKVPpHxVM43BDo4meN0J4mZJgJ6Y0NGl7p2hIpw2B3FUeCsGuMBHa1yyjtbeaYm04V
ZtsEdxqhatDH6Hbh1HmBYUrqB5AWn0IQCFBcJw==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
E9YZrDeBcNG88vADiIeQq98M+D+IK5O8qKdsAiqH8H2Vq6CihreD0CvL8FNmEeeK29hS1YcWPCIM
Vwii1zmOvyMg70UBVcqHUSHSCU+9gUfFtXhbceEsyGvflmbTqPLzIQv4+JAixbrvmdtDkAnrgBBb
mP2pUJpAbd2EJ5aSksRcY7nZxv/9/cPYiDfnGma6GIwsGcVmEfX45fEWszsNE5cuwZ9mDYww+Wwr
4TQ7mHobAuu8bFp870HEVz691DIkWHFCis3+2xdsOqJFwFIrNbUTXpJyDq7aB1bMVpfsWFJiR/nd
m7QGmvoxXtZB4099VGFkmiRQoe43NF881HmROg==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
XWIUz3r9K8YdMNtaDPZkHe/sQ6BdHgzj6ek4zBJS2bZbt+F9Uuu0cDLJ/G4cMqkL7Euw5Tyy09Ba
kqvksnSP/Q34/hUL6lgViALqcO5b4oL7wuCqzJ7ghXQ7IOU3kPn/zDkXZ53Xf4RQCR8EYWxobBcX
C5jBL3Ra174J3ZNpwK8jSxkoH/zXfIy7YzwVkOK3sfYyiBROekX3pLu52dooP6VCZeGDVfZQi3ki
2QUbldTjM807egjriAka63+4cLzrlil3HjPPhJ1jsWqpP/b1pEPDjtfRt3qRC6q01mbnuQhJc/Qp
fWZoKt6T5F5FHmAdb9HwiGfxQmOXxTXiCCN8OgZnNOOeGEloQoB/OjByD+bzq9D3fGzHZOidm7xG
YeiwIX+r8L4p7fPa8tXtyzbTQD+doc9JsPYl2eweVHAqvXFUQRL17bAsxW3MsaLOJa/77ZbTBkvx
vitvirW0oMKOGwQ9n/yo7LteTENDBnMrmNJhoklTavuV+XSZqje0USVQ

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
YZ//P+GUHQDqpn2u7+vaRR/n6pkgMcX0ltpdiACAy9T1rY9/JIRYQaB0jbllhOrQAppfK9GfyabA
0PpVWsb2l42OnLoZg5rlWo6g+aaOAe8Vii++hndQmXs9M3gbv6lUmrE7P+u/8LdmuRaPzEUnFJeH
tn1O3IjnizGIsbwnD7lPOtetKIA0X9BIdwHx0x4vH845vPXdzz210rc/Y/PP6NN8uHzxeYaE5s0w
sr29XI9ibUMV07reHGJOZbiAbzzUMELVDuLeHFra4b1zriwCUVbeax/RhTcNggdKjbcpjo8HT/yW
IHglsLc4qAt3aTStevZ4b03narZeDNBHdSPhrw==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
EsSOcM2Ymz4XVAa0+f0dwPkTVaLSDSU6b/FPqA/TuuKf9X+OY4I0pT12//yNB5tSSxRW6aTsvpFT
isjZq3EDfIjvVzkFvRB+gAIJfFLUz+wE9HMbvrIkVpouAIjjjiXwQyX/8bF/8wN6QhWAr327PE94
OSYhfM22sNAfyr/tpX0BQe6zkO7I8wC8s0A+XHMDHmzfCA0ACcTwMhv7Hn4O4lBQbqhlGpdCY2T+
IhGXWCY/rXETUI/myVT4br4jxSFqQajZotIjycwHFeS+Gb3eUaXY+5Bsm8X3WAWW5RZiecGzoND7
uha2V8ClYn3Z9DcxmKp8nJn08TwK97bL98hxwg==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
OApFoHJ3RKPX62eyc4yYtb5WJ3Qq2xS6L7LmVy1hGXfeO5s98jlGjNSDa+MYB7Vj9QU2mlejnFqT
EtDgJngAQuR4gPz6gdKAvARnH9/YyO/8gmkUmHvHhHOZdeho5P9VUagspwSb9O51a3yP+ubv3Jd6
7K7oHXPeFume77AEP0tsCheh0r/9IkwWu4CrETL/Xccob5Am5wEp6fStopqDNThZsQu/i+9Id10z
/nuVz+nBzYgcU1zL1FZfKrKqATGivEVsKDaY8Hhy/z2COk6iT9/5HLY2QTXDn6npr2PzbZXt7vyW
E9/1Op+Z8E+6CnWp1HXH4uMJGVTS6Kr6yGU60Q==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 2656)
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
oeiSycU/+UTHUctAP/1EG0ARA7oWt+xFQ9F10RrtHn5SZO+NXJ2Sm1lpLWPVfe/IDP9GV69i1poN
BhSAs1MJDIQLH5itROLuDXYYF/elSJEMeT/k73s+GON1baIJHccZb15U9aChMHgHXrYpoUMUrHTj
cWKmcYvrvycsSZ0Ngj0=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
qORY6ws3UX1BZqnQJ1io0G9Nj1mDoEV6ROyL+jga0TOnG+bD0DFym5LX2wB5jhQI/eRptItp6+Xw
3dz9zFmq8NXFF+H+NoAKmelb5s1UO1+nfsrEsY8jRSPwzzSzuTFf9OtMNFu42aJmeH09lBQfBPMd
0g8oj4NEftYfLjmarR5bIjHb/GieQEuAG4o3tNixOIZPopFrEcLQmXA0/6Si94XRfX8SGit/uPiX
Cm3Ld7fjVMOIf5S5tOgoEZwsHYzMx0XvK3i+9QPsCeqsuebvotwtKvZDSmshdCRoRGC2h/2yNcZl
ec51FkbmEd1je49PLDVQ8/qLCS6k38XKHO3MBQ==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
lmkJZn2yha+73EQxzvf2ftjA2ZPsXiOCU7WmgNFhW/A6MvolqZ8LDAIchWnJc/ZHbIScX4wfK6+7
nDmo6Gs7JUBsq8skyRrsRz+cU89cm9KQWXWgtduzrbZnLzKX46ZgLyQglaYI6K3bULnKfCjO8SLR
LtNR6Q2KaQzjkJvk6SQ=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
eUZvqSLYSMj/GdGxHahsqEMos5RJfJi42gE7cSTGksQEWHG4i3FQfGZX1wHlW544I/vgSbV+T81a
VLBgL8TiR93gf3RM05BCx8hCdksptudNbJ1B+4bvi8ZUhlGzurVccrLFZwFViff1f7GRdvDjzWaC
gOP2Ljbv4XRXnLGH2pxiBcZOMaKwAlxIvD4LazzzRpctyr2JFmoxUvEo+YztJYzUGHSBsEtnzBtd
J7yR39/fIvbDUpo/EHHYPEgeKU4TqN311PIFFg4H/jMgjESY+COMLQNxYMNBoLECrtgjYfOa0o2M
cChrq3YEH96IEyG8GPIv/BrjL3zNOZfog2sp8w==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
K26hlSK1EjbroYKyAOeyuiAeDIHUk71YecuhEaZditw+NrpQu3KoUAiuicPSmI1CMdSZyYBxyLV5
1zZW6PAXj/jSMlODXEo5cpb86txEmESnLjH9zpgRiRvN5tSxGAIHxnuwOlqT6Oqsyek5yoTywyTz
lAjGwIvXleEv832/9ERcxAFOPqeI5aKS39t+VTcC9fhAnvrMTACqwFgkEWl8O5l0B5tK49ogIRlj
NmgVEAnTph1Jz2k5wajNZccl3LPj/11FbVllMHM8UV3jR/Jn21gWOnBcc+Z55sGeUvOMdOXuv1gX
OU8m9JenUD3vWSVeyg3klIRuYc+H8lLDlxT70Q==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2023_11", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
bzXdP1pGOW3mmxgqQfwXHtnVzDGC/wEa2NlskilDjfkNQUN5CsHuexL9ELnpc4xM656F9IQy3qdN
piNJKaCQxyCFaAKUELbM5o+y8sbqpyVb7p+1PEkmVqZEX6WN4hWeKD20/nlshmC7fHDGYRDOFHQv
UVCqnndg8GmguGkFVlc6xNb0DB+UFIUeMVxsbRC3c+5xuIKlUpf3xO2wJ2JMcHsGoGExA5jDpVtC
XUb6lRjP6FQKVPpHxVM43BDo4meN0J4mZJgJ6Y0NGl7p2hIpw2B3FUeCsGuMBHa1yyjtbeaYm04V
ZtsEdxqhatDH6Hbh1HmBYUrqB5AWn0IQCFBcJw==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
E9YZrDeBcNG88vADiIeQq98M+D+IK5O8qKdsAiqH8H2Vq6CihreD0CvL8FNmEeeK29hS1YcWPCIM
Vwii1zmOvyMg70UBVcqHUSHSCU+9gUfFtXhbceEsyGvflmbTqPLzIQv4+JAixbrvmdtDkAnrgBBb
mP2pUJpAbd2EJ5aSksRcY7nZxv/9/cPYiDfnGma6GIwsGcVmEfX45fEWszsNE5cuwZ9mDYww+Wwr
4TQ7mHobAuu8bFp870HEVz691DIkWHFCis3+2xdsOqJFwFIrNbUTXpJyDq7aB1bMVpfsWFJiR/nd
m7QGmvoxXtZB4099VGFkmiRQoe43NF881HmROg==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
XWIUz3r9K8YdMNtaDPZkHe/sQ6BdHgzj6ek4zBJS2bZbt+F9Uuu0cDLJ/G4cMqkL7Euw5Tyy09Ba
kqvksnSP/Q34/hUL6lgViALqcO5b4oL7wuCqzJ7ghXQ7IOU3kPn/zDkXZ53Xf4RQCR8EYWxobBcX
C5jBL3Ra174J3ZNpwK8jSxkoH/zXfIy7YzwVkOK3sfYyiBROekX3pLu52dooP6VCZeGDVfZQi3ki
2QUbldTjM807egjriAka63+4cLzrlil3HjPPhJ1jsWqpP/b1pEPDjtfRt3qRC6q01mbnuQhJc/Qp
fWZoKt6T5F5FHmAdb9HwiGfxQmOXxTXiCCN8OgZnNOOeGEloQoB/OjByD+bzq9D3fGzHZOidm7xG
YeiwIX+r8L4p7fPa8tXtyzbTQD+doc9JsPYl2eweVHAqvXFUQRL17bAsxW3MsaLOJa/77ZbTBkvx
vitvirW0oMKOGwQ9n/yo7LteTENDBnMrmNJhoklTavuV+XSZqje0USVQ

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
YZ//P+GUHQDqpn2u7+vaRR/n6pkgMcX0ltpdiACAy9T1rY9/JIRYQaB0jbllhOrQAppfK9GfyabA
0PpVWsb2l42OnLoZg5rlWo6g+aaOAe8Vii++hndQmXs9M3gbv6lUmrE7P+u/8LdmuRaPzEUnFJeH
tn1O3IjnizGIsbwnD7lPOtetKIA0X9BIdwHx0x4vH845vPXdzz210rc/Y/PP6NN8uHzxeYaE5s0w
sr29XI9ibUMV07reHGJOZbiAbzzUMELVDuLeHFra4b1zriwCUVbeax/RhTcNggdKjbcpjo8HT/yW
IHglsLc4qAt3aTStevZ4b03narZeDNBHdSPhrw==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
EsSOcM2Ymz4XVAa0+f0dwPkTVaLSDSU6b/FPqA/TuuKf9X+OY4I0pT12//yNB5tSSxRW6aTsvpFT
isjZq3EDfIjvVzkFvRB+gAIJfFLUz+wE9HMbvrIkVpouAIjjjiXwQyX/8bF/8wN6QhWAr327PE94
OSYhfM22sNAfyr/tpX0BQe6zkO7I8wC8s0A+XHMDHmzfCA0ACcTwMhv7Hn4O4lBQbqhlGpdCY2T+
IhGXWCY/rXETUI/myVT4br4jxSFqQajZotIjycwHFeS+Gb3eUaXY+5Bsm8X3WAWW5RZiecGzoND7
uha2V8ClYn3Z9DcxmKp8nJn08TwK97bL98hxwg==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
OApFoHJ3RKPX62eyc4yYtb5WJ3Qq2xS6L7LmVy1hGXfeO5s98jlGjNSDa+MYB7Vj9QU2mlejnFqT
EtDgJngAQuR4gPz6gdKAvARnH9/YyO/8gmkUmHvHhHOZdeho5P9VUagspwSb9O51a3yP+ubv3Jd6
7K7oHXPeFume77AEP0tsCheh0r/9IkwWu4CrETL/Xccob5Am5wEp6fStopqDNThZsQu/i+9Id10z
/nuVz+nBzYgcU1zL1FZfKrKqATGivEVsKDaY8Hhy/z2COk6iT9/5HLY2QTXDn6npr2PzbZXt7vyW
E9/1Op+Z8E+6CnWp1HXH4uMJGVTS6Kr6yGU60Q==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 12208)
`pragma protect data_block
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
tOAoR46vV3bYXA==
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
