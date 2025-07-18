// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.1 (win64) Build 2902540 Wed May 27 19:54:49 MDT 2020
// Date        : Wed Jun 25 12:20:28 2025
// Host        : DESKTOP-UHUOE6D running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               d:/Xilinx/Project_NR/again/hw.srcs/sources_1/bd/system/ip/system_DVIClocking_0_0/system_DVIClocking_0_0_sim_netlist.v
// Design      : system_DVIClocking_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "system_DVIClocking_0_0,DVIClocking,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "DVIClocking,Vivado 2020.1" *) 
(* NotValidForBitStream *)
module system_DVIClocking_0_0
   (PixelClk5X,
    PixelClk,
    SerialClk,
    aLockedIn,
    aLockedOut);
  input PixelClk5X;
  output PixelClk;
  output SerialClk;
  input aLockedIn;
  output aLockedOut;

  wire PixelClk;
  wire PixelClk5X;
  wire SerialClk;
  wire aLockedIn;
  wire aLockedOut;

  system_DVIClocking_0_0_DVIClocking U0
       (.PixelClk(PixelClk),
        .PixelClk5X(PixelClk5X),
        .SerialClk(SerialClk),
        .aLockedIn(aLockedIn),
        .aLockedOut(aLockedOut));
endmodule

(* ORIG_REF_NAME = "DVIClocking" *) 
module system_DVIClocking_0_0_DVIClocking
   (aLockedOut,
    SerialClk,
    PixelClk,
    PixelClk5X,
    aLockedIn);
  output aLockedOut;
  output SerialClk;
  output PixelClk;
  input PixelClk5X;
  input aLockedIn;

  wire CLR;
  wire PixelClk;
  wire PixelClk5X;
  wire SerialClk;
  wire aLockedIn;
  wire aLockedOut;

  (* box_type = "PRIMITIVE" *) 
  BUFR #(
    .BUFR_DIVIDE("5"),
    .SIM_DEVICE("7SERIES")) 
    PixelClkBuffer
       (.CE(1'b1),
        .CLR(CLR),
        .I(PixelClk5X),
        .O(PixelClk));
  (* box_type = "PRIMITIVE" *) 
  BUFIO SerialClkBuffer
       (.I(PixelClk5X),
        .O(SerialClk));
  system_DVIClocking_0_0_ResetBridge SyncLockedOut
       (.CLR(CLR),
        .PixelClk(PixelClk),
        .aLockedIn(aLockedIn),
        .aLockedOut(aLockedOut));
endmodule

(* ORIG_REF_NAME = "ResetBridge" *) 
module system_DVIClocking_0_0_ResetBridge
   (aLockedOut,
    CLR,
    PixelClk,
    aLockedIn);
  output aLockedOut;
  output CLR;
  input PixelClk;
  input aLockedIn;

  wire CLR;
  wire PixelClk;
  wire aLockedIn;
  wire aLockedOut;

  system_DVIClocking_0_0_SyncAsync SyncAsyncx
       (.CLR(CLR),
        .PixelClk(PixelClk),
        .aLockedIn(aLockedIn),
        .aLockedOut(aLockedOut));
endmodule

(* ORIG_REF_NAME = "SyncAsync" *) 
module system_DVIClocking_0_0_SyncAsync
   (aLockedOut,
    CLR,
    PixelClk,
    aLockedIn);
  output aLockedOut;
  output CLR;
  input PixelClk;
  input aLockedIn;

  wire CLR;
  wire PixelClk;
  wire aLockedIn;
  (* async_reg = "true" *) wire [1:0]oSyncStages;

  assign aLockedOut = oSyncStages[1];
  LUT1 #(
    .INIT(2'h1)) 
    PixelClkBuffer_i_1
       (.I0(aLockedIn),
        .O(CLR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    \oSyncStages_reg[0] 
       (.C(PixelClk),
        .CE(1'b1),
        .CLR(CLR),
        .D(1'b1),
        .Q(oSyncStages[0]));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    \oSyncStages_reg[1] 
       (.C(PixelClk),
        .CE(1'b1),
        .CLR(CLR),
        .D(oSyncStages[0]),
        .Q(oSyncStages[1]));
endmodule
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
