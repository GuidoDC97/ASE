--------------------------------------------------------------------------------
-- Copyright (c) 1995-2012 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: P.58f
--  \   \         Application: netgen
--  /   /         Filename: ShiftRegister_on_board_map.vhd
-- /___/   /\     Timestamp: Fri Jan 31 11:13:02 2020
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -s 4 -pcf ShiftRegister_on_board.pcf -rpw 100 -tpw 0 -ar Structure -tm ShiftRegister_on_board -w -dir netgen/map -ofmt vhdl -sim ShiftRegister_on_board_map.ncd ShiftRegister_on_board_map.vhd 
-- Device	: 3s250etq144-4 (PRODUCTION 1.27 2013-03-26)
-- Input file	: ShiftRegister_on_board_map.ncd
-- Output file	: C:\Users\Guido Di Chiara\Documents\Semestre Corrente\Architettura dei Sistemi di Elaborazione\Tesina\Esercizio5\netgen\map\ShiftRegister_on_board_map.vhd
-- # of Entities	: 1
-- Design Name	: ShiftRegister_on_board
-- Xilinx	: C:\Xilinx\14.5\ISE_DS\ISE\
--             
-- Purpose:    
--     This VHDL netlist is a verification model and uses simulation 
--     primitives which may not represent the true implementation of the 
--     device, however the netlist is functionally correct and should not 
--     be modified. This file cannot be synthesized and should only be used 
--     with supported simulation tools.
--             
-- Reference:  
--     Command Line Tools User Guide, Chapter 23
--     Synthesis and Simulation Design Guide, Chapter 6
--             
--------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library SIMPRIM;
use SIMPRIM.VCOMPONENTS.ALL;
use SIMPRIM.VPACKAGE.ALL;

entity ShiftRegister_on_board is
  port (
    CLK : in STD_LOGIC := 'X'; 
    SHIFT : in STD_LOGIC := 'X'; 
    RESET : in STD_LOGIC := 'X'; 
    LOAD : in STD_LOGIC := 'X'; 
    Y : out STD_LOGIC_VECTOR ( 7 downto 0 ); 
    X : in STD_LOGIC_VECTOR ( 7 downto 0 ) 
  );
end ShiftRegister_on_board;

architecture Structure of ShiftRegister_on_board is
  signal clk_filter_counter_cmp_eq0000 : STD_LOGIC; 
  signal ShiftRegister_0_FF_D_all_1_FF_D_i_Q_387 : STD_LOGIC; 
  signal X_5_IBUF_388 : STD_LOGIC; 
  signal ShiftRegister_0_FF_D_all_2_FF_D_i_Q_389 : STD_LOGIC; 
  signal X_6_IBUF_390 : STD_LOGIC; 
  signal ShiftRegister_0_FF_D_all_3_FF_D_i_Q_391 : STD_LOGIC; 
  signal X_7_IBUF_392 : STD_LOGIC; 
  signal ShiftRegister_0_FF_D_all_4_FF_D_i_Q_393 : STD_LOGIC; 
  signal ShiftRegister_0_FF_D_all_5_FF_D_i_Q_394 : STD_LOGIC; 
  signal ShiftRegister_0_FF_D_all_6_FF_D_i_Q_395 : STD_LOGIC; 
  signal LOAD_IBUF_396 : STD_LOGIC; 
  signal ShiftRegister_0_FF_D_all_7_FF_D_i_Q_397 : STD_LOGIC; 
  signal CLK_BUFGP_IBUFG_398 : STD_LOGIC; 
  signal X_0_IBUF_399 : STD_LOGIC; 
  signal X_1_IBUF_400 : STD_LOGIC; 
  signal RESET_IBUF_401 : STD_LOGIC; 
  signal X_2_IBUF_402 : STD_LOGIC; 
  signal SHIFT_IBUF_403 : STD_LOGIC; 
  signal X_3_IBUF_404 : STD_LOGIC; 
  signal ShiftRegister_0_FF_D_all_0_FF_D_i_Q_405 : STD_LOGIC; 
  signal X_4_IBUF_406 : STD_LOGIC; 
  signal CLK_BUFGP : STD_LOGIC; 
  signal Inst_Debouncer_SHIFT_OUT_408 : STD_LOGIC; 
  signal Inst_Debouncer_LOAD_OUT_409 : STD_LOGIC; 
  signal clk_filter_clockfx_410 : STD_LOGIC; 
  signal Result_0_XORF_446 : STD_LOGIC; 
  signal Result_0_LOGIC_ONE_445 : STD_LOGIC; 
  signal Result_0_CYINIT_444 : STD_LOGIC; 
  signal Result_0_CYSELF_435 : STD_LOGIC; 
  signal Result_0_BXINV_433 : STD_LOGIC; 
  signal Result_0_XORG_431 : STD_LOGIC; 
  signal Result_0_CYMUXG_430 : STD_LOGIC; 
  signal Result_0_LOGIC_ZERO_428 : STD_LOGIC; 
  signal Result_0_CYSELG_419 : STD_LOGIC; 
  signal Result_0_G : STD_LOGIC; 
  signal Result_2_XORF_484 : STD_LOGIC; 
  signal Result_2_CYINIT_483 : STD_LOGIC; 
  signal Result_2_F : STD_LOGIC; 
  signal Result_2_XORG_472 : STD_LOGIC; 
  signal Result_2_CYSELF_470 : STD_LOGIC; 
  signal Result_2_CYMUXFAST_469 : STD_LOGIC; 
  signal Result_2_CYAND_468 : STD_LOGIC; 
  signal Result_2_FASTCARRY_467 : STD_LOGIC; 
  signal Result_2_CYMUXG2_466 : STD_LOGIC; 
  signal Result_2_CYMUXF2_465 : STD_LOGIC; 
  signal Result_2_LOGIC_ZERO_464 : STD_LOGIC; 
  signal Result_2_CYSELG_455 : STD_LOGIC; 
  signal Result_2_G : STD_LOGIC; 
  signal Result_6_XORF_560 : STD_LOGIC; 
  signal Result_6_CYINIT_559 : STD_LOGIC; 
  signal Result_6_F : STD_LOGIC; 
  signal Result_6_XORG_548 : STD_LOGIC; 
  signal Result_6_CYSELF_546 : STD_LOGIC; 
  signal Result_6_CYMUXFAST_545 : STD_LOGIC; 
  signal Result_6_CYAND_544 : STD_LOGIC; 
  signal Result_6_FASTCARRY_543 : STD_LOGIC; 
  signal Result_6_CYMUXG2_542 : STD_LOGIC; 
  signal Result_6_CYMUXF2_541 : STD_LOGIC; 
  signal Result_6_LOGIC_ZERO_540 : STD_LOGIC; 
  signal Result_6_CYSELG_531 : STD_LOGIC; 
  signal Result_6_G : STD_LOGIC; 
  signal Result_8_XORF_598 : STD_LOGIC; 
  signal Result_8_CYINIT_597 : STD_LOGIC; 
  signal Result_8_F : STD_LOGIC; 
  signal Result_8_XORG_586 : STD_LOGIC; 
  signal Result_8_CYSELF_584 : STD_LOGIC; 
  signal Result_8_CYMUXFAST_583 : STD_LOGIC; 
  signal Result_8_CYAND_582 : STD_LOGIC; 
  signal Result_8_FASTCARRY_581 : STD_LOGIC; 
  signal Result_8_CYMUXG2_580 : STD_LOGIC; 
  signal Result_8_CYMUXF2_579 : STD_LOGIC; 
  signal Result_8_LOGIC_ZERO_578 : STD_LOGIC; 
  signal Result_8_CYSELG_569 : STD_LOGIC; 
  signal Result_8_G : STD_LOGIC; 
  signal Result_10_XORF_636 : STD_LOGIC; 
  signal Result_10_CYINIT_635 : STD_LOGIC; 
  signal Result_10_F : STD_LOGIC; 
  signal Result_10_XORG_624 : STD_LOGIC; 
  signal Result_10_CYSELF_622 : STD_LOGIC; 
  signal Result_10_CYMUXFAST_621 : STD_LOGIC; 
  signal Result_10_CYAND_620 : STD_LOGIC; 
  signal Result_10_FASTCARRY_619 : STD_LOGIC; 
  signal Result_10_CYMUXG2_618 : STD_LOGIC; 
  signal Result_10_CYMUXF2_617 : STD_LOGIC; 
  signal Result_10_LOGIC_ZERO_616 : STD_LOGIC; 
  signal Result_10_CYSELG_607 : STD_LOGIC; 
  signal Result_10_G : STD_LOGIC; 
  signal Result_4_XORF_522 : STD_LOGIC; 
  signal Result_4_CYINIT_521 : STD_LOGIC; 
  signal Result_4_F : STD_LOGIC; 
  signal Result_4_XORG_510 : STD_LOGIC; 
  signal Result_4_CYSELF_508 : STD_LOGIC; 
  signal Result_4_CYMUXFAST_507 : STD_LOGIC; 
  signal Result_4_CYAND_506 : STD_LOGIC; 
  signal Result_4_FASTCARRY_505 : STD_LOGIC; 
  signal Result_4_CYMUXG2_504 : STD_LOGIC; 
  signal Result_4_CYMUXF2_503 : STD_LOGIC; 
  signal Result_4_LOGIC_ZERO_502 : STD_LOGIC; 
  signal Result_4_CYSELG_493 : STD_LOGIC; 
  signal Result_4_G : STD_LOGIC; 
  signal clk_filter_counter_cmp_eq0000_wg_cy_1_CYINIT_757 : STD_LOGIC; 
  signal clk_filter_counter_cmp_eq0000_wg_cy_1_CYSELF_748 : STD_LOGIC; 
  signal clk_filter_counter_4_rt : STD_LOGIC; 
  signal clk_filter_counter_cmp_eq0000_wg_cy_1_BXINV_746 : STD_LOGIC; 
  signal clk_filter_counter_cmp_eq0000_wg_cy_1_CYMUXG_745 : STD_LOGIC; 
  signal clk_filter_counter_cmp_eq0000_wg_cy_1_LOGIC_ZERO_743 : STD_LOGIC; 
  signal clk_filter_counter_cmp_eq0000_wg_cy_1_CYSELG_737 : STD_LOGIC; 
  signal Result_12_XORF_674 : STD_LOGIC; 
  signal Result_12_CYINIT_673 : STD_LOGIC; 
  signal Result_12_F : STD_LOGIC; 
  signal Result_12_XORG_662 : STD_LOGIC; 
  signal Result_12_CYSELF_660 : STD_LOGIC; 
  signal Result_12_CYMUXFAST_659 : STD_LOGIC; 
  signal Result_12_CYAND_658 : STD_LOGIC; 
  signal Result_12_FASTCARRY_657 : STD_LOGIC; 
  signal Result_12_CYMUXG2_656 : STD_LOGIC; 
  signal Result_12_CYMUXF2_655 : STD_LOGIC; 
  signal Result_12_LOGIC_ZERO_654 : STD_LOGIC; 
  signal Result_12_CYSELG_645 : STD_LOGIC; 
  signal Result_12_G : STD_LOGIC; 
  signal Result_16_XORF_727 : STD_LOGIC; 
  signal Result_16_CYINIT_726 : STD_LOGIC; 
  signal clk_filter_counter_16_rt_724 : STD_LOGIC; 
  signal Result_14_XORF_712 : STD_LOGIC; 
  signal Result_14_CYINIT_711 : STD_LOGIC; 
  signal Result_14_F : STD_LOGIC; 
  signal Result_14_XORG_700 : STD_LOGIC; 
  signal Result_14_CYSELF_698 : STD_LOGIC; 
  signal Result_14_CYMUXFAST_697 : STD_LOGIC; 
  signal Result_14_CYAND_696 : STD_LOGIC; 
  signal Result_14_FASTCARRY_695 : STD_LOGIC; 
  signal Result_14_CYMUXG2_694 : STD_LOGIC; 
  signal Result_14_CYMUXF2_693 : STD_LOGIC; 
  signal Result_14_LOGIC_ZERO_692 : STD_LOGIC; 
  signal Result_14_CYSELG_683 : STD_LOGIC; 
  signal Result_14_G : STD_LOGIC; 
  signal Y_4_O : STD_LOGIC; 
  signal X_5_INBUF : STD_LOGIC; 
  signal Y_2_O : STD_LOGIC; 
  signal X_7_INBUF : STD_LOGIC; 
  signal Y_5_O : STD_LOGIC; 
  signal Y_1_O : STD_LOGIC; 
  signal Y_3_O : STD_LOGIC; 
  signal clk_filter_counter_cmp_eq0000_wg_cy_3_CYSELF_781 : STD_LOGIC; 
  signal clk_filter_counter_cmp_eq0000_wg_cy_3_CYMUXFAST_780 : STD_LOGIC; 
  signal clk_filter_counter_cmp_eq0000_wg_cy_3_CYAND_779 : STD_LOGIC; 
  signal clk_filter_counter_cmp_eq0000_wg_cy_3_FASTCARRY_778 : STD_LOGIC; 
  signal clk_filter_counter_cmp_eq0000_wg_cy_3_CYMUXG2_777 : STD_LOGIC; 
  signal clk_filter_counter_cmp_eq0000_wg_cy_3_CYMUXF2_776 : STD_LOGIC; 
  signal clk_filter_counter_cmp_eq0000_wg_cy_3_LOGIC_ZERO_775 : STD_LOGIC; 
  signal clk_filter_counter_cmp_eq0000_wg_cy_3_CYSELG_769 : STD_LOGIC; 
  signal clk_filter_counter_cmp_eq0000_LOGIC_ZERO_802 : STD_LOGIC; 
  signal clk_filter_counter_cmp_eq0000_CYINIT_801 : STD_LOGIC; 
  signal clk_filter_counter_cmp_eq0000_CYSELF_795 : STD_LOGIC; 
  signal X_6_INBUF : STD_LOGIC; 
  signal Y_0_O : STD_LOGIC; 
  signal CLK_BUFGP_BUFG_S_INVNOT : STD_LOGIC; 
  signal LOAD_INBUF : STD_LOGIC; 
  signal X_1_INBUF : STD_LOGIC; 
  signal X_2_INBUF : STD_LOGIC; 
  signal SHIFT_INBUF : STD_LOGIC; 
  signal Y_6_O : STD_LOGIC; 
  signal X_3_INBUF : STD_LOGIC; 
  signal clk_filter_counter_5_DXMUX_979 : STD_LOGIC; 
  signal clk_filter_Mcount_counter_eqn_5 : STD_LOGIC; 
  signal clk_filter_counter_5_DYMUX_963 : STD_LOGIC; 
  signal clk_filter_Mcount_counter_eqn_4 : STD_LOGIC; 
  signal clk_filter_counter_5_SRINV_953 : STD_LOGIC; 
  signal clk_filter_counter_5_CLKINV_952 : STD_LOGIC; 
  signal ShiftRegister_0_FF_D_all_0_FF_D_i_Q_DXMUX_1105 : STD_LOGIC; 
  signal ShiftRegister_0_FF_D_all_0_FF_D_i_Q_DYMUX_1090 : STD_LOGIC; 
  signal ShiftRegister_0_FF_D_all_0_FF_D_i_Q_SRINV_1081 : STD_LOGIC; 
  signal ShiftRegister_0_FF_D_all_0_FF_D_i_Q_CLKINVNOT : STD_LOGIC; 
  signal X_4_INBUF : STD_LOGIC; 
  signal ShiftRegister_0_FF_D_all_2_FF_D_i_Q_DXMUX_1147 : STD_LOGIC; 
  signal ShiftRegister_0_FF_D_all_2_FF_D_i_Q_DYMUX_1132 : STD_LOGIC; 
  signal ShiftRegister_0_FF_D_all_2_FF_D_i_Q_SRINV_1123 : STD_LOGIC; 
  signal ShiftRegister_0_FF_D_all_2_FF_D_i_Q_CLKINVNOT : STD_LOGIC; 
  signal clk_filter_counter_9_DXMUX_1063 : STD_LOGIC; 
  signal clk_filter_Mcount_counter_eqn_9 : STD_LOGIC; 
  signal clk_filter_counter_9_DYMUX_1047 : STD_LOGIC; 
  signal clk_filter_Mcount_counter_eqn_8 : STD_LOGIC; 
  signal clk_filter_counter_9_SRINV_1037 : STD_LOGIC; 
  signal clk_filter_counter_9_CLKINV_1036 : STD_LOGIC; 
  signal Y_7_O : STD_LOGIC; 
  signal X_0_INBUF : STD_LOGIC; 
  signal clk_filter_counter_7_DXMUX_1021 : STD_LOGIC; 
  signal clk_filter_Mcount_counter_eqn_7 : STD_LOGIC; 
  signal clk_filter_counter_7_DYMUX_1005 : STD_LOGIC; 
  signal clk_filter_Mcount_counter_eqn_6 : STD_LOGIC; 
  signal clk_filter_counter_7_SRINV_995 : STD_LOGIC; 
  signal clk_filter_counter_7_CLKINV_994 : STD_LOGIC; 
  signal CLK_INBUF : STD_LOGIC; 
  signal RESET_INBUF : STD_LOGIC; 
  signal clk_filter_counter_11_DXMUX_1189 : STD_LOGIC; 
  signal clk_filter_Mcount_counter_eqn_11 : STD_LOGIC; 
  signal clk_filter_counter_11_DYMUX_1173 : STD_LOGIC; 
  signal clk_filter_Mcount_counter_eqn_10 : STD_LOGIC; 
  signal clk_filter_counter_11_SRINV_1163 : STD_LOGIC; 
  signal clk_filter_counter_11_CLKINV_1162 : STD_LOGIC; 
  signal clk_filter_counter_3_DXMUX_1464 : STD_LOGIC; 
  signal clk_filter_Mcount_counter_eqn_3 : STD_LOGIC; 
  signal clk_filter_counter_3_DYMUX_1448 : STD_LOGIC; 
  signal clk_filter_Mcount_counter_eqn_2 : STD_LOGIC; 
  signal clk_filter_counter_3_SRINV_1438 : STD_LOGIC; 
  signal clk_filter_counter_3_CLKINV_1437 : STD_LOGIC; 
  signal clk_filter_clockfx_DYMUX_1490 : STD_LOGIC; 
  signal clk_filter_clockfx_CLKINV_1487 : STD_LOGIC; 
  signal clk_filter_counter_15_DXMUX_1273 : STD_LOGIC; 
  signal clk_filter_Mcount_counter_eqn_15 : STD_LOGIC; 
  signal clk_filter_counter_15_DYMUX_1257 : STD_LOGIC; 
  signal clk_filter_Mcount_counter_eqn_14 : STD_LOGIC; 
  signal clk_filter_counter_15_SRINV_1247 : STD_LOGIC; 
  signal clk_filter_counter_15_CLKINV_1246 : STD_LOGIC; 
  signal Inst_Debouncer_LOAD_OUT_DYMUX_1504 : STD_LOGIC; 
  signal Inst_Debouncer_LOAD_OUT_BYINV_1503 : STD_LOGIC; 
  signal Inst_Debouncer_LOAD_OUT_SRINVNOT : STD_LOGIC; 
  signal Inst_Debouncer_LOAD_OUT_CLKINV_1501 : STD_LOGIC; 
  signal clk_filter_counter_1_DXMUX_1422 : STD_LOGIC; 
  signal clk_filter_Mcount_counter_eqn_1 : STD_LOGIC; 
  signal clk_filter_counter_1_DYMUX_1406 : STD_LOGIC; 
  signal clk_filter_Mcount_counter_eqn_0 : STD_LOGIC; 
  signal clk_filter_counter_1_SRINV_1396 : STD_LOGIC; 
  signal clk_filter_counter_1_CLKINV_1395 : STD_LOGIC; 
  signal Inst_Debouncer_SHIFT_OUT_DYMUX_1478 : STD_LOGIC; 
  signal Inst_Debouncer_SHIFT_OUT_BYINV_1477 : STD_LOGIC; 
  signal Inst_Debouncer_SHIFT_OUT_SRINV_1476 : STD_LOGIC; 
  signal Inst_Debouncer_SHIFT_OUT_CLKINV_1475 : STD_LOGIC; 
  signal clk_filter_counter_13_DXMUX_1231 : STD_LOGIC; 
  signal clk_filter_Mcount_counter_eqn_13 : STD_LOGIC; 
  signal clk_filter_counter_13_DYMUX_1215 : STD_LOGIC; 
  signal clk_filter_Mcount_counter_eqn_12 : STD_LOGIC; 
  signal clk_filter_counter_13_SRINV_1205 : STD_LOGIC; 
  signal clk_filter_counter_13_CLKINV_1204 : STD_LOGIC; 
  signal clk_filter_counter_16_DYMUX_1296 : STD_LOGIC; 
  signal clk_filter_Mcount_counter_eqn_16 : STD_LOGIC; 
  signal clk_filter_counter_16_CLKINV_1285 : STD_LOGIC; 
  signal ShiftRegister_0_FF_D_all_4_FF_D_i_Q_DXMUX_1338 : STD_LOGIC; 
  signal ShiftRegister_0_FF_D_all_4_FF_D_i_Q_DYMUX_1323 : STD_LOGIC; 
  signal ShiftRegister_0_FF_D_all_4_FF_D_i_Q_SRINV_1314 : STD_LOGIC; 
  signal ShiftRegister_0_FF_D_all_4_FF_D_i_Q_CLKINVNOT : STD_LOGIC; 
  signal Inst_Debouncer_SHIFT_OUT_or0000 : STD_LOGIC; 
  signal ShiftRegister_0_FF_D_all_6_FF_D_i_Q_DXMUX_1380 : STD_LOGIC; 
  signal ShiftRegister_0_FF_D_all_6_FF_D_i_Q_DYMUX_1365 : STD_LOGIC; 
  signal ShiftRegister_0_FF_D_all_6_FF_D_i_Q_SRINV_1356 : STD_LOGIC; 
  signal ShiftRegister_0_FF_D_all_6_FF_D_i_Q_CLKINVNOT : STD_LOGIC; 
  signal clk_filter_counter_16_FFY_RSTAND_1301 : STD_LOGIC; 
  signal clk_filter_clockfx_FFY_RSTAND_1495 : STD_LOGIC; 
  signal GND : STD_LOGIC; 
  signal VCC : STD_LOGIC; 
  signal clk_filter_counter : STD_LOGIC_VECTOR ( 16 downto 0 ); 
  signal Result : STD_LOGIC_VECTOR ( 16 downto 0 ); 
  signal clk_filter_Mcount_counter_cy : STD_LOGIC_VECTOR ( 14 downto 0 ); 
  signal clk_filter_Mcount_counter_lut : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal clk_filter_counter_cmp_eq0000_wg_cy : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal clk_filter_counter_cmp_eq0000_wg_lut : STD_LOGIC_VECTOR ( 4 downto 1 ); 
  signal ShiftRegister_0_MUX_OUT : STD_LOGIC_VECTOR ( 7 downto 0 ); 
begin
  Result_0_LOGIC_ZERO : X_ZERO
    port map (
      O => Result_0_LOGIC_ZERO_428
    );
  Result_0_LOGIC_ONE : X_ONE
    port map (
      O => Result_0_LOGIC_ONE_445
    );
  Result_0_XUSED : X_BUF
    generic map(
      PATHPULSE => 638 ps
    )
    port map (
      I => Result_0_XORF_446,
      O => Result(0)
    );
  Result_0_XORF : X_XOR2
    port map (
      I0 => Result_0_CYINIT_444,
      I1 => clk_filter_Mcount_counter_lut(0),
      O => Result_0_XORF_446
    );
  Result_0_CYMUXF : X_MUX2
    port map (
      IA => Result_0_LOGIC_ONE_445,
      IB => Result_0_CYINIT_444,
      SEL => Result_0_CYSELF_435,
      O => clk_filter_Mcount_counter_cy(0)
    );
  Result_0_CYINIT : X_BUF
    generic map(
      PATHPULSE => 638 ps
    )
    port map (
      I => Result_0_BXINV_433,
      O => Result_0_CYINIT_444
    );
  Result_0_CYSELF : X_BUF
    generic map(
      PATHPULSE => 638 ps
    )
    port map (
      I => clk_filter_Mcount_counter_lut(0),
      O => Result_0_CYSELF_435
    );
  Result_0_BXINV : X_BUF
    generic map(
      PATHPULSE => 638 ps
    )
    port map (
      I => '0',
      O => Result_0_BXINV_433
    );
  Result_0_YUSED : X_BUF
    generic map(
      PATHPULSE => 638 ps
    )
    port map (
      I => Result_0_XORG_431,
      O => Result(1)
    );
  Result_0_XORG : X_XOR2
    port map (
      I0 => clk_filter_Mcount_counter_cy(0),
      I1 => Result_0_G,
      O => Result_0_XORG_431
    );
  Result_0_COUTUSED : X_BUF
    generic map(
      PATHPULSE => 638 ps
    )
    port map (
      I => Result_0_CYMUXG_430,
      O => clk_filter_Mcount_counter_cy(1)
    );
  Result_0_CYMUXG : X_MUX2
    port map (
      IA => Result_0_LOGIC_ZERO_428,
      IB => clk_filter_Mcount_counter_cy(0),
      SEL => Result_0_CYSELG_419,
      O => Result_0_CYMUXG_430
    );
  Result_0_CYSELG : X_BUF
    generic map(
      PATHPULSE => 638 ps
    )
    port map (
      I => Result_0_G,
      O => Result_0_CYSELG_419
    );
  Result_2_LOGIC_ZERO : X_ZERO
    port map (
      O => Result_2_LOGIC_ZERO_464
    );
  Result_2_XUSED : X_BUF
    generic map(
      PATHPULSE => 638 ps
    )
    port map (
      I => Result_2_XORF_484,
      O => Result(2)
    );
  Result_2_XORF : X_XOR2
    port map (
      I0 => Result_2_CYINIT_483,
      I1 => Result_2_F,
      O => Result_2_XORF_484
    );
  Result_2_CYMUXF : X_MUX2
    port map (
      IA => Result_2_LOGIC_ZERO_464,
      IB => Result_2_CYINIT_483,
      SEL => Result_2_CYSELF_470,
      O => clk_filter_Mcount_counter_cy(2)
    );
  Result_2_CYMUXF2 : X_MUX2
    port map (
      IA => Result_2_LOGIC_ZERO_464,
      IB => Result_2_LOGIC_ZERO_464,
      SEL => Result_2_CYSELF_470,
      O => Result_2_CYMUXF2_465
    );
  Result_2_CYINIT : X_BUF
    generic map(
      PATHPULSE => 638 ps
    )
    port map (
      I => clk_filter_Mcount_counter_cy(1),
      O => Result_2_CYINIT_483
    );
  Result_2_CYSELF : X_BUF
    generic map(
      PATHPULSE => 638 ps
    )
    port map (
      I => Result_2_F,
      O => Result_2_CYSELF_470
    );
  Result_2_YUSED : X_BUF
    generic map(
      PATHPULSE => 638 ps
    )
    port map (
      I => Result_2_XORG_472,
      O => Result(3)
    );
  Result_2_XORG : X_XOR2
    port map (
      I0 => clk_filter_Mcount_counter_cy(2),
      I1 => Result_2_G,
      O => Result_2_XORG_472
    );
  Result_2_COUTUSED : X_BUF
    generic map(
      PATHPULSE => 638 ps
    )
    port map (
      I => Result_2_CYMUXFAST_469,
      O => clk_filter_Mcount_counter_cy(3)
    );
  Result_2_FASTCARRY : X_BUF
    generic map(
      PATHPULSE => 638 ps
    )
    port map (
      I => clk_filter_Mcount_counter_cy(1),
      O => Result_2_FASTCARRY_467
    );
  Result_2_CYAND : X_AND2
    port map (
      I0 => Result_2_CYSELG_455,
      I1 => Result_2_CYSELF_470,
      O => Result_2_CYAND_468
    );
  Result_2_CYMUXFAST : X_MUX2
    port map (
      IA => Result_2_CYMUXG2_466,
      IB => Result_2_FASTCARRY_467,
      SEL => Result_2_CYAND_468,
      O => Result_2_CYMUXFAST_469
    );
  Result_2_CYMUXG2 : X_MUX2
    port map (
      IA => Result_2_LOGIC_ZERO_464,
      IB => Result_2_CYMUXF2_465,
      SEL => Result_2_CYSELG_455,
      O => Result_2_CYMUXG2_466
    );
  Result_2_CYSELG : X_BUF
    generic map(
      PATHPULSE => 638 ps
    )
    port map (
      I => Result_2_G,
      O => Result_2_CYSELG_455
    );
  Result_6_LOGIC_ZERO : X_ZERO
    port map (
      O => Result_6_LOGIC_ZERO_540
    );
  Result_6_XUSED : X_BUF
    generic map(
      PATHPULSE => 638 ps
    )
    port map (
      I => Result_6_XORF_560,
      O => Result(6)
    );
  Result_6_XORF : X_XOR2
    port map (
      I0 => Result_6_CYINIT_559,
      I1 => Result_6_F,
      O => Result_6_XORF_560
    );
  Result_6_CYMUXF : X_MUX2
    port map (
      IA => Result_6_LOGIC_ZERO_540,
      IB => Result_6_CYINIT_559,
      SEL => Result_6_CYSELF_546,
      O => clk_filter_Mcount_counter_cy(6)
    );
  Result_6_CYMUXF2 : X_MUX2
    port map (
      IA => Result_6_LOGIC_ZERO_540,
      IB => Result_6_LOGIC_ZERO_540,
      SEL => Result_6_CYSELF_546,
      O => Result_6_CYMUXF2_541
    );
  Result_6_CYINIT : X_BUF
    generic map(
      PATHPULSE => 638 ps
    )
    port map (
      I => clk_filter_Mcount_counter_cy(5),
      O => Result_6_CYINIT_559
    );
  Result_6_CYSELF : X_BUF
    generic map(
      PATHPULSE => 638 ps
    )
    port map (
      I => Result_6_F,
      O => Result_6_CYSELF_546
    );
  Result_6_YUSED : X_BUF
    generic map(
      PATHPULSE => 638 ps
    )
    port map (
      I => Result_6_XORG_548,
      O => Result(7)
    );
  Result_6_XORG : X_XOR2
    port map (
      I0 => clk_filter_Mcount_counter_cy(6),
      I1 => Result_6_G,
      O => Result_6_XORG_548
    );
  Result_6_COUTUSED : X_BUF
    generic map(
      PATHPULSE => 638 ps
    )
    port map (
      I => Result_6_CYMUXFAST_545,
      O => clk_filter_Mcount_counter_cy(7)
    );
  Result_6_FASTCARRY : X_BUF
    generic map(
      PATHPULSE => 638 ps
    )
    port map (
      I => clk_filter_Mcount_counter_cy(5),
      O => Result_6_FASTCARRY_543
    );
  Result_6_CYAND : X_AND2
    port map (
      I0 => Result_6_CYSELG_531,
      I1 => Result_6_CYSELF_546,
      O => Result_6_CYAND_544
    );
  Result_6_CYMUXFAST : X_MUX2
    port map (
      IA => Result_6_CYMUXG2_542,
      IB => Result_6_FASTCARRY_543,
      SEL => Result_6_CYAND_544,
      O => Result_6_CYMUXFAST_545
    );
  Result_6_CYMUXG2 : X_MUX2
    port map (
      IA => Result_6_LOGIC_ZERO_540,
      IB => Result_6_CYMUXF2_541,
      SEL => Result_6_CYSELG_531,
      O => Result_6_CYMUXG2_542
    );
  Result_6_CYSELG : X_BUF
    generic map(
      PATHPULSE => 638 ps
    )
    port map (
      I => Result_6_G,
      O => Result_6_CYSELG_531
    );
  Result_8_LOGIC_ZERO : X_ZERO
    port map (
      O => Result_8_LOGIC_ZERO_578
    );
  Result_8_XUSED : X_BUF
    generic map(
      PATHPULSE => 638 ps
    )
    port map (
      I => Result_8_XORF_598,
      O => Result(8)
    );
  Result_8_XORF : X_XOR2
    port map (
      I0 => Result_8_CYINIT_597,
      I1 => Result_8_F,
      O => Result_8_XORF_598
    );
  Result_8_CYMUXF : X_MUX2
    port map (
      IA => Result_8_LOGIC_ZERO_578,
      IB => Result_8_CYINIT_597,
      SEL => Result_8_CYSELF_584,
      O => clk_filter_Mcount_counter_cy(8)
    );
  Result_8_CYMUXF2 : X_MUX2
    port map (
      IA => Result_8_LOGIC_ZERO_578,
      IB => Result_8_LOGIC_ZERO_578,
      SEL => Result_8_CYSELF_584,
      O => Result_8_CYMUXF2_579
    );
  Result_8_CYINIT : X_BUF
    generic map(
      PATHPULSE => 638 ps
    )
    port map (
      I => clk_filter_Mcount_counter_cy(7),
      O => Result_8_CYINIT_597
    );
  Result_8_CYSELF : X_BUF
    generic map(
      PATHPULSE => 638 ps
    )
    port map (
      I => Result_8_F,
      O => Result_8_CYSELF_584
    );
  Result_8_YUSED : X_BUF
    generic map(
      PATHPULSE => 638 ps
    )
    port map (
      I => Result_8_XORG_586,
      O => Result(9)
    );
  Result_8_XORG : X_XOR2
    port map (
      I0 => clk_filter_Mcount_counter_cy(8),
      I1 => Result_8_G,
      O => Result_8_XORG_586
    );
  Result_8_COUTUSED : X_BUF
    generic map(
      PATHPULSE => 638 ps
    )
    port map (
      I => Result_8_CYMUXFAST_583,
      O => clk_filter_Mcount_counter_cy(9)
    );
  Result_8_FASTCARRY : X_BUF
    generic map(
      PATHPULSE => 638 ps
    )
    port map (
      I => clk_filter_Mcount_counter_cy(7),
      O => Result_8_FASTCARRY_581
    );
  Result_8_CYAND : X_AND2
    port map (
      I0 => Result_8_CYSELG_569,
      I1 => Result_8_CYSELF_584,
      O => Result_8_CYAND_582
    );
  Result_8_CYMUXFAST : X_MUX2
    port map (
      IA => Result_8_CYMUXG2_580,
      IB => Result_8_FASTCARRY_581,
      SEL => Result_8_CYAND_582,
      O => Result_8_CYMUXFAST_583
    );
  Result_8_CYMUXG2 : X_MUX2
    port map (
      IA => Result_8_LOGIC_ZERO_578,
      IB => Result_8_CYMUXF2_579,
      SEL => Result_8_CYSELG_569,
      O => Result_8_CYMUXG2_580
    );
  Result_8_CYSELG : X_BUF
    generic map(
      PATHPULSE => 638 ps
    )
    port map (
      I => Result_8_G,
      O => Result_8_CYSELG_569
    );
  Result_10_LOGIC_ZERO : X_ZERO
    port map (
      O => Result_10_LOGIC_ZERO_616
    );
  Result_10_XUSED : X_BUF
    generic map(
      PATHPULSE => 638 ps
    )
    port map (
      I => Result_10_XORF_636,
      O => Result(10)
    );
  Result_10_XORF : X_XOR2
    port map (
      I0 => Result_10_CYINIT_635,
      I1 => Result_10_F,
      O => Result_10_XORF_636
    );
  Result_10_CYMUXF : X_MUX2
    port map (
      IA => Result_10_LOGIC_ZERO_616,
      IB => Result_10_CYINIT_635,
      SEL => Result_10_CYSELF_622,
      O => clk_filter_Mcount_counter_cy(10)
    );
  Result_10_CYMUXF2 : X_MUX2
    port map (
      IA => Result_10_LOGIC_ZERO_616,
      IB => Result_10_LOGIC_ZERO_616,
      SEL => Result_10_CYSELF_622,
      O => Result_10_CYMUXF2_617
    );
  Result_10_CYINIT : X_BUF
    generic map(
      PATHPULSE => 638 ps
    )
    port map (
      I => clk_filter_Mcount_counter_cy(9),
      O => Result_10_CYINIT_635
    );
  Result_10_CYSELF : X_BUF
    generic map(
      PATHPULSE => 638 ps
    )
    port map (
      I => Result_10_F,
      O => Result_10_CYSELF_622
    );
  Result_10_YUSED : X_BUF
    generic map(
      PATHPULSE => 638 ps
    )
    port map (
      I => Result_10_XORG_624,
      O => Result(11)
    );
  Result_10_XORG : X_XOR2
    port map (
      I0 => clk_filter_Mcount_counter_cy(10),
      I1 => Result_10_G,
      O => Result_10_XORG_624
    );
  Result_10_COUTUSED : X_BUF
    generic map(
      PATHPULSE => 638 ps
    )
    port map (
      I => Result_10_CYMUXFAST_621,
      O => clk_filter_Mcount_counter_cy(11)
    );
  Result_10_FASTCARRY : X_BUF
    generic map(
      PATHPULSE => 638 ps
    )
    port map (
      I => clk_filter_Mcount_counter_cy(9),
      O => Result_10_FASTCARRY_619
    );
  Result_10_CYAND : X_AND2
    port map (
      I0 => Result_10_CYSELG_607,
      I1 => Result_10_CYSELF_622,
      O => Result_10_CYAND_620
    );
  Result_10_CYMUXFAST : X_MUX2
    port map (
      IA => Result_10_CYMUXG2_618,
      IB => Result_10_FASTCARRY_619,
      SEL => Result_10_CYAND_620,
      O => Result_10_CYMUXFAST_621
    );
  Result_10_CYMUXG2 : X_MUX2
    port map (
      IA => Result_10_LOGIC_ZERO_616,
      IB => Result_10_CYMUXF2_617,
      SEL => Result_10_CYSELG_607,
      O => Result_10_CYMUXG2_618
    );
  Result_10_CYSELG : X_BUF
    generic map(
      PATHPULSE => 638 ps
    )
    port map (
      I => Result_10_G,
      O => Result_10_CYSELG_607
    );
  Result_4_LOGIC_ZERO : X_ZERO
    port map (
      O => Result_4_LOGIC_ZERO_502
    );
  Result_4_XUSED : X_BUF
    generic map(
      PATHPULSE => 638 ps
    )
    port map (
      I => Result_4_XORF_522,
      O => Result(4)
    );
  Result_4_XORF : X_XOR2
    port map (
      I0 => Result_4_CYINIT_521,
      I1 => Result_4_F,
      O => Result_4_XORF_522
    );
  Result_4_CYMUXF : X_MUX2
    port map (
      IA => Result_4_LOGIC_ZERO_502,
      IB => Result_4_CYINIT_521,
      SEL => Result_4_CYSELF_508,
      O => clk_filter_Mcount_counter_cy(4)
    );
  Result_4_CYMUXF2 : X_MUX2
    port map (
      IA => Result_4_LOGIC_ZERO_502,
      IB => Result_4_LOGIC_ZERO_502,
      SEL => Result_4_CYSELF_508,
      O => Result_4_CYMUXF2_503
    );
  Result_4_CYINIT : X_BUF
    generic map(
      PATHPULSE => 638 ps
    )
    port map (
      I => clk_filter_Mcount_counter_cy(3),
      O => Result_4_CYINIT_521
    );
  Result_4_CYSELF : X_BUF
    generic map(
      PATHPULSE => 638 ps
    )
    port map (
      I => Result_4_F,
      O => Result_4_CYSELF_508
    );
  Result_4_YUSED : X_BUF
    generic map(
      PATHPULSE => 638 ps
    )
    port map (
      I => Result_4_XORG_510,
      O => Result(5)
    );
  Result_4_XORG : X_XOR2
    port map (
      I0 => clk_filter_Mcount_counter_cy(4),
      I1 => Result_4_G,
      O => Result_4_XORG_510
    );
  Result_4_COUTUSED : X_BUF
    generic map(
      PATHPULSE => 638 ps
    )
    port map (
      I => Result_4_CYMUXFAST_507,
      O => clk_filter_Mcount_counter_cy(5)
    );
  Result_4_FASTCARRY : X_BUF
    generic map(
      PATHPULSE => 638 ps
    )
    port map (
      I => clk_filter_Mcount_counter_cy(3),
      O => Result_4_FASTCARRY_505
    );
  Result_4_CYAND : X_AND2
    port map (
      I0 => Result_4_CYSELG_493,
      I1 => Result_4_CYSELF_508,
      O => Result_4_CYAND_506
    );
  Result_4_CYMUXFAST : X_MUX2
    port map (
      IA => Result_4_CYMUXG2_504,
      IB => Result_4_FASTCARRY_505,
      SEL => Result_4_CYAND_506,
      O => Result_4_CYMUXFAST_507
    );
  Result_4_CYMUXG2 : X_MUX2
    port map (
      IA => Result_4_LOGIC_ZERO_502,
      IB => Result_4_CYMUXF2_503,
      SEL => Result_4_CYSELG_493,
      O => Result_4_CYMUXG2_504
    );
  Result_4_CYSELG : X_BUF
    generic map(
      PATHPULSE => 638 ps
    )
    port map (
      I => Result_4_G,
      O => Result_4_CYSELG_493
    );
  clk_filter_counter_cmp_eq0000_wg_cy_1_LOGIC_ZERO : X_ZERO
    port map (
      O => clk_filter_counter_cmp_eq0000_wg_cy_1_LOGIC_ZERO_743
    );
  clk_filter_counter_cmp_eq0000_wg_cy_1_CYMUXF : X_MUX2
    port map (
      IA => clk_filter_counter_cmp_eq0000_wg_cy_1_LOGIC_ZERO_743,
      IB => clk_filter_counter_cmp_eq0000_wg_cy_1_CYINIT_757,
      SEL => clk_filter_counter_cmp_eq0000_wg_cy_1_CYSELF_748,
      O => clk_filter_counter_cmp_eq0000_wg_cy(0)
    );
  clk_filter_counter_cmp_eq0000_wg_cy_1_CYINIT : X_BUF
    generic map(
      PATHPULSE => 638 ps
    )
    port map (
      I => clk_filter_counter_cmp_eq0000_wg_cy_1_BXINV_746,
      O => clk_filter_counter_cmp_eq0000_wg_cy_1_CYINIT_757
    );
  clk_filter_counter_cmp_eq0000_wg_cy_1_CYSELF : X_BUF
    generic map(
      PATHPULSE => 638 ps
    )
    port map (
      I => clk_filter_counter_4_rt,
      O => clk_filter_counter_cmp_eq0000_wg_cy_1_CYSELF_748
    );
  clk_filter_counter_cmp_eq0000_wg_cy_1_BXINV : X_BUF
    generic map(
      PATHPULSE => 638 ps
    )
    port map (
      I => '1',
      O => clk_filter_counter_cmp_eq0000_wg_cy_1_BXINV_746
    );
  clk_filter_counter_cmp_eq0000_wg_cy_1_CYMUXG : X_MUX2
    port map (
      IA => clk_filter_counter_cmp_eq0000_wg_cy_1_LOGIC_ZERO_743,
      IB => clk_filter_counter_cmp_eq0000_wg_cy(0),
      SEL => clk_filter_counter_cmp_eq0000_wg_cy_1_CYSELG_737,
      O => clk_filter_counter_cmp_eq0000_wg_cy_1_CYMUXG_745
    );
  clk_filter_counter_cmp_eq0000_wg_cy_1_CYSELG : X_BUF
    generic map(
      PATHPULSE => 638 ps
    )
    port map (
      I => clk_filter_counter_cmp_eq0000_wg_lut(1),
      O => clk_filter_counter_cmp_eq0000_wg_cy_1_CYSELG_737
    );
  Result_12_LOGIC_ZERO : X_ZERO
    port map (
      O => Result_12_LOGIC_ZERO_654
    );
  Result_12_XUSED : X_BUF
    generic map(
      PATHPULSE => 638 ps
    )
    port map (
      I => Result_12_XORF_674,
      O => Result(12)
    );
  Result_12_XORF : X_XOR2
    port map (
      I0 => Result_12_CYINIT_673,
      I1 => Result_12_F,
      O => Result_12_XORF_674
    );
  Result_12_CYMUXF : X_MUX2
    port map (
      IA => Result_12_LOGIC_ZERO_654,
      IB => Result_12_CYINIT_673,
      SEL => Result_12_CYSELF_660,
      O => clk_filter_Mcount_counter_cy(12)
    );
  Result_12_CYMUXF2 : X_MUX2
    port map (
      IA => Result_12_LOGIC_ZERO_654,
      IB => Result_12_LOGIC_ZERO_654,
      SEL => Result_12_CYSELF_660,
      O => Result_12_CYMUXF2_655
    );
  Result_12_CYINIT : X_BUF
    generic map(
      PATHPULSE => 638 ps
    )
    port map (
      I => clk_filter_Mcount_counter_cy(11),
      O => Result_12_CYINIT_673
    );
  Result_12_CYSELF : X_BUF
    generic map(
      PATHPULSE => 638 ps
    )
    port map (
      I => Result_12_F,
      O => Result_12_CYSELF_660
    );
  Result_12_YUSED : X_BUF
    generic map(
      PATHPULSE => 638 ps
    )
    port map (
      I => Result_12_XORG_662,
      O => Result(13)
    );
  Result_12_XORG : X_XOR2
    port map (
      I0 => clk_filter_Mcount_counter_cy(12),
      I1 => Result_12_G,
      O => Result_12_XORG_662
    );
  Result_12_COUTUSED : X_BUF
    generic map(
      PATHPULSE => 638 ps
    )
    port map (
      I => Result_12_CYMUXFAST_659,
      O => clk_filter_Mcount_counter_cy(13)
    );
  Result_12_FASTCARRY : X_BUF
    generic map(
      PATHPULSE => 638 ps
    )
    port map (
      I => clk_filter_Mcount_counter_cy(11),
      O => Result_12_FASTCARRY_657
    );
  Result_12_CYAND : X_AND2
    port map (
      I0 => Result_12_CYSELG_645,
      I1 => Result_12_CYSELF_660,
      O => Result_12_CYAND_658
    );
  Result_12_CYMUXFAST : X_MUX2
    port map (
      IA => Result_12_CYMUXG2_656,
      IB => Result_12_FASTCARRY_657,
      SEL => Result_12_CYAND_658,
      O => Result_12_CYMUXFAST_659
    );
  Result_12_CYMUXG2 : X_MUX2
    port map (
      IA => Result_12_LOGIC_ZERO_654,
      IB => Result_12_CYMUXF2_655,
      SEL => Result_12_CYSELG_645,
      O => Result_12_CYMUXG2_656
    );
  Result_12_CYSELG : X_BUF
    generic map(
      PATHPULSE => 638 ps
    )
    port map (
      I => Result_12_G,
      O => Result_12_CYSELG_645
    );
  Result_16_XUSED : X_BUF
    generic map(
      PATHPULSE => 638 ps
    )
    port map (
      I => Result_16_XORF_727,
      O => Result(16)
    );
  Result_16_XORF : X_XOR2
    port map (
      I0 => Result_16_CYINIT_726,
      I1 => clk_filter_counter_16_rt_724,
      O => Result_16_XORF_727
    );
  Result_16_CYINIT : X_BUF
    generic map(
      PATHPULSE => 638 ps
    )
    port map (
      I => Result_14_CYMUXFAST_697,
      O => Result_16_CYINIT_726
    );
  Result_14_LOGIC_ZERO : X_ZERO
    port map (
      O => Result_14_LOGIC_ZERO_692
    );
  Result_14_XUSED : X_BUF
    generic map(
      PATHPULSE => 638 ps
    )
    port map (
      I => Result_14_XORF_712,
      O => Result(14)
    );
  Result_14_XORF : X_XOR2
    port map (
      I0 => Result_14_CYINIT_711,
      I1 => Result_14_F,
      O => Result_14_XORF_712
    );
  Result_14_CYMUXF : X_MUX2
    port map (
      IA => Result_14_LOGIC_ZERO_692,
      IB => Result_14_CYINIT_711,
      SEL => Result_14_CYSELF_698,
      O => clk_filter_Mcount_counter_cy(14)
    );
  Result_14_CYMUXF2 : X_MUX2
    port map (
      IA => Result_14_LOGIC_ZERO_692,
      IB => Result_14_LOGIC_ZERO_692,
      SEL => Result_14_CYSELF_698,
      O => Result_14_CYMUXF2_693
    );
  Result_14_CYINIT : X_BUF
    generic map(
      PATHPULSE => 638 ps
    )
    port map (
      I => clk_filter_Mcount_counter_cy(13),
      O => Result_14_CYINIT_711
    );
  Result_14_CYSELF : X_BUF
    generic map(
      PATHPULSE => 638 ps
    )
    port map (
      I => Result_14_F,
      O => Result_14_CYSELF_698
    );
  Result_14_YUSED : X_BUF
    generic map(
      PATHPULSE => 638 ps
    )
    port map (
      I => Result_14_XORG_700,
      O => Result(15)
    );
  Result_14_XORG : X_XOR2
    port map (
      I0 => clk_filter_Mcount_counter_cy(14),
      I1 => Result_14_G,
      O => Result_14_XORG_700
    );
  Result_14_FASTCARRY : X_BUF
    generic map(
      PATHPULSE => 638 ps
    )
    port map (
      I => clk_filter_Mcount_counter_cy(13),
      O => Result_14_FASTCARRY_695
    );
  Result_14_CYAND : X_AND2
    port map (
      I0 => Result_14_CYSELG_683,
      I1 => Result_14_CYSELF_698,
      O => Result_14_CYAND_696
    );
  Result_14_CYMUXFAST : X_MUX2
    port map (
      IA => Result_14_CYMUXG2_694,
      IB => Result_14_FASTCARRY_695,
      SEL => Result_14_CYAND_696,
      O => Result_14_CYMUXFAST_697
    );
  Result_14_CYMUXG2 : X_MUX2
    port map (
      IA => Result_14_LOGIC_ZERO_692,
      IB => Result_14_CYMUXF2_693,
      SEL => Result_14_CYSELG_683,
      O => Result_14_CYMUXG2_694
    );
  Result_14_CYSELG : X_BUF
    generic map(
      PATHPULSE => 638 ps
    )
    port map (
      I => Result_14_G,
      O => Result_14_CYSELG_683
    );
  Y_4_OBUF : X_OBUF
    port map (
      I => Y_4_O,
      O => Y(4)
    );
  X_5_IFF_IMUX : X_BUF
    generic map(
      PATHPULSE => 638 ps
    )
    port map (
      I => X_5_INBUF,
      O => X_5_IBUF_388
    );
  X_5_IBUF : X_BUF
    generic map(
      PATHPULSE => 638 ps
    )
    port map (
      I => X(5),
      O => X_5_INBUF
    );
  Y_2_OBUF : X_OBUF
    port map (
      I => Y_2_O,
      O => Y(2)
    );
  X_7_IFF_IMUX : X_BUF
    generic map(
      PATHPULSE => 638 ps
    )
    port map (
      I => X_7_INBUF,
      O => X_7_IBUF_392
    );
  X_7_IBUF : X_BUF
    generic map(
      PATHPULSE => 638 ps
    )
    port map (
      I => X(7),
      O => X_7_INBUF
    );
  Y_5_OBUF : X_OBUF
    port map (
      I => Y_5_O,
      O => Y(5)
    );
  Y_1_OBUF : X_OBUF
    port map (
      I => Y_1_O,
      O => Y(1)
    );
  Y_3_OBUF : X_OBUF
    port map (
      I => Y_3_O,
      O => Y(3)
    );
  clk_filter_counter_cmp_eq0000_wg_lut_2_Q : X_LUT4
    generic map(
      INIT => X"4000"
    )
    port map (
      ADR0 => clk_filter_counter(8),
      ADR1 => clk_filter_counter(9),
      ADR2 => clk_filter_counter(1),
      ADR3 => clk_filter_counter(10),
      O => clk_filter_counter_cmp_eq0000_wg_lut(2)
    );
  clk_filter_counter_cmp_eq0000_wg_cy_3_LOGIC_ZERO : X_ZERO
    port map (
      O => clk_filter_counter_cmp_eq0000_wg_cy_3_LOGIC_ZERO_775
    );
  clk_filter_counter_cmp_eq0000_wg_cy_3_CYMUXF2 : X_MUX2
    port map (
      IA => clk_filter_counter_cmp_eq0000_wg_cy_3_LOGIC_ZERO_775,
      IB => clk_filter_counter_cmp_eq0000_wg_cy_3_LOGIC_ZERO_775,
      SEL => clk_filter_counter_cmp_eq0000_wg_cy_3_CYSELF_781,
      O => clk_filter_counter_cmp_eq0000_wg_cy_3_CYMUXF2_776
    );
  clk_filter_counter_cmp_eq0000_wg_cy_3_CYSELF : X_BUF
    generic map(
      PATHPULSE => 638 ps
    )
    port map (
      I => clk_filter_counter_cmp_eq0000_wg_lut(2),
      O => clk_filter_counter_cmp_eq0000_wg_cy_3_CYSELF_781
    );
  clk_filter_counter_cmp_eq0000_wg_cy_3_FASTCARRY : X_BUF
    generic map(
      PATHPULSE => 638 ps
    )
    port map (
      I => clk_filter_counter_cmp_eq0000_wg_cy_1_CYMUXG_745,
      O => clk_filter_counter_cmp_eq0000_wg_cy_3_FASTCARRY_778
    );
  clk_filter_counter_cmp_eq0000_wg_cy_3_CYAND : X_AND2
    port map (
      I0 => clk_filter_counter_cmp_eq0000_wg_cy_3_CYSELG_769,
      I1 => clk_filter_counter_cmp_eq0000_wg_cy_3_CYSELF_781,
      O => clk_filter_counter_cmp_eq0000_wg_cy_3_CYAND_779
    );
  clk_filter_counter_cmp_eq0000_wg_cy_3_CYMUXFAST : X_MUX2
    port map (
      IA => clk_filter_counter_cmp_eq0000_wg_cy_3_CYMUXG2_777,
      IB => clk_filter_counter_cmp_eq0000_wg_cy_3_FASTCARRY_778,
      SEL => clk_filter_counter_cmp_eq0000_wg_cy_3_CYAND_779,
      O => clk_filter_counter_cmp_eq0000_wg_cy_3_CYMUXFAST_780
    );
  clk_filter_counter_cmp_eq0000_wg_cy_3_CYMUXG2 : X_MUX2
    port map (
      IA => clk_filter_counter_cmp_eq0000_wg_cy_3_LOGIC_ZERO_775,
      IB => clk_filter_counter_cmp_eq0000_wg_cy_3_CYMUXF2_776,
      SEL => clk_filter_counter_cmp_eq0000_wg_cy_3_CYSELG_769,
      O => clk_filter_counter_cmp_eq0000_wg_cy_3_CYMUXG2_777
    );
  clk_filter_counter_cmp_eq0000_wg_cy_3_CYSELG : X_BUF
    generic map(
      PATHPULSE => 638 ps
    )
    port map (
      I => clk_filter_counter_cmp_eq0000_wg_lut(3),
      O => clk_filter_counter_cmp_eq0000_wg_cy_3_CYSELG_769
    );
  clk_filter_counter_cmp_eq0000_wg_lut_4_Q : X_LUT4
    generic map(
      INIT => X"4000"
    )
    port map (
      ADR0 => clk_filter_counter(14),
      ADR1 => clk_filter_counter(15),
      ADR2 => clk_filter_counter(2),
      ADR3 => clk_filter_counter(16),
      O => clk_filter_counter_cmp_eq0000_wg_lut(4)
    );
  clk_filter_counter_cmp_eq0000_LOGIC_ZERO : X_ZERO
    port map (
      O => clk_filter_counter_cmp_eq0000_LOGIC_ZERO_802
    );
  clk_filter_counter_cmp_eq0000_CYMUXF : X_MUX2
    port map (
      IA => clk_filter_counter_cmp_eq0000_LOGIC_ZERO_802,
      IB => clk_filter_counter_cmp_eq0000_CYINIT_801,
      SEL => clk_filter_counter_cmp_eq0000_CYSELF_795,
      O => clk_filter_counter_cmp_eq0000
    );
  clk_filter_counter_cmp_eq0000_CYINIT : X_BUF
    generic map(
      PATHPULSE => 638 ps
    )
    port map (
      I => clk_filter_counter_cmp_eq0000_wg_cy_3_CYMUXFAST_780,
      O => clk_filter_counter_cmp_eq0000_CYINIT_801
    );
  clk_filter_counter_cmp_eq0000_CYSELF : X_BUF
    generic map(
      PATHPULSE => 638 ps
    )
    port map (
      I => clk_filter_counter_cmp_eq0000_wg_lut(4),
      O => clk_filter_counter_cmp_eq0000_CYSELF_795
    );
  X_6_IFF_IMUX : X_BUF
    generic map(
      PATHPULSE => 638 ps
    )
    port map (
      I => X_6_INBUF,
      O => X_6_IBUF_390
    );
  X_6_IBUF : X_BUF
    generic map(
      PATHPULSE => 638 ps
    )
    port map (
      I => X(6),
      O => X_6_INBUF
    );
  Y_0_OBUF : X_OBUF
    port map (
      I => Y_0_O,
      O => Y(0)
    );
  CLK_BUFGP_BUFG : X_BUFGMUX
    port map (
      I0 => CLK_BUFGP_IBUFG_398,
      I1 => GND,
      S => CLK_BUFGP_BUFG_S_INVNOT,
      O => CLK_BUFGP
    );
  CLK_BUFGP_BUFG_SINV : X_INV
    generic map(
      PATHPULSE => 638 ps
    )
    port map (
      I => '1',
      O => CLK_BUFGP_BUFG_S_INVNOT
    );
  LOAD_IFF_IMUX : X_BUF
    generic map(
      PATHPULSE => 638 ps
    )
    port map (
      I => LOAD_INBUF,
      O => LOAD_IBUF_396
    );
  LOAD_IBUF : X_BUF
    generic map(
      PATHPULSE => 638 ps
    )
    port map (
      I => LOAD,
      O => LOAD_INBUF
    );
  X_1_IBUF : X_BUF
    generic map(
      PATHPULSE => 638 ps
    )
    port map (
      I => X(1),
      O => X_1_INBUF
    );
  X_2_IBUF : X_BUF
    generic map(
      PATHPULSE => 638 ps
    )
    port map (
      I => X(2),
      O => X_2_INBUF
    );
  SHIFT_IFF_IMUX : X_BUF
    generic map(
      PATHPULSE => 638 ps
    )
    port map (
      I => SHIFT_INBUF,
      O => SHIFT_IBUF_403
    );
  SHIFT_IBUF : X_BUF
    generic map(
      PATHPULSE => 638 ps
    )
    port map (
      I => SHIFT,
      O => SHIFT_INBUF
    );
  Y_6_OBUF : X_OBUF
    port map (
      I => Y_6_O,
      O => Y(6)
    );
  X_3_IFF_IMUX : X_BUF
    generic map(
      PATHPULSE => 638 ps
    )
    port map (
      I => X_3_INBUF,
      O => X_3_IBUF_404
    );
  X_3_IBUF : X_BUF
    generic map(
      PATHPULSE => 638 ps
    )
    port map (
      I => X(3),
      O => X_3_INBUF
    );
  clk_filter_counter_5_DXMUX : X_BUF
    generic map(
      PATHPULSE => 638 ps
    )
    port map (
      I => clk_filter_Mcount_counter_eqn_5,
      O => clk_filter_counter_5_DXMUX_979
    );
  clk_filter_counter_5_DYMUX : X_BUF
    generic map(
      PATHPULSE => 638 ps
    )
    port map (
      I => clk_filter_Mcount_counter_eqn_4,
      O => clk_filter_counter_5_DYMUX_963
    );
  clk_filter_counter_5_SRINV : X_BUF
    generic map(
      PATHPULSE => 638 ps
    )
    port map (
      I => RESET_IBUF_401,
      O => clk_filter_counter_5_SRINV_953
    );
  clk_filter_counter_5_CLKINV : X_BUF
    generic map(
      PATHPULSE => 638 ps
    )
    port map (
      I => CLK_BUFGP,
      O => clk_filter_counter_5_CLKINV_952
    );
  ShiftRegister_0_FF_D_all_0_FF_D_i_Q_DXMUX : X_BUF
    generic map(
      PATHPULSE => 638 ps
    )
    port map (
      I => ShiftRegister_0_MUX_OUT(0),
      O => ShiftRegister_0_FF_D_all_0_FF_D_i_Q_DXMUX_1105
    );
  ShiftRegister_0_FF_D_all_0_FF_D_i_Q_DYMUX : X_BUF
    generic map(
      PATHPULSE => 638 ps
    )
    port map (
      I => ShiftRegister_0_MUX_OUT(7),
      O => ShiftRegister_0_FF_D_all_0_FF_D_i_Q_DYMUX_1090
    );
  ShiftRegister_0_FF_D_all_0_FF_D_i_Q_SRINV : X_BUF
    generic map(
      PATHPULSE => 638 ps
    )
    port map (
      I => RESET_IBUF_401,
      O => ShiftRegister_0_FF_D_all_0_FF_D_i_Q_SRINV_1081
    );
  ShiftRegister_0_FF_D_all_0_FF_D_i_Q_CLKINV : X_INV
    generic map(
      PATHPULSE => 638 ps
    )
    port map (
      I => Inst_Debouncer_SHIFT_OUT_408,
      O => ShiftRegister_0_FF_D_all_0_FF_D_i_Q_CLKINVNOT
    );
  X_4_IFF_IMUX : X_BUF
    generic map(
      PATHPULSE => 638 ps
    )
    port map (
      I => X_4_INBUF,
      O => X_4_IBUF_406
    );
  X_4_IBUF : X_BUF
    generic map(
      PATHPULSE => 638 ps
    )
    port map (
      I => X(4),
      O => X_4_INBUF
    );
  ShiftRegister_0_FF_D_all_2_FF_D_i_Q_DXMUX : X_BUF
    generic map(
      PATHPULSE => 638 ps
    )
    port map (
      I => ShiftRegister_0_MUX_OUT(2),
      O => ShiftRegister_0_FF_D_all_2_FF_D_i_Q_DXMUX_1147
    );
  ShiftRegister_0_FF_D_all_2_FF_D_i_Q_DYMUX : X_BUF
    generic map(
      PATHPULSE => 638 ps
    )
    port map (
      I => ShiftRegister_0_MUX_OUT(1),
      O => ShiftRegister_0_FF_D_all_2_FF_D_i_Q_DYMUX_1132
    );
  ShiftRegister_0_FF_D_all_2_FF_D_i_Q_SRINV : X_BUF
    generic map(
      PATHPULSE => 638 ps
    )
    port map (
      I => RESET_IBUF_401,
      O => ShiftRegister_0_FF_D_all_2_FF_D_i_Q_SRINV_1123
    );
  ShiftRegister_0_FF_D_all_2_FF_D_i_Q_CLKINV : X_INV
    generic map(
      PATHPULSE => 638 ps
    )
    port map (
      I => Inst_Debouncer_SHIFT_OUT_408,
      O => ShiftRegister_0_FF_D_all_2_FF_D_i_Q_CLKINVNOT
    );
  X_1_IFF_IMUX : X_BUF
    generic map(
      PATHPULSE => 638 ps
    )
    port map (
      I => X_1_INBUF,
      O => X_1_IBUF_400
    );
  clk_filter_counter_9_DXMUX : X_BUF
    generic map(
      PATHPULSE => 638 ps
    )
    port map (
      I => clk_filter_Mcount_counter_eqn_9,
      O => clk_filter_counter_9_DXMUX_1063
    );
  clk_filter_counter_9_DYMUX : X_BUF
    generic map(
      PATHPULSE => 638 ps
    )
    port map (
      I => clk_filter_Mcount_counter_eqn_8,
      O => clk_filter_counter_9_DYMUX_1047
    );
  clk_filter_counter_9_SRINV : X_BUF
    generic map(
      PATHPULSE => 638 ps
    )
    port map (
      I => RESET_IBUF_401,
      O => clk_filter_counter_9_SRINV_1037
    );
  clk_filter_counter_9_CLKINV : X_BUF
    generic map(
      PATHPULSE => 638 ps
    )
    port map (
      I => CLK_BUFGP,
      O => clk_filter_counter_9_CLKINV_1036
    );
  X_2_IFF_IMUX : X_BUF
    generic map(
      PATHPULSE => 638 ps
    )
    port map (
      I => X_2_INBUF,
      O => X_2_IBUF_402
    );
  Y_7_OBUF : X_OBUF
    port map (
      I => Y_7_O,
      O => Y(7)
    );
  X_0_IFF_IMUX : X_BUF
    generic map(
      PATHPULSE => 638 ps
    )
    port map (
      I => X_0_INBUF,
      O => X_0_IBUF_399
    );
  X_0_IBUF : X_BUF
    generic map(
      PATHPULSE => 638 ps
    )
    port map (
      I => X(0),
      O => X_0_INBUF
    );
  clk_filter_counter_7_DXMUX : X_BUF
    generic map(
      PATHPULSE => 638 ps
    )
    port map (
      I => clk_filter_Mcount_counter_eqn_7,
      O => clk_filter_counter_7_DXMUX_1021
    );
  clk_filter_counter_7_DYMUX : X_BUF
    generic map(
      PATHPULSE => 638 ps
    )
    port map (
      I => clk_filter_Mcount_counter_eqn_6,
      O => clk_filter_counter_7_DYMUX_1005
    );
  clk_filter_counter_7_SRINV : X_BUF
    generic map(
      PATHPULSE => 638 ps
    )
    port map (
      I => RESET_IBUF_401,
      O => clk_filter_counter_7_SRINV_995
    );
  clk_filter_counter_7_CLKINV : X_BUF
    generic map(
      PATHPULSE => 638 ps
    )
    port map (
      I => CLK_BUFGP,
      O => clk_filter_counter_7_CLKINV_994
    );
  CLK_IFF_IMUX : X_BUF
    generic map(
      PATHPULSE => 638 ps
    )
    port map (
      I => CLK_INBUF,
      O => CLK_BUFGP_IBUFG_398
    );
  CLK_BUFGP_IBUFG : X_BUF
    generic map(
      PATHPULSE => 638 ps
    )
    port map (
      I => CLK,
      O => CLK_INBUF
    );
  RESET_IBUF : X_BUF
    generic map(
      PATHPULSE => 638 ps
    )
    port map (
      I => RESET,
      O => RESET_INBUF
    );
  RESET_IFF_IMUX : X_BUF
    generic map(
      PATHPULSE => 638 ps
    )
    port map (
      I => RESET_INBUF,
      O => RESET_IBUF_401
    );
  clk_filter_counter_11_DXMUX : X_BUF
    generic map(
      PATHPULSE => 638 ps
    )
    port map (
      I => clk_filter_Mcount_counter_eqn_11,
      O => clk_filter_counter_11_DXMUX_1189
    );
  clk_filter_counter_11_DYMUX : X_BUF
    generic map(
      PATHPULSE => 638 ps
    )
    port map (
      I => clk_filter_Mcount_counter_eqn_10,
      O => clk_filter_counter_11_DYMUX_1173
    );
  clk_filter_counter_11_SRINV : X_BUF
    generic map(
      PATHPULSE => 638 ps
    )
    port map (
      I => RESET_IBUF_401,
      O => clk_filter_counter_11_SRINV_1163
    );
  clk_filter_counter_11_CLKINV : X_BUF
    generic map(
      PATHPULSE => 638 ps
    )
    port map (
      I => CLK_BUFGP,
      O => clk_filter_counter_11_CLKINV_1162
    );
  clk_filter_counter_3_DXMUX : X_BUF
    generic map(
      PATHPULSE => 638 ps
    )
    port map (
      I => clk_filter_Mcount_counter_eqn_3,
      O => clk_filter_counter_3_DXMUX_1464
    );
  clk_filter_counter_3_DYMUX : X_BUF
    generic map(
      PATHPULSE => 638 ps
    )
    port map (
      I => clk_filter_Mcount_counter_eqn_2,
      O => clk_filter_counter_3_DYMUX_1448
    );
  clk_filter_counter_3_SRINV : X_BUF
    generic map(
      PATHPULSE => 638 ps
    )
    port map (
      I => RESET_IBUF_401,
      O => clk_filter_counter_3_SRINV_1438
    );
  clk_filter_counter_3_CLKINV : X_BUF
    generic map(
      PATHPULSE => 638 ps
    )
    port map (
      I => CLK_BUFGP,
      O => clk_filter_counter_3_CLKINV_1437
    );
  clk_filter_clockfx_DYMUX : X_BUF
    generic map(
      PATHPULSE => 638 ps
    )
    port map (
      I => clk_filter_counter_cmp_eq0000,
      O => clk_filter_clockfx_DYMUX_1490
    );
  clk_filter_clockfx_CLKINV : X_BUF
    generic map(
      PATHPULSE => 638 ps
    )
    port map (
      I => CLK_BUFGP,
      O => clk_filter_clockfx_CLKINV_1487
    );
  clk_filter_counter_15_DXMUX : X_BUF
    generic map(
      PATHPULSE => 638 ps
    )
    port map (
      I => clk_filter_Mcount_counter_eqn_15,
      O => clk_filter_counter_15_DXMUX_1273
    );
  clk_filter_counter_15_DYMUX : X_BUF
    generic map(
      PATHPULSE => 638 ps
    )
    port map (
      I => clk_filter_Mcount_counter_eqn_14,
      O => clk_filter_counter_15_DYMUX_1257
    );
  clk_filter_counter_15_SRINV : X_BUF
    generic map(
      PATHPULSE => 638 ps
    )
    port map (
      I => RESET_IBUF_401,
      O => clk_filter_counter_15_SRINV_1247
    );
  clk_filter_counter_15_CLKINV : X_BUF
    generic map(
      PATHPULSE => 638 ps
    )
    port map (
      I => CLK_BUFGP,
      O => clk_filter_counter_15_CLKINV_1246
    );
  Inst_Debouncer_LOAD_OUT_DYMUX : X_BUF
    generic map(
      PATHPULSE => 638 ps
    )
    port map (
      I => Inst_Debouncer_LOAD_OUT_BYINV_1503,
      O => Inst_Debouncer_LOAD_OUT_DYMUX_1504
    );
  Inst_Debouncer_LOAD_OUT_BYINV : X_BUF
    generic map(
      PATHPULSE => 638 ps
    )
    port map (
      I => '1',
      O => Inst_Debouncer_LOAD_OUT_BYINV_1503
    );
  Inst_Debouncer_LOAD_OUT_SRINV : X_INV
    generic map(
      PATHPULSE => 638 ps
    )
    port map (
      I => LOAD_IBUF_396,
      O => Inst_Debouncer_LOAD_OUT_SRINVNOT
    );
  Inst_Debouncer_LOAD_OUT_CLKINV : X_BUF
    generic map(
      PATHPULSE => 638 ps
    )
    port map (
      I => clk_filter_clockfx_410,
      O => Inst_Debouncer_LOAD_OUT_CLKINV_1501
    );
  clk_filter_counter_1_DXMUX : X_BUF
    generic map(
      PATHPULSE => 638 ps
    )
    port map (
      I => clk_filter_Mcount_counter_eqn_1,
      O => clk_filter_counter_1_DXMUX_1422
    );
  clk_filter_counter_1_DYMUX : X_BUF
    generic map(
      PATHPULSE => 638 ps
    )
    port map (
      I => clk_filter_Mcount_counter_eqn_0,
      O => clk_filter_counter_1_DYMUX_1406
    );
  clk_filter_counter_1_SRINV : X_BUF
    generic map(
      PATHPULSE => 638 ps
    )
    port map (
      I => RESET_IBUF_401,
      O => clk_filter_counter_1_SRINV_1396
    );
  clk_filter_counter_1_CLKINV : X_BUF
    generic map(
      PATHPULSE => 638 ps
    )
    port map (
      I => CLK_BUFGP,
      O => clk_filter_counter_1_CLKINV_1395
    );
  Inst_Debouncer_SHIFT_OUT_DYMUX : X_BUF
    generic map(
      PATHPULSE => 638 ps
    )
    port map (
      I => Inst_Debouncer_SHIFT_OUT_BYINV_1477,
      O => Inst_Debouncer_SHIFT_OUT_DYMUX_1478
    );
  Inst_Debouncer_SHIFT_OUT_BYINV : X_BUF
    generic map(
      PATHPULSE => 638 ps
    )
    port map (
      I => '0',
      O => Inst_Debouncer_SHIFT_OUT_BYINV_1477
    );
  Inst_Debouncer_SHIFT_OUT_SRINV : X_BUF
    generic map(
      PATHPULSE => 638 ps
    )
    port map (
      I => Inst_Debouncer_SHIFT_OUT_or0000,
      O => Inst_Debouncer_SHIFT_OUT_SRINV_1476
    );
  Inst_Debouncer_SHIFT_OUT_CLKINV : X_BUF
    generic map(
      PATHPULSE => 638 ps
    )
    port map (
      I => clk_filter_clockfx_410,
      O => Inst_Debouncer_SHIFT_OUT_CLKINV_1475
    );
  clk_filter_counter_13_DXMUX : X_BUF
    generic map(
      PATHPULSE => 638 ps
    )
    port map (
      I => clk_filter_Mcount_counter_eqn_13,
      O => clk_filter_counter_13_DXMUX_1231
    );
  clk_filter_counter_13_DYMUX : X_BUF
    generic map(
      PATHPULSE => 638 ps
    )
    port map (
      I => clk_filter_Mcount_counter_eqn_12,
      O => clk_filter_counter_13_DYMUX_1215
    );
  clk_filter_counter_13_SRINV : X_BUF
    generic map(
      PATHPULSE => 638 ps
    )
    port map (
      I => RESET_IBUF_401,
      O => clk_filter_counter_13_SRINV_1205
    );
  clk_filter_counter_13_CLKINV : X_BUF
    generic map(
      PATHPULSE => 638 ps
    )
    port map (
      I => CLK_BUFGP,
      O => clk_filter_counter_13_CLKINV_1204
    );
  clk_filter_counter_16_DYMUX : X_BUF
    generic map(
      PATHPULSE => 638 ps
    )
    port map (
      I => clk_filter_Mcount_counter_eqn_16,
      O => clk_filter_counter_16_DYMUX_1296
    );
  clk_filter_counter_16_CLKINV : X_BUF
    generic map(
      PATHPULSE => 638 ps
    )
    port map (
      I => CLK_BUFGP,
      O => clk_filter_counter_16_CLKINV_1285
    );
  ShiftRegister_0_FF_D_all_4_FF_D_i_Q_DXMUX : X_BUF
    generic map(
      PATHPULSE => 638 ps
    )
    port map (
      I => ShiftRegister_0_MUX_OUT(4),
      O => ShiftRegister_0_FF_D_all_4_FF_D_i_Q_DXMUX_1338
    );
  ShiftRegister_0_FF_D_all_4_FF_D_i_Q_DYMUX : X_BUF
    generic map(
      PATHPULSE => 638 ps
    )
    port map (
      I => ShiftRegister_0_MUX_OUT(3),
      O => ShiftRegister_0_FF_D_all_4_FF_D_i_Q_DYMUX_1323
    );
  ShiftRegister_0_FF_D_all_4_FF_D_i_Q_SRINV : X_BUF
    generic map(
      PATHPULSE => 638 ps
    )
    port map (
      I => RESET_IBUF_401,
      O => ShiftRegister_0_FF_D_all_4_FF_D_i_Q_SRINV_1314
    );
  ShiftRegister_0_FF_D_all_4_FF_D_i_Q_CLKINV : X_INV
    generic map(
      PATHPULSE => 638 ps
    )
    port map (
      I => Inst_Debouncer_SHIFT_OUT_408,
      O => ShiftRegister_0_FF_D_all_4_FF_D_i_Q_CLKINVNOT
    );
  ShiftRegister_0_FF_D_all_6_FF_D_i_Q_DXMUX : X_BUF
    generic map(
      PATHPULSE => 638 ps
    )
    port map (
      I => ShiftRegister_0_MUX_OUT(6),
      O => ShiftRegister_0_FF_D_all_6_FF_D_i_Q_DXMUX_1380
    );
  ShiftRegister_0_FF_D_all_6_FF_D_i_Q_DYMUX : X_BUF
    generic map(
      PATHPULSE => 638 ps
    )
    port map (
      I => ShiftRegister_0_MUX_OUT(5),
      O => ShiftRegister_0_FF_D_all_6_FF_D_i_Q_DYMUX_1365
    );
  ShiftRegister_0_FF_D_all_6_FF_D_i_Q_SRINV : X_BUF
    generic map(
      PATHPULSE => 638 ps
    )
    port map (
      I => RESET_IBUF_401,
      O => ShiftRegister_0_FF_D_all_6_FF_D_i_Q_SRINV_1356
    );
  ShiftRegister_0_FF_D_all_6_FF_D_i_Q_CLKINV : X_INV
    generic map(
      PATHPULSE => 638 ps
    )
    port map (
      I => Inst_Debouncer_SHIFT_OUT_408,
      O => ShiftRegister_0_FF_D_all_6_FF_D_i_Q_CLKINVNOT
    );
  clk_filter_counter_cmp_eq0000_wg_lut_3_Q : X_LUT4
    generic map(
      INIT => X"0010"
    )
    port map (
      ADR0 => clk_filter_counter(11),
      ADR1 => clk_filter_counter(12),
      ADR2 => clk_filter_counter(0),
      ADR3 => clk_filter_counter(13),
      O => clk_filter_counter_cmp_eq0000_wg_lut(3)
    );
  clk_filter_counter_16_rt : X_LUT4
    generic map(
      INIT => X"AAAA"
    )
    port map (
      ADR0 => clk_filter_counter(16),
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => VCC,
      O => clk_filter_counter_16_rt_724
    );
  clk_filter_counter_cmp_eq0000_wg_lut_1_Q : X_LUT4
    generic map(
      INIT => X"1000"
    )
    port map (
      ADR0 => clk_filter_counter(5),
      ADR1 => clk_filter_counter(6),
      ADR2 => clk_filter_counter(3),
      ADR3 => clk_filter_counter(7),
      O => clk_filter_counter_cmp_eq0000_wg_lut(1)
    );
  clk_filter_counter_4_rt_1 : X_LUT4
    generic map(
      INIT => X"AAAA"
    )
    port map (
      ADR0 => clk_filter_counter(4),
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => VCC,
      O => clk_filter_counter_4_rt
    );
  clk_filter_Mcount_counter_lut_0_INV_0 : X_LUT4
    generic map(
      INIT => X"5555"
    )
    port map (
      ADR0 => clk_filter_counter(0),
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => VCC,
      O => clk_filter_Mcount_counter_lut(0)
    );
  clk_filter_counter_4 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => clk_filter_counter_5_DYMUX_963,
      CE => VCC,
      CLK => clk_filter_counter_5_CLKINV_952,
      SET => GND,
      RST => clk_filter_counter_5_SRINV_953,
      O => clk_filter_counter(4)
    );
  clk_filter_Mcount_counter_eqn_81 : X_LUT4
    generic map(
      INIT => X"4444"
    )
    port map (
      ADR0 => clk_filter_counter_cmp_eq0000,
      ADR1 => Result(8),
      ADR2 => VCC,
      ADR3 => VCC,
      O => clk_filter_Mcount_counter_eqn_8
    );
  clk_filter_counter_8 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => clk_filter_counter_9_DYMUX_1047,
      CE => VCC,
      CLK => clk_filter_counter_9_CLKINV_1036,
      SET => GND,
      RST => clk_filter_counter_9_SRINV_1037,
      O => clk_filter_counter(8)
    );
  clk_filter_Mcount_counter_eqn_71 : X_LUT4
    generic map(
      INIT => X"4444"
    )
    port map (
      ADR0 => clk_filter_counter_cmp_eq0000,
      ADR1 => Result(7),
      ADR2 => VCC,
      ADR3 => VCC,
      O => clk_filter_Mcount_counter_eqn_7
    );
  clk_filter_counter_6 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => clk_filter_counter_7_DYMUX_1005,
      CE => VCC,
      CLK => clk_filter_counter_7_CLKINV_994,
      SET => GND,
      RST => clk_filter_counter_7_SRINV_995,
      O => clk_filter_counter(6)
    );
  clk_filter_Mcount_counter_eqn_91 : X_LUT4
    generic map(
      INIT => X"4444"
    )
    port map (
      ADR0 => clk_filter_counter_cmp_eq0000,
      ADR1 => Result(9),
      ADR2 => VCC,
      ADR3 => VCC,
      O => clk_filter_Mcount_counter_eqn_9
    );
  clk_filter_counter_9 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => clk_filter_counter_9_DXMUX_1063,
      CE => VCC,
      CLK => clk_filter_counter_9_CLKINV_1036,
      SET => GND,
      RST => clk_filter_counter_9_SRINV_1037,
      O => clk_filter_counter(9)
    );
  clk_filter_Mcount_counter_eqn_41 : X_LUT4
    generic map(
      INIT => X"4444"
    )
    port map (
      ADR0 => clk_filter_counter_cmp_eq0000,
      ADR1 => Result(4),
      ADR2 => VCC,
      ADR3 => VCC,
      O => clk_filter_Mcount_counter_eqn_4
    );
  ShiftRegister_0_mux_2_1_all_7_r_rest_Y_0_mux00001 : X_LUT4
    generic map(
      INIT => X"D8D8"
    )
    port map (
      ADR0 => Inst_Debouncer_LOAD_OUT_409,
      ADR1 => X_7_IBUF_392,
      ADR2 => ShiftRegister_0_FF_D_all_6_FF_D_i_Q_395,
      ADR3 => VCC,
      O => ShiftRegister_0_MUX_OUT(7)
    );
  clk_filter_counter_5 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => clk_filter_counter_5_DXMUX_979,
      CE => VCC,
      CLK => clk_filter_counter_5_CLKINV_952,
      SET => GND,
      RST => clk_filter_counter_5_SRINV_953,
      O => clk_filter_counter(5)
    );
  clk_filter_Mcount_counter_eqn_51 : X_LUT4
    generic map(
      INIT => X"4444"
    )
    port map (
      ADR0 => clk_filter_counter_cmp_eq0000,
      ADR1 => Result(5),
      ADR2 => VCC,
      ADR3 => VCC,
      O => clk_filter_Mcount_counter_eqn_5
    );
  clk_filter_counter_7 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => clk_filter_counter_7_DXMUX_1021,
      CE => VCC,
      CLK => clk_filter_counter_7_CLKINV_994,
      SET => GND,
      RST => clk_filter_counter_7_SRINV_995,
      O => clk_filter_counter(7)
    );
  clk_filter_Mcount_counter_eqn_61 : X_LUT4
    generic map(
      INIT => X"4444"
    )
    port map (
      ADR0 => clk_filter_counter_cmp_eq0000,
      ADR1 => Result(6),
      ADR2 => VCC,
      ADR3 => VCC,
      O => clk_filter_Mcount_counter_eqn_6
    );
  ShiftRegister_0_FF_D_all_2_FF_D_i_Q : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => ShiftRegister_0_FF_D_all_2_FF_D_i_Q_DXMUX_1147,
      CE => VCC,
      CLK => ShiftRegister_0_FF_D_all_2_FF_D_i_Q_CLKINVNOT,
      SET => GND,
      RST => ShiftRegister_0_FF_D_all_2_FF_D_i_Q_SRINV_1123,
      O => ShiftRegister_0_FF_D_all_2_FF_D_i_Q_389
    );
  clk_filter_counter_10 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => clk_filter_counter_11_DYMUX_1173,
      CE => VCC,
      CLK => clk_filter_counter_11_CLKINV_1162,
      SET => GND,
      RST => clk_filter_counter_11_SRINV_1163,
      O => clk_filter_counter(10)
    );
  clk_filter_Mcount_counter_eqn_131 : X_LUT4
    generic map(
      INIT => X"4444"
    )
    port map (
      ADR0 => clk_filter_counter_cmp_eq0000,
      ADR1 => Result(13),
      ADR2 => VCC,
      ADR3 => VCC,
      O => clk_filter_Mcount_counter_eqn_13
    );
  clk_filter_counter_11 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => clk_filter_counter_11_DXMUX_1189,
      CE => VCC,
      CLK => clk_filter_counter_11_CLKINV_1162,
      SET => GND,
      RST => clk_filter_counter_11_SRINV_1163,
      O => clk_filter_counter(11)
    );
  clk_filter_Mcount_counter_eqn_121 : X_LUT4
    generic map(
      INIT => X"4444"
    )
    port map (
      ADR0 => clk_filter_counter_cmp_eq0000,
      ADR1 => Result(12),
      ADR2 => VCC,
      ADR3 => VCC,
      O => clk_filter_Mcount_counter_eqn_12
    );
  clk_filter_counter_12 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => clk_filter_counter_13_DYMUX_1215,
      CE => VCC,
      CLK => clk_filter_counter_13_CLKINV_1204,
      SET => GND,
      RST => clk_filter_counter_13_SRINV_1205,
      O => clk_filter_counter(12)
    );
  ShiftRegister_0_FF_D_all_0_FF_D_i_Q : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => ShiftRegister_0_FF_D_all_0_FF_D_i_Q_DXMUX_1105,
      CE => VCC,
      CLK => ShiftRegister_0_FF_D_all_0_FF_D_i_Q_CLKINVNOT,
      SET => GND,
      RST => ShiftRegister_0_FF_D_all_0_FF_D_i_Q_SRINV_1081,
      O => ShiftRegister_0_FF_D_all_0_FF_D_i_Q_405
    );
  clk_filter_Mcount_counter_eqn_101 : X_LUT4
    generic map(
      INIT => X"4444"
    )
    port map (
      ADR0 => clk_filter_counter_cmp_eq0000,
      ADR1 => Result(10),
      ADR2 => VCC,
      ADR3 => VCC,
      O => clk_filter_Mcount_counter_eqn_10
    );
  ShiftRegister_0_mux_2_1_all_1_r_rest_Y_0_mux00001 : X_LUT4
    generic map(
      INIT => X"D8D8"
    )
    port map (
      ADR0 => Inst_Debouncer_LOAD_OUT_409,
      ADR1 => X_1_IBUF_400,
      ADR2 => ShiftRegister_0_FF_D_all_0_FF_D_i_Q_405,
      ADR3 => VCC,
      O => ShiftRegister_0_MUX_OUT(1)
    );
  ShiftRegister_0_FF_D_all_7_FF_D_i_Q : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => ShiftRegister_0_FF_D_all_0_FF_D_i_Q_DYMUX_1090,
      CE => VCC,
      CLK => ShiftRegister_0_FF_D_all_0_FF_D_i_Q_CLKINVNOT,
      SET => GND,
      RST => ShiftRegister_0_FF_D_all_0_FF_D_i_Q_SRINV_1081,
      O => ShiftRegister_0_FF_D_all_7_FF_D_i_Q_397
    );
  clk_filter_Mcount_counter_eqn_111 : X_LUT4
    generic map(
      INIT => X"4444"
    )
    port map (
      ADR0 => clk_filter_counter_cmp_eq0000,
      ADR1 => Result(11),
      ADR2 => VCC,
      ADR3 => VCC,
      O => clk_filter_Mcount_counter_eqn_11
    );
  ShiftRegister_0_mux_2_1_all_2_r_rest_Y_0_mux00001 : X_LUT4
    generic map(
      INIT => X"D8D8"
    )
    port map (
      ADR0 => Inst_Debouncer_LOAD_OUT_409,
      ADR1 => X_2_IBUF_402,
      ADR2 => ShiftRegister_0_FF_D_all_1_FF_D_i_Q_387,
      ADR3 => VCC,
      O => ShiftRegister_0_MUX_OUT(2)
    );
  ShiftRegister_0_mux_2_1_all_0_m_most_Y_0_mux00001 : X_LUT4
    generic map(
      INIT => X"D8D8"
    )
    port map (
      ADR0 => Inst_Debouncer_LOAD_OUT_409,
      ADR1 => X_0_IBUF_399,
      ADR2 => ShiftRegister_0_FF_D_all_7_FF_D_i_Q_397,
      ADR3 => VCC,
      O => ShiftRegister_0_MUX_OUT(0)
    );
  ShiftRegister_0_FF_D_all_1_FF_D_i_Q : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => ShiftRegister_0_FF_D_all_2_FF_D_i_Q_DYMUX_1132,
      CE => VCC,
      CLK => ShiftRegister_0_FF_D_all_2_FF_D_i_Q_CLKINVNOT,
      SET => GND,
      RST => ShiftRegister_0_FF_D_all_2_FF_D_i_Q_SRINV_1123,
      O => ShiftRegister_0_FF_D_all_1_FF_D_i_Q_387
    );
  clk_filter_counter_15 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => clk_filter_counter_15_DXMUX_1273,
      CE => VCC,
      CLK => clk_filter_counter_15_CLKINV_1246,
      SET => GND,
      RST => clk_filter_counter_15_SRINV_1247,
      O => clk_filter_counter(15)
    );
  ShiftRegister_0_FF_D_all_5_FF_D_i_Q : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => ShiftRegister_0_FF_D_all_6_FF_D_i_Q_DYMUX_1365,
      CE => VCC,
      CLK => ShiftRegister_0_FF_D_all_6_FF_D_i_Q_CLKINVNOT,
      SET => GND,
      RST => ShiftRegister_0_FF_D_all_6_FF_D_i_Q_SRINV_1356,
      O => ShiftRegister_0_FF_D_all_5_FF_D_i_Q_394
    );
  clk_filter_Mcount_counter_eqn_151 : X_LUT4
    generic map(
      INIT => X"4444"
    )
    port map (
      ADR0 => clk_filter_counter_cmp_eq0000,
      ADR1 => Result(15),
      ADR2 => VCC,
      ADR3 => VCC,
      O => clk_filter_Mcount_counter_eqn_15
    );
  ShiftRegister_0_mux_2_1_all_6_r_rest_Y_0_mux00001 : X_LUT4
    generic map(
      INIT => X"D8D8"
    )
    port map (
      ADR0 => Inst_Debouncer_LOAD_OUT_409,
      ADR1 => X_6_IBUF_390,
      ADR2 => ShiftRegister_0_FF_D_all_5_FF_D_i_Q_394,
      ADR3 => VCC,
      O => ShiftRegister_0_MUX_OUT(6)
    );
  clk_filter_counter_14 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => clk_filter_counter_15_DYMUX_1257,
      CE => VCC,
      CLK => clk_filter_counter_15_CLKINV_1246,
      SET => GND,
      RST => clk_filter_counter_15_SRINV_1247,
      O => clk_filter_counter(14)
    );
  clk_filter_Mcount_counter_eqn_161 : X_LUT4
    generic map(
      INIT => X"4444"
    )
    port map (
      ADR0 => clk_filter_counter_cmp_eq0000,
      ADR1 => Result(16),
      ADR2 => VCC,
      ADR3 => VCC,
      O => clk_filter_Mcount_counter_eqn_16
    );
  clk_filter_Mcount_counter_eqn_141 : X_LUT4
    generic map(
      INIT => X"4444"
    )
    port map (
      ADR0 => clk_filter_counter_cmp_eq0000,
      ADR1 => Result(14),
      ADR2 => VCC,
      ADR3 => VCC,
      O => clk_filter_Mcount_counter_eqn_14
    );
  clk_filter_counter_16 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => clk_filter_counter_16_DYMUX_1296,
      CE => VCC,
      CLK => clk_filter_counter_16_CLKINV_1285,
      SET => GND,
      RST => clk_filter_counter_16_FFY_RSTAND_1301,
      O => clk_filter_counter(16)
    );
  clk_filter_counter_16_FFY_RSTAND : X_BUF
    generic map(
      PATHPULSE => 638 ps
    )
    port map (
      I => RESET_IBUF_401,
      O => clk_filter_counter_16_FFY_RSTAND_1301
    );
  clk_filter_counter_13 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => clk_filter_counter_13_DXMUX_1231,
      CE => VCC,
      CLK => clk_filter_counter_13_CLKINV_1204,
      SET => GND,
      RST => clk_filter_counter_13_SRINV_1205,
      O => clk_filter_counter(13)
    );
  ShiftRegister_0_FF_D_all_3_FF_D_i_Q : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => ShiftRegister_0_FF_D_all_4_FF_D_i_Q_DYMUX_1323,
      CE => VCC,
      CLK => ShiftRegister_0_FF_D_all_4_FF_D_i_Q_CLKINVNOT,
      SET => GND,
      RST => ShiftRegister_0_FF_D_all_4_FF_D_i_Q_SRINV_1314,
      O => ShiftRegister_0_FF_D_all_3_FF_D_i_Q_391
    );
  ShiftRegister_0_mux_2_1_all_3_r_rest_Y_0_mux00001 : X_LUT4
    generic map(
      INIT => X"D8D8"
    )
    port map (
      ADR0 => Inst_Debouncer_LOAD_OUT_409,
      ADR1 => X_3_IBUF_404,
      ADR2 => ShiftRegister_0_FF_D_all_2_FF_D_i_Q_389,
      ADR3 => VCC,
      O => ShiftRegister_0_MUX_OUT(3)
    );
  ShiftRegister_0_mux_2_1_all_4_r_rest_Y_0_mux00001 : X_LUT4
    generic map(
      INIT => X"D8D8"
    )
    port map (
      ADR0 => Inst_Debouncer_LOAD_OUT_409,
      ADR1 => X_4_IBUF_406,
      ADR2 => ShiftRegister_0_FF_D_all_3_FF_D_i_Q_391,
      ADR3 => VCC,
      O => ShiftRegister_0_MUX_OUT(4)
    );
  ShiftRegister_0_FF_D_all_4_FF_D_i_Q : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => ShiftRegister_0_FF_D_all_4_FF_D_i_Q_DXMUX_1338,
      CE => VCC,
      CLK => ShiftRegister_0_FF_D_all_4_FF_D_i_Q_CLKINVNOT,
      SET => GND,
      RST => ShiftRegister_0_FF_D_all_4_FF_D_i_Q_SRINV_1314,
      O => ShiftRegister_0_FF_D_all_4_FF_D_i_Q_393
    );
  ShiftRegister_0_mux_2_1_all_5_r_rest_Y_0_mux00001 : X_LUT4
    generic map(
      INIT => X"D8D8"
    )
    port map (
      ADR0 => Inst_Debouncer_LOAD_OUT_409,
      ADR1 => X_5_IBUF_388,
      ADR2 => ShiftRegister_0_FF_D_all_4_FF_D_i_Q_393,
      ADR3 => VCC,
      O => ShiftRegister_0_MUX_OUT(5)
    );
  Inst_Debouncer_SHIFT_OUT : X_SFF
    generic map(
      INIT => '1'
    )
    port map (
      I => Inst_Debouncer_SHIFT_OUT_DYMUX_1478,
      CE => VCC,
      CLK => Inst_Debouncer_SHIFT_OUT_CLKINV_1475,
      SET => GND,
      RST => GND,
      SSET => Inst_Debouncer_SHIFT_OUT_SRINV_1476,
      SRST => GND,
      O => Inst_Debouncer_SHIFT_OUT_408
    );
  Inst_Debouncer_LOAD_OUT : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      I => Inst_Debouncer_LOAD_OUT_DYMUX_1504,
      CE => VCC,
      CLK => Inst_Debouncer_LOAD_OUT_CLKINV_1501,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => Inst_Debouncer_LOAD_OUT_SRINVNOT,
      O => Inst_Debouncer_LOAD_OUT_409
    );
  Inst_Debouncer_SHIFT_OUT_or00001 : X_LUT4
    generic map(
      INIT => X"EEEE"
    )
    port map (
      ADR0 => SHIFT_IBUF_403,
      ADR1 => LOAD_IBUF_396,
      ADR2 => VCC,
      ADR3 => VCC,
      O => Inst_Debouncer_SHIFT_OUT_or0000
    );
  clk_filter_Mcount_counter_eqn_01 : X_LUT4
    generic map(
      INIT => X"2222"
    )
    port map (
      ADR0 => Result(0),
      ADR1 => clk_filter_counter_cmp_eq0000,
      ADR2 => VCC,
      ADR3 => VCC,
      O => clk_filter_Mcount_counter_eqn_0
    );
  clk_filter_Mcount_counter_eqn_21 : X_LUT4
    generic map(
      INIT => X"2222"
    )
    port map (
      ADR0 => Result(2),
      ADR1 => clk_filter_counter_cmp_eq0000,
      ADR2 => VCC,
      ADR3 => VCC,
      O => clk_filter_Mcount_counter_eqn_2
    );
  clk_filter_counter_0 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => clk_filter_counter_1_DYMUX_1406,
      CE => VCC,
      CLK => clk_filter_counter_1_CLKINV_1395,
      SET => GND,
      RST => clk_filter_counter_1_SRINV_1396,
      O => clk_filter_counter(0)
    );
  clk_filter_Mcount_counter_eqn_17 : X_LUT4
    generic map(
      INIT => X"2222"
    )
    port map (
      ADR0 => Result(1),
      ADR1 => clk_filter_counter_cmp_eq0000,
      ADR2 => VCC,
      ADR3 => VCC,
      O => clk_filter_Mcount_counter_eqn_1
    );
  clk_filter_clockfx : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => clk_filter_clockfx_DYMUX_1490,
      CE => VCC,
      CLK => clk_filter_clockfx_CLKINV_1487,
      SET => GND,
      RST => clk_filter_clockfx_FFY_RSTAND_1495,
      O => clk_filter_clockfx_410
    );
  clk_filter_clockfx_FFY_RSTAND : X_BUF
    generic map(
      PATHPULSE => 638 ps
    )
    port map (
      I => RESET_IBUF_401,
      O => clk_filter_clockfx_FFY_RSTAND_1495
    );
  ShiftRegister_0_FF_D_all_6_FF_D_i_Q : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => ShiftRegister_0_FF_D_all_6_FF_D_i_Q_DXMUX_1380,
      CE => VCC,
      CLK => ShiftRegister_0_FF_D_all_6_FF_D_i_Q_CLKINVNOT,
      SET => GND,
      RST => ShiftRegister_0_FF_D_all_6_FF_D_i_Q_SRINV_1356,
      O => ShiftRegister_0_FF_D_all_6_FF_D_i_Q_395
    );
  clk_filter_counter_2 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => clk_filter_counter_3_DYMUX_1448,
      CE => VCC,
      CLK => clk_filter_counter_3_CLKINV_1437,
      SET => GND,
      RST => clk_filter_counter_3_SRINV_1438,
      O => clk_filter_counter(2)
    );
  clk_filter_counter_3 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => clk_filter_counter_3_DXMUX_1464,
      CE => VCC,
      CLK => clk_filter_counter_3_CLKINV_1437,
      SET => GND,
      RST => clk_filter_counter_3_SRINV_1438,
      O => clk_filter_counter(3)
    );
  clk_filter_counter_1 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => clk_filter_counter_1_DXMUX_1422,
      CE => VCC,
      CLK => clk_filter_counter_1_CLKINV_1395,
      SET => GND,
      RST => clk_filter_counter_1_SRINV_1396,
      O => clk_filter_counter(1)
    );
  clk_filter_Mcount_counter_eqn_31 : X_LUT4
    generic map(
      INIT => X"4444"
    )
    port map (
      ADR0 => clk_filter_counter_cmp_eq0000,
      ADR1 => Result(3),
      ADR2 => VCC,
      ADR3 => VCC,
      O => clk_filter_Mcount_counter_eqn_3
    );
  Result_0_G_X_LUT4 : X_LUT4
    generic map(
      INIT => X"AAAA"
    )
    port map (
      ADR0 => clk_filter_counter(1),
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => VCC,
      O => Result_0_G
    );
  Result_2_F_X_LUT4 : X_LUT4
    generic map(
      INIT => X"AAAA"
    )
    port map (
      ADR0 => clk_filter_counter(2),
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => VCC,
      O => Result_2_F
    );
  Result_2_G_X_LUT4 : X_LUT4
    generic map(
      INIT => X"AAAA"
    )
    port map (
      ADR0 => clk_filter_counter(3),
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => VCC,
      O => Result_2_G
    );
  Result_6_F_X_LUT4 : X_LUT4
    generic map(
      INIT => X"AAAA"
    )
    port map (
      ADR0 => clk_filter_counter(6),
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => VCC,
      O => Result_6_F
    );
  Result_6_G_X_LUT4 : X_LUT4
    generic map(
      INIT => X"AAAA"
    )
    port map (
      ADR0 => clk_filter_counter(7),
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => VCC,
      O => Result_6_G
    );
  Result_8_F_X_LUT4 : X_LUT4
    generic map(
      INIT => X"AAAA"
    )
    port map (
      ADR0 => clk_filter_counter(8),
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => VCC,
      O => Result_8_F
    );
  Result_8_G_X_LUT4 : X_LUT4
    generic map(
      INIT => X"AAAA"
    )
    port map (
      ADR0 => clk_filter_counter(9),
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => VCC,
      O => Result_8_G
    );
  Result_10_F_X_LUT4 : X_LUT4
    generic map(
      INIT => X"AAAA"
    )
    port map (
      ADR0 => clk_filter_counter(10),
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => VCC,
      O => Result_10_F
    );
  Result_10_G_X_LUT4 : X_LUT4
    generic map(
      INIT => X"AAAA"
    )
    port map (
      ADR0 => clk_filter_counter(11),
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => VCC,
      O => Result_10_G
    );
  Result_4_F_X_LUT4 : X_LUT4
    generic map(
      INIT => X"AAAA"
    )
    port map (
      ADR0 => clk_filter_counter(4),
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => VCC,
      O => Result_4_F
    );
  Result_4_G_X_LUT4 : X_LUT4
    generic map(
      INIT => X"AAAA"
    )
    port map (
      ADR0 => clk_filter_counter(5),
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => VCC,
      O => Result_4_G
    );
  Result_12_F_X_LUT4 : X_LUT4
    generic map(
      INIT => X"AAAA"
    )
    port map (
      ADR0 => clk_filter_counter(12),
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => VCC,
      O => Result_12_F
    );
  Result_12_G_X_LUT4 : X_LUT4
    generic map(
      INIT => X"AAAA"
    )
    port map (
      ADR0 => clk_filter_counter(13),
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => VCC,
      O => Result_12_G
    );
  Result_14_F_X_LUT4 : X_LUT4
    generic map(
      INIT => X"AAAA"
    )
    port map (
      ADR0 => clk_filter_counter(14),
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => VCC,
      O => Result_14_F
    );
  Result_14_G_X_LUT4 : X_LUT4
    generic map(
      INIT => X"AAAA"
    )
    port map (
      ADR0 => clk_filter_counter(15),
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => VCC,
      O => Result_14_G
    );
  Y_4_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      PATHPULSE => 638 ps
    )
    port map (
      I => ShiftRegister_0_FF_D_all_4_FF_D_i_Q_393,
      O => Y_4_O
    );
  Y_2_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      PATHPULSE => 638 ps
    )
    port map (
      I => ShiftRegister_0_FF_D_all_2_FF_D_i_Q_389,
      O => Y_2_O
    );
  Y_5_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      PATHPULSE => 638 ps
    )
    port map (
      I => ShiftRegister_0_FF_D_all_5_FF_D_i_Q_394,
      O => Y_5_O
    );
  Y_1_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      PATHPULSE => 638 ps
    )
    port map (
      I => ShiftRegister_0_FF_D_all_1_FF_D_i_Q_387,
      O => Y_1_O
    );
  Y_3_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      PATHPULSE => 638 ps
    )
    port map (
      I => ShiftRegister_0_FF_D_all_3_FF_D_i_Q_391,
      O => Y_3_O
    );
  Y_0_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      PATHPULSE => 638 ps
    )
    port map (
      I => ShiftRegister_0_FF_D_all_0_FF_D_i_Q_405,
      O => Y_0_O
    );
  Y_6_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      PATHPULSE => 638 ps
    )
    port map (
      I => ShiftRegister_0_FF_D_all_6_FF_D_i_Q_395,
      O => Y_6_O
    );
  Y_7_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      PATHPULSE => 638 ps
    )
    port map (
      I => ShiftRegister_0_FF_D_all_7_FF_D_i_Q_397,
      O => Y_7_O
    );
  NlwBlock_ShiftRegister_on_board_GND : X_ZERO
    port map (
      O => GND
    );
  NlwBlock_ShiftRegister_on_board_VCC : X_ONE
    port map (
      O => VCC
    );
  NlwBlockROC : X_ROC
    generic map (ROC_WIDTH => 100 ns)
    port map (O => GSR);
  NlwBlockTOC : X_TOC
    port map (O => GTS);

end Structure;

