////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: P.20131013
//  \   \         Application: netgen
//  /   /         Filename: config_buffer.v
// /___/   /\     Timestamp: Sun Jun 21 21:04:17 2015
// \   \  /  \ 
//  \___\/\___\
//             
// Command	: -w -sim -ofmt verilog E:/micap_amit/ipcore_dir/tmp/_cg/config_buffer.ngc E:/micap_amit/ipcore_dir/tmp/_cg/config_buffer.v 
// Device	: 7z020clg484-1
// Input file	: E:/micap_amit/ipcore_dir/tmp/_cg/config_buffer.ngc
// Output file	: E:/micap_amit/ipcore_dir/tmp/_cg/config_buffer.v
// # of Modules	: 2
// Design Name	: config_buffer
// Xilinx        : C:\Xilinx\14.7\ISE_DS\ISE\
//             
// Purpose:    
//     This verilog netlist is a verification model and uses simulation 
//     primitives which may not represent the true implementation of the 
//     device, however the netlist is functionally correct and should not 
//     be modified. This file cannot be synthesized and should only be used 
//     with supported simulation tools.
//             
// Reference:  
//     Command Line Tools User Guide, Chapter 23 and Synthesis and Simulation Design Guide, Chapter 6
//             
////////////////////////////////////////////////////////////////////////////////

`timescale 1 ns/1 ps

module reset_builtin (
  CLK, WR_CLK, RD_CLK, INT_CLK, RST, WR_RST_I, RD_RST_I, INT_RST_I
)/* synthesis syn_black_box syn_noprune=1 */;
  input CLK;
  input WR_CLK;
  input RD_CLK;
  input INT_CLK;
  input RST;
  output [1 : 0] WR_RST_I;
  output [1 : 0] RD_RST_I;
  output [1 : 0] INT_RST_I;
  
  // synthesis translate_off
  
  wire wr_rst_reg_3;
  wire rd_rst_reg_15;
  wire wr_rst_reg_GND_25_o_MUX_1_o;
  wire rd_rst_reg_GND_25_o_MUX_2_o;
  wire [4 : 0] wr_rst_fb;
  wire [5 : 0] power_on_wr_rst;
  wire [4 : 0] rd_rst_fb;
  wire [5 : 0] power_on_rd_rst;
  wire [0 : 0] NlwRenamedSignal_WR_RST_I;
  wire [5 : 5] NlwRenamedSig_OI_n0019;
  assign
    WR_RST_I[1] = NlwRenamedSignal_WR_RST_I[0],
    WR_RST_I[0] = NlwRenamedSignal_WR_RST_I[0],
    INT_RST_I[1] = NlwRenamedSig_OI_n0019[5],
    INT_RST_I[0] = NlwRenamedSig_OI_n0019[5];
  GND   XST_GND (
    .G(NlwRenamedSig_OI_n0019[5])
  );
  FD #(
    .INIT ( 1'b0 ))
  wr_rst_fb_0 (
    .C(WR_CLK),
    .D(wr_rst_fb[1]),
    .Q(wr_rst_fb[0])
  );
  FD #(
    .INIT ( 1'b0 ))
  wr_rst_fb_1 (
    .C(WR_CLK),
    .D(wr_rst_fb[2]),
    .Q(wr_rst_fb[1])
  );
  FD #(
    .INIT ( 1'b0 ))
  wr_rst_fb_2 (
    .C(WR_CLK),
    .D(wr_rst_fb[3]),
    .Q(wr_rst_fb[2])
  );
  FD #(
    .INIT ( 1'b0 ))
  wr_rst_fb_3 (
    .C(WR_CLK),
    .D(wr_rst_fb[4]),
    .Q(wr_rst_fb[3])
  );
  FD #(
    .INIT ( 1'b0 ))
  wr_rst_fb_4 (
    .C(WR_CLK),
    .D(wr_rst_reg_3),
    .Q(wr_rst_fb[4])
  );
  FD #(
    .INIT ( 1'b1 ))
  power_on_wr_rst_0 (
    .C(WR_CLK),
    .D(power_on_wr_rst[1]),
    .Q(power_on_wr_rst[0])
  );
  FD #(
    .INIT ( 1'b1 ))
  power_on_wr_rst_1 (
    .C(WR_CLK),
    .D(power_on_wr_rst[2]),
    .Q(power_on_wr_rst[1])
  );
  FD #(
    .INIT ( 1'b1 ))
  power_on_wr_rst_2 (
    .C(WR_CLK),
    .D(power_on_wr_rst[3]),
    .Q(power_on_wr_rst[2])
  );
  FD #(
    .INIT ( 1'b1 ))
  power_on_wr_rst_3 (
    .C(WR_CLK),
    .D(power_on_wr_rst[4]),
    .Q(power_on_wr_rst[3])
  );
  FD #(
    .INIT ( 1'b1 ))
  power_on_wr_rst_4 (
    .C(WR_CLK),
    .D(power_on_wr_rst[5]),
    .Q(power_on_wr_rst[4])
  );
  FD #(
    .INIT ( 1'b1 ))
  power_on_wr_rst_5 (
    .C(WR_CLK),
    .D(NlwRenamedSig_OI_n0019[5]),
    .Q(power_on_wr_rst[5])
  );
  FD #(
    .INIT ( 1'b0 ))
  rd_rst_fb_0 (
    .C(RD_CLK),
    .D(rd_rst_fb[1]),
    .Q(rd_rst_fb[0])
  );
  FD #(
    .INIT ( 1'b0 ))
  rd_rst_fb_1 (
    .C(RD_CLK),
    .D(rd_rst_fb[2]),
    .Q(rd_rst_fb[1])
  );
  FD #(
    .INIT ( 1'b0 ))
  rd_rst_fb_2 (
    .C(RD_CLK),
    .D(rd_rst_fb[3]),
    .Q(rd_rst_fb[2])
  );
  FD #(
    .INIT ( 1'b0 ))
  rd_rst_fb_3 (
    .C(RD_CLK),
    .D(rd_rst_fb[4]),
    .Q(rd_rst_fb[3])
  );
  FD #(
    .INIT ( 1'b0 ))
  rd_rst_fb_4 (
    .C(RD_CLK),
    .D(rd_rst_reg_15),
    .Q(rd_rst_fb[4])
  );
  FD #(
    .INIT ( 1'b1 ))
  power_on_rd_rst_0 (
    .C(RD_CLK),
    .D(power_on_rd_rst[1]),
    .Q(power_on_rd_rst[0])
  );
  FD #(
    .INIT ( 1'b1 ))
  power_on_rd_rst_1 (
    .C(RD_CLK),
    .D(power_on_rd_rst[2]),
    .Q(power_on_rd_rst[1])
  );
  FD #(
    .INIT ( 1'b1 ))
  power_on_rd_rst_2 (
    .C(RD_CLK),
    .D(power_on_rd_rst[3]),
    .Q(power_on_rd_rst[2])
  );
  FD #(
    .INIT ( 1'b1 ))
  power_on_rd_rst_3 (
    .C(RD_CLK),
    .D(power_on_rd_rst[4]),
    .Q(power_on_rd_rst[3])
  );
  FD #(
    .INIT ( 1'b1 ))
  power_on_rd_rst_4 (
    .C(RD_CLK),
    .D(power_on_rd_rst[5]),
    .Q(power_on_rd_rst[4])
  );
  FD #(
    .INIT ( 1'b1 ))
  power_on_rd_rst_5 (
    .C(RD_CLK),
    .D(NlwRenamedSig_OI_n0019[5]),
    .Q(power_on_rd_rst[5])
  );
  FDP #(
    .INIT ( 1'b0 ))
  wr_rst_reg (
    .C(WR_CLK),
    .D(wr_rst_reg_GND_25_o_MUX_1_o),
    .PRE(RST),
    .Q(wr_rst_reg_3)
  );
  FDP #(
    .INIT ( 1'b0 ))
  rd_rst_reg (
    .C(RD_CLK),
    .D(rd_rst_reg_GND_25_o_MUX_2_o),
    .PRE(RST),
    .Q(rd_rst_reg_15)
  );
  LUT2 #(
    .INIT ( 4'hE ))
  \WR_RST_I<1>1  (
    .I0(wr_rst_reg_3),
    .I1(power_on_wr_rst[0]),
    .O(NlwRenamedSignal_WR_RST_I[0])
  );
  LUT2 #(
    .INIT ( 4'h4 ))
  Mmux_wr_rst_reg_GND_25_o_MUX_1_o11 (
    .I0(wr_rst_fb[0]),
    .I1(wr_rst_reg_3),
    .O(wr_rst_reg_GND_25_o_MUX_1_o)
  );
  LUT2 #(
    .INIT ( 4'h4 ))
  Mmux_rd_rst_reg_GND_25_o_MUX_2_o11 (
    .I0(rd_rst_fb[0]),
    .I1(rd_rst_reg_15),
    .O(rd_rst_reg_GND_25_o_MUX_2_o)
  );

// synthesis translate_on

endmodule

module config_buffer (
  rst, wr_clk, rd_clk, wr_en, rd_en, full, empty, din, dout
)/* synthesis syn_black_box syn_noprune=1 */;
  input rst;
  input wr_clk;
  input rd_clk;
  input wr_en;
  input rd_en;
  output full;
  output empty;
  input [31 : 0] din;
  output [31 : 0] dout;
  
  // synthesis translate_off
  
  wire N1;
  wire \U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[1].gnll_fifo.inst_extd/gonep.inst_prim/rden_tmp ;
  wire \U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/wr_ack_i ;
  wire \NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/rstbt_WR_RST_I<1>_UNCONNECTED ;
  wire \NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/rstbt_RD_RST_I<1>_UNCONNECTED ;
  wire \NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/rstbt_RD_RST_I<0>_UNCONNECTED ;
  wire \NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/rstbt_INT_RST_I<1>_UNCONNECTED ;
  wire \NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/rstbt_INT_RST_I<0>_UNCONNECTED ;
  wire \NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[2].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_ALMOSTEMPTY_UNCONNECTED ;
  wire \NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[2].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_ALMOSTFULL_UNCONNECTED ;
  wire \NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[2].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_DBITERR_UNCONNECTED ;
  wire \NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[2].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_RDERR_UNCONNECTED ;
  wire \NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[2].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_SBITERR_UNCONNECTED ;
  wire \NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[2].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_WRERR_UNCONNECTED ;
  wire \NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[2].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_DO<63>_UNCONNECTED ;
  wire \NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[2].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_DO<62>_UNCONNECTED ;
  wire \NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[2].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_DO<61>_UNCONNECTED ;
  wire \NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[2].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_DO<60>_UNCONNECTED ;
  wire \NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[2].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_DO<59>_UNCONNECTED ;
  wire \NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[2].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_DO<58>_UNCONNECTED ;
  wire \NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[2].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_DO<57>_UNCONNECTED ;
  wire \NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[2].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_DO<56>_UNCONNECTED ;
  wire \NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[2].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_DO<55>_UNCONNECTED ;
  wire \NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[2].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_DO<54>_UNCONNECTED ;
  wire \NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[2].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_DO<53>_UNCONNECTED ;
  wire \NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[2].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_DO<52>_UNCONNECTED ;
  wire \NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[2].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_DO<51>_UNCONNECTED ;
  wire \NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[2].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_DO<50>_UNCONNECTED ;
  wire \NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[2].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_DO<49>_UNCONNECTED ;
  wire \NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[2].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_DO<48>_UNCONNECTED ;
  wire \NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[2].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_DO<47>_UNCONNECTED ;
  wire \NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[2].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_DO<46>_UNCONNECTED ;
  wire \NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[2].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_DO<45>_UNCONNECTED ;
  wire \NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[2].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_DO<44>_UNCONNECTED ;
  wire \NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[2].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_DO<43>_UNCONNECTED ;
  wire \NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[2].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_DO<42>_UNCONNECTED ;
  wire \NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[2].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_DO<41>_UNCONNECTED ;
  wire \NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[2].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_DO<40>_UNCONNECTED ;
  wire \NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[2].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_DO<39>_UNCONNECTED ;
  wire \NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[2].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_DO<38>_UNCONNECTED ;
  wire \NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[2].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_DO<37>_UNCONNECTED ;
  wire \NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[2].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_DO<36>_UNCONNECTED ;
  wire \NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[2].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_DO<35>_UNCONNECTED ;
  wire \NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[2].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_DO<34>_UNCONNECTED ;
  wire \NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[2].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_DO<33>_UNCONNECTED ;
  wire \NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[2].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_DO<32>_UNCONNECTED ;
  wire \NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[2].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_DO<31>_UNCONNECTED ;
  wire \NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[2].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_DO<30>_UNCONNECTED ;
  wire \NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[2].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_DO<29>_UNCONNECTED ;
  wire \NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[2].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_DO<28>_UNCONNECTED ;
  wire \NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[2].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_DO<27>_UNCONNECTED ;
  wire \NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[2].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_DO<26>_UNCONNECTED ;
  wire \NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[2].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_DO<25>_UNCONNECTED ;
  wire \NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[2].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_DO<24>_UNCONNECTED ;
  wire \NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[2].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_DO<23>_UNCONNECTED ;
  wire \NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[2].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_DO<22>_UNCONNECTED ;
  wire \NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[2].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_DO<21>_UNCONNECTED ;
  wire \NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[2].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_DO<20>_UNCONNECTED ;
  wire \NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[2].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_DO<19>_UNCONNECTED ;
  wire \NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[2].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_DO<18>_UNCONNECTED ;
  wire \NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[2].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_DO<17>_UNCONNECTED ;
  wire \NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[2].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_DO<16>_UNCONNECTED ;
  wire \NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[2].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_DO<15>_UNCONNECTED ;
  wire \NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[2].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_DO<14>_UNCONNECTED ;
  wire \NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[2].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_DOP<7>_UNCONNECTED ;
  wire \NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[2].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_DOP<6>_UNCONNECTED ;
  wire \NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[2].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_DOP<5>_UNCONNECTED ;
  wire \NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[2].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_DOP<4>_UNCONNECTED ;
  wire \NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[2].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_DOP<3>_UNCONNECTED ;
  wire \NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[2].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_DOP<2>_UNCONNECTED ;
  wire \NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[2].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_DOP<1>_UNCONNECTED ;
  wire \NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[2].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_DOP<0>_UNCONNECTED ;
  wire \NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[2].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_ECCPARITY<7>_UNCONNECTED ;
  wire \NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[2].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_ECCPARITY<6>_UNCONNECTED ;
  wire \NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[2].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_ECCPARITY<5>_UNCONNECTED ;
  wire \NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[2].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_ECCPARITY<4>_UNCONNECTED ;
  wire \NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[2].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_ECCPARITY<3>_UNCONNECTED ;
  wire \NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[2].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_ECCPARITY<2>_UNCONNECTED ;
  wire \NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[2].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_ECCPARITY<1>_UNCONNECTED ;
  wire \NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[2].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_ECCPARITY<0>_UNCONNECTED ;
  wire \NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[2].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_RDCOUNT<12>_UNCONNECTED ;
  wire \NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[2].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_RDCOUNT<11>_UNCONNECTED ;
  wire \NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[2].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_RDCOUNT<10>_UNCONNECTED ;
  wire \NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[2].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_RDCOUNT<9>_UNCONNECTED ;
  wire \NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[2].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_RDCOUNT<8>_UNCONNECTED ;
  wire \NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[2].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_RDCOUNT<7>_UNCONNECTED ;
  wire \NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[2].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_RDCOUNT<6>_UNCONNECTED ;
  wire \NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[2].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_RDCOUNT<5>_UNCONNECTED ;
  wire \NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[2].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_RDCOUNT<4>_UNCONNECTED ;
  wire \NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[2].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_RDCOUNT<3>_UNCONNECTED ;
  wire \NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[2].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_RDCOUNT<2>_UNCONNECTED ;
  wire \NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[2].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_RDCOUNT<1>_UNCONNECTED ;
  wire \NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[2].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_RDCOUNT<0>_UNCONNECTED ;
  wire \NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[2].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_WRCOUNT<12>_UNCONNECTED ;
  wire \NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[2].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_WRCOUNT<11>_UNCONNECTED ;
  wire \NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[2].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_WRCOUNT<10>_UNCONNECTED ;
  wire \NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[2].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_WRCOUNT<9>_UNCONNECTED ;
  wire \NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[2].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_WRCOUNT<8>_UNCONNECTED ;
  wire \NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[2].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_WRCOUNT<7>_UNCONNECTED ;
  wire \NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[2].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_WRCOUNT<6>_UNCONNECTED ;
  wire \NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[2].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_WRCOUNT<5>_UNCONNECTED ;
  wire \NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[2].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_WRCOUNT<4>_UNCONNECTED ;
  wire \NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[2].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_WRCOUNT<3>_UNCONNECTED ;
  wire \NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[2].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_WRCOUNT<2>_UNCONNECTED ;
  wire \NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[2].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_WRCOUNT<1>_UNCONNECTED ;
  wire \NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[2].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_WRCOUNT<0>_UNCONNECTED ;
  wire \NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[1].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_ALMOSTEMPTY_UNCONNECTED ;
  wire \NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[1].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_ALMOSTFULL_UNCONNECTED ;
  wire \NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[1].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_DBITERR_UNCONNECTED ;
  wire \NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[1].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_RDERR_UNCONNECTED ;
  wire \NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[1].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_SBITERR_UNCONNECTED ;
  wire \NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[1].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_WRERR_UNCONNECTED ;
  wire \NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[1].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_DO<63>_UNCONNECTED ;
  wire \NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[1].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_DO<62>_UNCONNECTED ;
  wire \NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[1].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_DO<61>_UNCONNECTED ;
  wire \NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[1].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_DO<60>_UNCONNECTED ;
  wire \NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[1].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_DO<59>_UNCONNECTED ;
  wire \NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[1].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_DO<58>_UNCONNECTED ;
  wire \NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[1].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_DO<57>_UNCONNECTED ;
  wire \NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[1].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_DO<56>_UNCONNECTED ;
  wire \NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[1].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_DO<55>_UNCONNECTED ;
  wire \NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[1].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_DO<54>_UNCONNECTED ;
  wire \NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[1].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_DO<53>_UNCONNECTED ;
  wire \NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[1].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_DO<52>_UNCONNECTED ;
  wire \NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[1].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_DO<51>_UNCONNECTED ;
  wire \NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[1].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_DO<50>_UNCONNECTED ;
  wire \NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[1].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_DO<49>_UNCONNECTED ;
  wire \NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[1].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_DO<48>_UNCONNECTED ;
  wire \NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[1].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_DO<47>_UNCONNECTED ;
  wire \NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[1].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_DO<46>_UNCONNECTED ;
  wire \NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[1].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_DO<45>_UNCONNECTED ;
  wire \NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[1].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_DO<44>_UNCONNECTED ;
  wire \NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[1].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_DO<43>_UNCONNECTED ;
  wire \NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[1].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_DO<42>_UNCONNECTED ;
  wire \NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[1].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_DO<41>_UNCONNECTED ;
  wire \NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[1].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_DO<40>_UNCONNECTED ;
  wire \NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[1].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_DO<39>_UNCONNECTED ;
  wire \NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[1].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_DO<38>_UNCONNECTED ;
  wire \NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[1].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_DO<37>_UNCONNECTED ;
  wire \NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[1].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_DO<36>_UNCONNECTED ;
  wire \NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[1].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_DO<35>_UNCONNECTED ;
  wire \NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[1].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_DO<34>_UNCONNECTED ;
  wire \NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[1].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_DO<33>_UNCONNECTED ;
  wire \NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[1].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_DO<32>_UNCONNECTED ;
  wire \NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[1].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_DO<31>_UNCONNECTED ;
  wire \NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[1].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_DO<30>_UNCONNECTED ;
  wire \NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[1].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_DO<29>_UNCONNECTED ;
  wire \NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[1].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_DO<28>_UNCONNECTED ;
  wire \NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[1].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_DO<27>_UNCONNECTED ;
  wire \NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[1].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_DO<26>_UNCONNECTED ;
  wire \NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[1].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_DO<25>_UNCONNECTED ;
  wire \NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[1].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_DO<24>_UNCONNECTED ;
  wire \NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[1].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_DO<23>_UNCONNECTED ;
  wire \NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[1].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_DO<22>_UNCONNECTED ;
  wire \NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[1].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_DO<21>_UNCONNECTED ;
  wire \NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[1].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_DO<20>_UNCONNECTED ;
  wire \NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[1].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_DO<19>_UNCONNECTED ;
  wire \NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[1].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_DO<18>_UNCONNECTED ;
  wire \NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[1].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_DO<17>_UNCONNECTED ;
  wire \NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[1].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_DO<16>_UNCONNECTED ;
  wire \NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[1].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_DOP<7>_UNCONNECTED ;
  wire \NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[1].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_DOP<6>_UNCONNECTED ;
  wire \NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[1].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_DOP<5>_UNCONNECTED ;
  wire \NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[1].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_DOP<4>_UNCONNECTED ;
  wire \NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[1].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_DOP<3>_UNCONNECTED ;
  wire \NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[1].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_DOP<2>_UNCONNECTED ;
  wire \NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[1].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_ECCPARITY<7>_UNCONNECTED ;
  wire \NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[1].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_ECCPARITY<6>_UNCONNECTED ;
  wire \NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[1].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_ECCPARITY<5>_UNCONNECTED ;
  wire \NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[1].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_ECCPARITY<4>_UNCONNECTED ;
  wire \NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[1].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_ECCPARITY<3>_UNCONNECTED ;
  wire \NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[1].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_ECCPARITY<2>_UNCONNECTED ;
  wire \NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[1].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_ECCPARITY<1>_UNCONNECTED ;
  wire \NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[1].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_ECCPARITY<0>_UNCONNECTED ;
  wire \NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[1].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_RDCOUNT<12>_UNCONNECTED ;
  wire \NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[1].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_RDCOUNT<11>_UNCONNECTED ;
  wire \NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[1].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_RDCOUNT<10>_UNCONNECTED ;
  wire \NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[1].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_RDCOUNT<9>_UNCONNECTED ;
  wire \NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[1].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_RDCOUNT<8>_UNCONNECTED ;
  wire \NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[1].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_RDCOUNT<7>_UNCONNECTED ;
  wire \NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[1].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_RDCOUNT<6>_UNCONNECTED ;
  wire \NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[1].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_RDCOUNT<5>_UNCONNECTED ;
  wire \NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[1].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_RDCOUNT<4>_UNCONNECTED ;
  wire \NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[1].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_RDCOUNT<3>_UNCONNECTED ;
  wire \NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[1].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_RDCOUNT<2>_UNCONNECTED ;
  wire \NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[1].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_RDCOUNT<1>_UNCONNECTED ;
  wire \NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[1].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_RDCOUNT<0>_UNCONNECTED ;
  wire \NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[1].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_WRCOUNT<12>_UNCONNECTED ;
  wire \NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[1].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_WRCOUNT<11>_UNCONNECTED ;
  wire \NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[1].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_WRCOUNT<10>_UNCONNECTED ;
  wire \NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[1].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_WRCOUNT<9>_UNCONNECTED ;
  wire \NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[1].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_WRCOUNT<8>_UNCONNECTED ;
  wire \NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[1].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_WRCOUNT<7>_UNCONNECTED ;
  wire \NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[1].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_WRCOUNT<6>_UNCONNECTED ;
  wire \NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[1].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_WRCOUNT<5>_UNCONNECTED ;
  wire \NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[1].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_WRCOUNT<4>_UNCONNECTED ;
  wire \NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[1].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_WRCOUNT<3>_UNCONNECTED ;
  wire \NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[1].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_WRCOUNT<2>_UNCONNECTED ;
  wire \NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[1].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_WRCOUNT<1>_UNCONNECTED ;
  wire \NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[1].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_WRCOUNT<0>_UNCONNECTED ;
  wire [0 : 0] \U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/wr_rst_i ;
  wire [2 : 1] \U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/emp ;
  wire [2 : 1] \U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/ful ;
  GND   XST_GND (
    .G(N1)
  );
  reset_builtin   \U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/rstbt  (
    .CLK(N1),
    .WR_CLK(wr_clk),
    .RD_CLK(rd_clk),
    .INT_CLK(N1),
    .RST(rst),
    .WR_RST_I({\NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/rstbt_WR_RST_I<1>_UNCONNECTED , 
\U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/wr_rst_i [0]}),
    .RD_RST_I({\NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/rstbt_RD_RST_I<1>_UNCONNECTED , 
\NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/rstbt_RD_RST_I<0>_UNCONNECTED }),
    .INT_RST_I({\NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/rstbt_INT_RST_I<1>_UNCONNECTED , 
\NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/rstbt_INT_RST_I<0>_UNCONNECTED })
  );
  FIFO36E1 #(
    .ALMOST_EMPTY_OFFSET ( 13'h0006 ),
    .ALMOST_FULL_OFFSET ( 13'h0008 ),
    .DATA_WIDTH ( 18 ),
    .DO_REG ( 1 ),
    .EN_ECC_READ ( "FALSE" ),
    .EN_ECC_WRITE ( "FALSE" ),
    .EN_SYN ( "FALSE" ),
    .FIFO_MODE ( "FIFO36" ),
    .FIRST_WORD_FALL_THROUGH ( "TRUE" ),
    .INIT ( 72'h000000000000000000 ),
    .SIM_DEVICE ( "7SERIES" ),
    .SRVAL ( 72'h000000000000000000 ))
  \U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[2].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1  (
    .ALMOSTEMPTY
(\NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[2].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_ALMOSTEMPTY_UNCONNECTED )
,
    .ALMOSTFULL
(\NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[2].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_ALMOSTFULL_UNCONNECTED )
,
    .DBITERR
(\NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[2].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_DBITERR_UNCONNECTED )
,
    .EMPTY(\U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/emp [2]),
    .FULL(\U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/ful [2]),
    .INJECTDBITERR(N1),
    .INJECTSBITERR(N1),
    .RDCLK(rd_clk),
    .RDEN(\U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[1].gnll_fifo.inst_extd/gonep.inst_prim/rden_tmp ),
    .RDERR
(\NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[2].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_RDERR_UNCONNECTED )
,
    .REGCE(N1),
    .RST(\U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/wr_rst_i [0]),
    .RSTREG(N1),
    .SBITERR
(\NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[2].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_SBITERR_UNCONNECTED )
,
    .WRCLK(wr_clk),
    .WREN(\U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/wr_ack_i ),
    .WRERR
(\NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[2].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_WRERR_UNCONNECTED )
,
    .DI({N1, N1, N1, N1, N1, N1, N1, N1, N1, N1, N1, N1, N1, N1, N1, N1, N1, N1, N1, N1, N1, N1, N1, N1, N1, N1, N1, N1, N1, N1, N1, N1, N1, N1, N1, 
N1, N1, N1, N1, N1, N1, N1, N1, N1, N1, N1, N1, N1, N1, N1, din[31], din[30], din[29], din[28], din[27], din[26], din[25], din[24], din[23], din[22], 
din[21], din[20], din[19], din[18]}),
    .DIP({N1, N1, N1, N1, N1, N1, N1, N1}),
    .DO({
\NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[2].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_DO<63>_UNCONNECTED 
, 
\NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[2].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_DO<62>_UNCONNECTED 
, 
\NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[2].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_DO<61>_UNCONNECTED 
, 
\NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[2].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_DO<60>_UNCONNECTED 
, 
\NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[2].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_DO<59>_UNCONNECTED 
, 
\NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[2].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_DO<58>_UNCONNECTED 
, 
\NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[2].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_DO<57>_UNCONNECTED 
, 
\NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[2].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_DO<56>_UNCONNECTED 
, 
\NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[2].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_DO<55>_UNCONNECTED 
, 
\NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[2].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_DO<54>_UNCONNECTED 
, 
\NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[2].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_DO<53>_UNCONNECTED 
, 
\NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[2].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_DO<52>_UNCONNECTED 
, 
\NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[2].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_DO<51>_UNCONNECTED 
, 
\NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[2].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_DO<50>_UNCONNECTED 
, 
\NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[2].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_DO<49>_UNCONNECTED 
, 
\NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[2].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_DO<48>_UNCONNECTED 
, 
\NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[2].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_DO<47>_UNCONNECTED 
, 
\NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[2].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_DO<46>_UNCONNECTED 
, 
\NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[2].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_DO<45>_UNCONNECTED 
, 
\NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[2].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_DO<44>_UNCONNECTED 
, 
\NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[2].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_DO<43>_UNCONNECTED 
, 
\NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[2].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_DO<42>_UNCONNECTED 
, 
\NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[2].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_DO<41>_UNCONNECTED 
, 
\NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[2].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_DO<40>_UNCONNECTED 
, 
\NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[2].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_DO<39>_UNCONNECTED 
, 
\NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[2].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_DO<38>_UNCONNECTED 
, 
\NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[2].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_DO<37>_UNCONNECTED 
, 
\NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[2].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_DO<36>_UNCONNECTED 
, 
\NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[2].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_DO<35>_UNCONNECTED 
, 
\NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[2].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_DO<34>_UNCONNECTED 
, 
\NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[2].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_DO<33>_UNCONNECTED 
, 
\NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[2].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_DO<32>_UNCONNECTED 
, 
\NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[2].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_DO<31>_UNCONNECTED 
, 
\NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[2].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_DO<30>_UNCONNECTED 
, 
\NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[2].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_DO<29>_UNCONNECTED 
, 
\NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[2].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_DO<28>_UNCONNECTED 
, 
\NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[2].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_DO<27>_UNCONNECTED 
, 
\NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[2].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_DO<26>_UNCONNECTED 
, 
\NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[2].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_DO<25>_UNCONNECTED 
, 
\NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[2].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_DO<24>_UNCONNECTED 
, 
\NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[2].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_DO<23>_UNCONNECTED 
, 
\NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[2].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_DO<22>_UNCONNECTED 
, 
\NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[2].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_DO<21>_UNCONNECTED 
, 
\NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[2].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_DO<20>_UNCONNECTED 
, 
\NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[2].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_DO<19>_UNCONNECTED 
, 
\NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[2].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_DO<18>_UNCONNECTED 
, 
\NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[2].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_DO<17>_UNCONNECTED 
, 
\NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[2].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_DO<16>_UNCONNECTED 
, 
\NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[2].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_DO<15>_UNCONNECTED 
, 
\NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[2].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_DO<14>_UNCONNECTED 
, dout[31], dout[30], dout[29], dout[28], dout[27], dout[26], dout[25], dout[24], dout[23], dout[22], dout[21], dout[20], dout[19], dout[18]}),
    .DOP({
\NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[2].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_DOP<7>_UNCONNECTED 
, 
\NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[2].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_DOP<6>_UNCONNECTED 
, 
\NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[2].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_DOP<5>_UNCONNECTED 
, 
\NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[2].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_DOP<4>_UNCONNECTED 
, 
\NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[2].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_DOP<3>_UNCONNECTED 
, 
\NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[2].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_DOP<2>_UNCONNECTED 
, 
\NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[2].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_DOP<1>_UNCONNECTED 
, 
\NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[2].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_DOP<0>_UNCONNECTED 
}),
    .ECCPARITY({
\NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[2].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_ECCPARITY<7>_UNCONNECTED 
, 
\NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[2].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_ECCPARITY<6>_UNCONNECTED 
, 
\NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[2].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_ECCPARITY<5>_UNCONNECTED 
, 
\NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[2].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_ECCPARITY<4>_UNCONNECTED 
, 
\NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[2].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_ECCPARITY<3>_UNCONNECTED 
, 
\NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[2].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_ECCPARITY<2>_UNCONNECTED 
, 
\NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[2].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_ECCPARITY<1>_UNCONNECTED 
, 
\NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[2].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_ECCPARITY<0>_UNCONNECTED 
}),
    .RDCOUNT({
\NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[2].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_RDCOUNT<12>_UNCONNECTED 
, 
\NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[2].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_RDCOUNT<11>_UNCONNECTED 
, 
\NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[2].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_RDCOUNT<10>_UNCONNECTED 
, 
\NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[2].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_RDCOUNT<9>_UNCONNECTED 
, 
\NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[2].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_RDCOUNT<8>_UNCONNECTED 
, 
\NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[2].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_RDCOUNT<7>_UNCONNECTED 
, 
\NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[2].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_RDCOUNT<6>_UNCONNECTED 
, 
\NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[2].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_RDCOUNT<5>_UNCONNECTED 
, 
\NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[2].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_RDCOUNT<4>_UNCONNECTED 
, 
\NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[2].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_RDCOUNT<3>_UNCONNECTED 
, 
\NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[2].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_RDCOUNT<2>_UNCONNECTED 
, 
\NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[2].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_RDCOUNT<1>_UNCONNECTED 
, 
\NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[2].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_RDCOUNT<0>_UNCONNECTED 
}),
    .WRCOUNT({
\NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[2].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_WRCOUNT<12>_UNCONNECTED 
, 
\NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[2].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_WRCOUNT<11>_UNCONNECTED 
, 
\NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[2].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_WRCOUNT<10>_UNCONNECTED 
, 
\NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[2].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_WRCOUNT<9>_UNCONNECTED 
, 
\NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[2].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_WRCOUNT<8>_UNCONNECTED 
, 
\NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[2].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_WRCOUNT<7>_UNCONNECTED 
, 
\NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[2].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_WRCOUNT<6>_UNCONNECTED 
, 
\NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[2].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_WRCOUNT<5>_UNCONNECTED 
, 
\NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[2].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_WRCOUNT<4>_UNCONNECTED 
, 
\NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[2].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_WRCOUNT<3>_UNCONNECTED 
, 
\NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[2].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_WRCOUNT<2>_UNCONNECTED 
, 
\NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[2].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_WRCOUNT<1>_UNCONNECTED 
, 
\NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[2].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_WRCOUNT<0>_UNCONNECTED 
})
  );
  FIFO36E1 #(
    .ALMOST_EMPTY_OFFSET ( 13'h0006 ),
    .ALMOST_FULL_OFFSET ( 13'h0008 ),
    .DATA_WIDTH ( 18 ),
    .DO_REG ( 1 ),
    .EN_ECC_READ ( "FALSE" ),
    .EN_ECC_WRITE ( "FALSE" ),
    .EN_SYN ( "FALSE" ),
    .FIFO_MODE ( "FIFO36" ),
    .FIRST_WORD_FALL_THROUGH ( "TRUE" ),
    .INIT ( 72'h000000000000000000 ),
    .SIM_DEVICE ( "7SERIES" ),
    .SRVAL ( 72'h000000000000000000 ))
  \U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[1].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1  (
    .ALMOSTEMPTY
(\NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[1].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_ALMOSTEMPTY_UNCONNECTED )
,
    .ALMOSTFULL
(\NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[1].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_ALMOSTFULL_UNCONNECTED )
,
    .DBITERR
(\NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[1].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_DBITERR_UNCONNECTED )
,
    .EMPTY(\U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/emp [1]),
    .FULL(\U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/ful [1]),
    .INJECTDBITERR(N1),
    .INJECTSBITERR(N1),
    .RDCLK(rd_clk),
    .RDEN(\U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[1].gnll_fifo.inst_extd/gonep.inst_prim/rden_tmp ),
    .RDERR
(\NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[1].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_RDERR_UNCONNECTED )
,
    .REGCE(N1),
    .RST(\U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/wr_rst_i [0]),
    .RSTREG(N1),
    .SBITERR
(\NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[1].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_SBITERR_UNCONNECTED )
,
    .WRCLK(wr_clk),
    .WREN(\U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/wr_ack_i ),
    .WRERR
(\NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[1].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_WRERR_UNCONNECTED )
,
    .DI({N1, N1, N1, N1, N1, N1, N1, N1, N1, N1, N1, N1, N1, N1, N1, N1, N1, N1, N1, N1, N1, N1, N1, N1, N1, N1, N1, N1, N1, N1, N1, N1, N1, N1, N1, 
N1, N1, N1, N1, N1, N1, N1, N1, N1, N1, N1, N1, N1, din[15], din[14], din[13], din[12], din[11], din[10], din[9], din[8], din[7], din[6], din[5], 
din[4], din[3], din[2], din[1], din[0]}),
    .DIP({N1, N1, N1, N1, N1, N1, din[17], din[16]}),
    .DO({
\NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[1].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_DO<63>_UNCONNECTED 
, 
\NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[1].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_DO<62>_UNCONNECTED 
, 
\NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[1].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_DO<61>_UNCONNECTED 
, 
\NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[1].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_DO<60>_UNCONNECTED 
, 
\NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[1].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_DO<59>_UNCONNECTED 
, 
\NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[1].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_DO<58>_UNCONNECTED 
, 
\NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[1].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_DO<57>_UNCONNECTED 
, 
\NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[1].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_DO<56>_UNCONNECTED 
, 
\NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[1].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_DO<55>_UNCONNECTED 
, 
\NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[1].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_DO<54>_UNCONNECTED 
, 
\NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[1].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_DO<53>_UNCONNECTED 
, 
\NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[1].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_DO<52>_UNCONNECTED 
, 
\NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[1].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_DO<51>_UNCONNECTED 
, 
\NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[1].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_DO<50>_UNCONNECTED 
, 
\NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[1].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_DO<49>_UNCONNECTED 
, 
\NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[1].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_DO<48>_UNCONNECTED 
, 
\NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[1].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_DO<47>_UNCONNECTED 
, 
\NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[1].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_DO<46>_UNCONNECTED 
, 
\NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[1].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_DO<45>_UNCONNECTED 
, 
\NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[1].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_DO<44>_UNCONNECTED 
, 
\NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[1].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_DO<43>_UNCONNECTED 
, 
\NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[1].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_DO<42>_UNCONNECTED 
, 
\NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[1].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_DO<41>_UNCONNECTED 
, 
\NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[1].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_DO<40>_UNCONNECTED 
, 
\NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[1].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_DO<39>_UNCONNECTED 
, 
\NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[1].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_DO<38>_UNCONNECTED 
, 
\NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[1].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_DO<37>_UNCONNECTED 
, 
\NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[1].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_DO<36>_UNCONNECTED 
, 
\NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[1].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_DO<35>_UNCONNECTED 
, 
\NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[1].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_DO<34>_UNCONNECTED 
, 
\NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[1].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_DO<33>_UNCONNECTED 
, 
\NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[1].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_DO<32>_UNCONNECTED 
, 
\NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[1].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_DO<31>_UNCONNECTED 
, 
\NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[1].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_DO<30>_UNCONNECTED 
, 
\NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[1].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_DO<29>_UNCONNECTED 
, 
\NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[1].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_DO<28>_UNCONNECTED 
, 
\NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[1].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_DO<27>_UNCONNECTED 
, 
\NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[1].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_DO<26>_UNCONNECTED 
, 
\NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[1].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_DO<25>_UNCONNECTED 
, 
\NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[1].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_DO<24>_UNCONNECTED 
, 
\NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[1].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_DO<23>_UNCONNECTED 
, 
\NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[1].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_DO<22>_UNCONNECTED 
, 
\NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[1].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_DO<21>_UNCONNECTED 
, 
\NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[1].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_DO<20>_UNCONNECTED 
, 
\NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[1].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_DO<19>_UNCONNECTED 
, 
\NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[1].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_DO<18>_UNCONNECTED 
, 
\NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[1].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_DO<17>_UNCONNECTED 
, 
\NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[1].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_DO<16>_UNCONNECTED 
, dout[15], dout[14], dout[13], dout[12], dout[11], dout[10], dout[9], dout[8], dout[7], dout[6], dout[5], dout[4], dout[3], dout[2], dout[1], dout[0]
}),
    .DOP({
\NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[1].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_DOP<7>_UNCONNECTED 
, 
\NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[1].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_DOP<6>_UNCONNECTED 
, 
\NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[1].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_DOP<5>_UNCONNECTED 
, 
\NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[1].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_DOP<4>_UNCONNECTED 
, 
\NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[1].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_DOP<3>_UNCONNECTED 
, 
\NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[1].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_DOP<2>_UNCONNECTED 
, dout[17], dout[16]}),
    .ECCPARITY({
\NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[1].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_ECCPARITY<7>_UNCONNECTED 
, 
\NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[1].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_ECCPARITY<6>_UNCONNECTED 
, 
\NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[1].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_ECCPARITY<5>_UNCONNECTED 
, 
\NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[1].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_ECCPARITY<4>_UNCONNECTED 
, 
\NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[1].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_ECCPARITY<3>_UNCONNECTED 
, 
\NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[1].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_ECCPARITY<2>_UNCONNECTED 
, 
\NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[1].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_ECCPARITY<1>_UNCONNECTED 
, 
\NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[1].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_ECCPARITY<0>_UNCONNECTED 
}),
    .RDCOUNT({
\NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[1].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_RDCOUNT<12>_UNCONNECTED 
, 
\NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[1].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_RDCOUNT<11>_UNCONNECTED 
, 
\NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[1].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_RDCOUNT<10>_UNCONNECTED 
, 
\NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[1].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_RDCOUNT<9>_UNCONNECTED 
, 
\NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[1].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_RDCOUNT<8>_UNCONNECTED 
, 
\NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[1].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_RDCOUNT<7>_UNCONNECTED 
, 
\NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[1].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_RDCOUNT<6>_UNCONNECTED 
, 
\NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[1].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_RDCOUNT<5>_UNCONNECTED 
, 
\NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[1].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_RDCOUNT<4>_UNCONNECTED 
, 
\NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[1].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_RDCOUNT<3>_UNCONNECTED 
, 
\NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[1].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_RDCOUNT<2>_UNCONNECTED 
, 
\NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[1].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_RDCOUNT<1>_UNCONNECTED 
, 
\NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[1].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_RDCOUNT<0>_UNCONNECTED 
}),
    .WRCOUNT({
\NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[1].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_WRCOUNT<12>_UNCONNECTED 
, 
\NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[1].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_WRCOUNT<11>_UNCONNECTED 
, 
\NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[1].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_WRCOUNT<10>_UNCONNECTED 
, 
\NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[1].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_WRCOUNT<9>_UNCONNECTED 
, 
\NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[1].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_WRCOUNT<8>_UNCONNECTED 
, 
\NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[1].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_WRCOUNT<7>_UNCONNECTED 
, 
\NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[1].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_WRCOUNT<6>_UNCONNECTED 
, 
\NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[1].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_WRCOUNT<5>_UNCONNECTED 
, 
\NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[1].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_WRCOUNT<4>_UNCONNECTED 
, 
\NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[1].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_WRCOUNT<3>_UNCONNECTED 
, 
\NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[1].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_WRCOUNT<2>_UNCONNECTED 
, 
\NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[1].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_WRCOUNT<1>_UNCONNECTED 
, 
\NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[1].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_WRCOUNT<0>_UNCONNECTED 
})
  );
  LUT3 #(
    .INIT ( 8'h02 ))
  \U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[1].gnll_fifo.inst_extd/gonep.inst_prim/rden_tmp11  (
    .I0(rd_en),
    .I1(\U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/emp [1]),
    .I2(\U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/emp [2]),
    .O(\U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[1].gnll_fifo.inst_extd/gonep.inst_prim/rden_tmp )
  );
  LUT2 #(
    .INIT ( 4'hE ))
  \U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/out11  (
    .I0(\U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/emp [2]),
    .I1(\U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/emp [1]),
    .O(empty)
  );
  LUT2 #(
    .INIT ( 4'hE ))
  \U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/out1  (
    .I0(\U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/ful [2]),
    .I1(\U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/ful [1]),
    .O(full)
  );
  LUT3 #(
    .INIT ( 8'h02 ))
  \U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/wr_ack_i1  (
    .I0(wr_en),
    .I1(\U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/ful [2]),
    .I2(\U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/ful [1]),
    .O(\U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/wr_ack_i )
  );

// synthesis translate_on

endmodule

// synthesis translate_off

`ifndef GLBL
`define GLBL

`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;

    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

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

    assign (weak1, weak0) GSR = GSR_int;
    assign (weak1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

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

endmodule

`endif

// synthesis translate_on
