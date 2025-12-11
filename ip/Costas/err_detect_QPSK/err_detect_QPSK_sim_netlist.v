// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.2 (lin64) Build 5239630 Fri Nov 08 22:34:34 MST 2024
// Date        : Thu Dec 11 22:19:19 2025
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
    S);
  (* x_interface_info = "xilinx.com:signal:data:1.0 a_intf DATA" *) (* x_interface_mode = "slave a_intf" *) (* x_interface_parameter = "XIL_INTERFACENAME a_intf, LAYERED_METADATA undef" *) input [15:0]A;
  (* x_interface_info = "xilinx.com:signal:data:1.0 b_intf DATA" *) (* x_interface_mode = "slave b_intf" *) (* x_interface_parameter = "XIL_INTERFACENAME b_intf, LAYERED_METADATA undef" *) input [15:0]B;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* x_interface_mode = "slave clk_intf" *) (* x_interface_parameter = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF s_intf:c_out_intf:sinit_intf:sset_intf:bypass_intf:c_in_intf:add_intf:b_intf:a_intf, ASSOCIATED_RESET SCLR, ASSOCIATED_CLKEN CE, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:data:1.0 s_intf DATA" *) (* x_interface_mode = "master s_intf" *) (* x_interface_parameter = "XIL_INTERFACENAME s_intf, LAYERED_METADATA undef" *) output [15:0]S;

  wire [15:0]A;
  wire [15:0]B;
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
  (* C_HAS_CE = "0" *) 
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
        .CE(1'b1),
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 2640)
`pragma protect data_block
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
hFASDD5R6u6y0XOAFzRf2tf3
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 11808)
`pragma protect data_block
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
Fcu6PnDWEMJq
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
