--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: P.20131013
--  \   \         Application: netgen
--  /   /         Filename: practica_synthesis.vhd
-- /___/   /\     Timestamp: Fri Aug 16 11:59:33 2019
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -ar Structure -tm practica -w -dir netgen/synthesis -ofmt vhdl -sim practica.ngc practica_synthesis.vhd 
-- Device	: xc3s200-4-ft256
-- Input file	: practica.ngc
-- Output file	: H:\Users\Alicia Espigares\Creciendo como ingeniera\Programming programes\VHDL\Practicando 1\Practica1_Alicia\netgen\synthesis\practica_synthesis.vhd
-- # of Entities	: 1
-- Design Name	: practica
-- Xilinx	: H:\Xilinx\14.7\ISE_DS\ISE\
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
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
use UNISIM.VPKG.ALL;

entity practica is
  port (
    clk : in STD_LOGIC := 'X'; 
    start : in STD_LOGIC := 'X'; 
    reset : in STD_LOGIC := 'X'; 
    led : out STD_LOGIC; 
    switch : in STD_LOGIC_VECTOR ( 3 downto 0 ) 
  );
end practica;

architecture Structure of practica is
  signal Mcount_tmp_cy_10_rt_2 : STD_LOGIC; 
  signal Mcount_tmp_cy_11_rt_4 : STD_LOGIC; 
  signal Mcount_tmp_cy_12_rt_6 : STD_LOGIC; 
  signal Mcount_tmp_cy_13_rt_8 : STD_LOGIC; 
  signal Mcount_tmp_cy_14_rt_10 : STD_LOGIC; 
  signal Mcount_tmp_cy_15_rt_12 : STD_LOGIC; 
  signal Mcount_tmp_cy_16_rt_14 : STD_LOGIC; 
  signal Mcount_tmp_cy_17_rt_16 : STD_LOGIC; 
  signal Mcount_tmp_cy_18_rt_18 : STD_LOGIC; 
  signal Mcount_tmp_cy_19_rt_20 : STD_LOGIC; 
  signal Mcount_tmp_cy_1_rt_22 : STD_LOGIC; 
  signal Mcount_tmp_cy_20_rt_24 : STD_LOGIC; 
  signal Mcount_tmp_cy_21_rt_26 : STD_LOGIC; 
  signal Mcount_tmp_cy_22_rt_28 : STD_LOGIC; 
  signal Mcount_tmp_cy_23_rt_30 : STD_LOGIC; 
  signal Mcount_tmp_cy_24_rt_32 : STD_LOGIC; 
  signal Mcount_tmp_cy_25_rt_34 : STD_LOGIC; 
  signal Mcount_tmp_cy_26_rt_36 : STD_LOGIC; 
  signal Mcount_tmp_cy_27_rt_38 : STD_LOGIC; 
  signal Mcount_tmp_cy_2_rt_40 : STD_LOGIC; 
  signal Mcount_tmp_cy_3_rt_42 : STD_LOGIC; 
  signal Mcount_tmp_cy_4_rt_44 : STD_LOGIC; 
  signal Mcount_tmp_cy_5_rt_46 : STD_LOGIC; 
  signal Mcount_tmp_cy_6_rt_48 : STD_LOGIC; 
  signal Mcount_tmp_cy_7_rt_50 : STD_LOGIC; 
  signal Mcount_tmp_cy_8_rt_52 : STD_LOGIC; 
  signal Mcount_tmp_cy_9_rt_54 : STD_LOGIC; 
  signal Mcount_tmp_xor_28_rt_56 : STD_LOGIC; 
  signal N0 : STD_LOGIC; 
  signal N1 : STD_LOGIC; 
  signal N4 : STD_LOGIC; 
  signal N6 : STD_LOGIC; 
  signal N7 : STD_LOGIC; 
  signal clk_BUFGP_92 : STD_LOGIC; 
  signal led31_94 : STD_LOGIC; 
  signal led_OBUF_95 : STD_LOGIC; 
  signal reset_IBUF_97 : STD_LOGIC; 
  signal start_IBUF_99 : STD_LOGIC; 
  signal switch_0_IBUF_104 : STD_LOGIC; 
  signal switch_1_IBUF_105 : STD_LOGIC; 
  signal switch_2_IBUF_106 : STD_LOGIC; 
  signal switch_3_IBUF_107 : STD_LOGIC; 
  signal Mcount_tmp_cy : STD_LOGIC_VECTOR ( 27 downto 0 ); 
  signal Mcount_tmp_lut : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal Result : STD_LOGIC_VECTOR ( 28 downto 0 ); 
  signal tmp : STD_LOGIC_VECTOR ( 28 downto 0 ); 
begin
  XST_GND : GND
    port map (
      G => N0
    );
  XST_VCC : VCC
    port map (
      P => N1
    );
  tmp_0 : FDRE
    port map (
      C => clk_BUFGP_92,
      CE => start_IBUF_99,
      D => Result(0),
      R => reset_IBUF_97,
      Q => tmp(0)
    );
  tmp_1 : FDRE
    port map (
      C => clk_BUFGP_92,
      CE => start_IBUF_99,
      D => Result(1),
      R => reset_IBUF_97,
      Q => tmp(1)
    );
  tmp_2 : FDRE
    port map (
      C => clk_BUFGP_92,
      CE => start_IBUF_99,
      D => Result(2),
      R => reset_IBUF_97,
      Q => tmp(2)
    );
  tmp_3 : FDRE
    port map (
      C => clk_BUFGP_92,
      CE => start_IBUF_99,
      D => Result(3),
      R => reset_IBUF_97,
      Q => tmp(3)
    );
  tmp_4 : FDRE
    port map (
      C => clk_BUFGP_92,
      CE => start_IBUF_99,
      D => Result(4),
      R => reset_IBUF_97,
      Q => tmp(4)
    );
  tmp_5 : FDRE
    port map (
      C => clk_BUFGP_92,
      CE => start_IBUF_99,
      D => Result(5),
      R => reset_IBUF_97,
      Q => tmp(5)
    );
  tmp_6 : FDRE
    port map (
      C => clk_BUFGP_92,
      CE => start_IBUF_99,
      D => Result(6),
      R => reset_IBUF_97,
      Q => tmp(6)
    );
  tmp_7 : FDRE
    port map (
      C => clk_BUFGP_92,
      CE => start_IBUF_99,
      D => Result(7),
      R => reset_IBUF_97,
      Q => tmp(7)
    );
  tmp_8 : FDRE
    port map (
      C => clk_BUFGP_92,
      CE => start_IBUF_99,
      D => Result(8),
      R => reset_IBUF_97,
      Q => tmp(8)
    );
  tmp_9 : FDRE
    port map (
      C => clk_BUFGP_92,
      CE => start_IBUF_99,
      D => Result(9),
      R => reset_IBUF_97,
      Q => tmp(9)
    );
  tmp_10 : FDRE
    port map (
      C => clk_BUFGP_92,
      CE => start_IBUF_99,
      D => Result(10),
      R => reset_IBUF_97,
      Q => tmp(10)
    );
  tmp_11 : FDRE
    port map (
      C => clk_BUFGP_92,
      CE => start_IBUF_99,
      D => Result(11),
      R => reset_IBUF_97,
      Q => tmp(11)
    );
  tmp_12 : FDRE
    port map (
      C => clk_BUFGP_92,
      CE => start_IBUF_99,
      D => Result(12),
      R => reset_IBUF_97,
      Q => tmp(12)
    );
  tmp_13 : FDRE
    port map (
      C => clk_BUFGP_92,
      CE => start_IBUF_99,
      D => Result(13),
      R => reset_IBUF_97,
      Q => tmp(13)
    );
  tmp_14 : FDRE
    port map (
      C => clk_BUFGP_92,
      CE => start_IBUF_99,
      D => Result(14),
      R => reset_IBUF_97,
      Q => tmp(14)
    );
  tmp_15 : FDRE
    port map (
      C => clk_BUFGP_92,
      CE => start_IBUF_99,
      D => Result(15),
      R => reset_IBUF_97,
      Q => tmp(15)
    );
  tmp_16 : FDRE
    port map (
      C => clk_BUFGP_92,
      CE => start_IBUF_99,
      D => Result(16),
      R => reset_IBUF_97,
      Q => tmp(16)
    );
  tmp_17 : FDRE
    port map (
      C => clk_BUFGP_92,
      CE => start_IBUF_99,
      D => Result(17),
      R => reset_IBUF_97,
      Q => tmp(17)
    );
  tmp_18 : FDRE
    port map (
      C => clk_BUFGP_92,
      CE => start_IBUF_99,
      D => Result(18),
      R => reset_IBUF_97,
      Q => tmp(18)
    );
  tmp_19 : FDRE
    port map (
      C => clk_BUFGP_92,
      CE => start_IBUF_99,
      D => Result(19),
      R => reset_IBUF_97,
      Q => tmp(19)
    );
  tmp_20 : FDRE
    port map (
      C => clk_BUFGP_92,
      CE => start_IBUF_99,
      D => Result(20),
      R => reset_IBUF_97,
      Q => tmp(20)
    );
  tmp_21 : FDRE
    port map (
      C => clk_BUFGP_92,
      CE => start_IBUF_99,
      D => Result(21),
      R => reset_IBUF_97,
      Q => tmp(21)
    );
  tmp_22 : FDRE
    port map (
      C => clk_BUFGP_92,
      CE => start_IBUF_99,
      D => Result(22),
      R => reset_IBUF_97,
      Q => tmp(22)
    );
  tmp_23 : FDRE
    port map (
      C => clk_BUFGP_92,
      CE => start_IBUF_99,
      D => Result(23),
      R => reset_IBUF_97,
      Q => tmp(23)
    );
  tmp_24 : FDRE
    port map (
      C => clk_BUFGP_92,
      CE => start_IBUF_99,
      D => Result(24),
      R => reset_IBUF_97,
      Q => tmp(24)
    );
  tmp_25 : FDRE
    port map (
      C => clk_BUFGP_92,
      CE => start_IBUF_99,
      D => Result(25),
      R => reset_IBUF_97,
      Q => tmp(25)
    );
  tmp_26 : FDRE
    port map (
      C => clk_BUFGP_92,
      CE => start_IBUF_99,
      D => Result(26),
      R => reset_IBUF_97,
      Q => tmp(26)
    );
  tmp_27 : FDRE
    port map (
      C => clk_BUFGP_92,
      CE => start_IBUF_99,
      D => Result(27),
      R => reset_IBUF_97,
      Q => tmp(27)
    );
  tmp_28 : FDRE
    port map (
      C => clk_BUFGP_92,
      CE => start_IBUF_99,
      D => Result(28),
      R => reset_IBUF_97,
      Q => tmp(28)
    );
  Mcount_tmp_cy_0_Q : MUXCY
    port map (
      CI => N0,
      DI => N1,
      S => Mcount_tmp_lut(0),
      O => Mcount_tmp_cy(0)
    );
  Mcount_tmp_xor_0_Q : XORCY
    port map (
      CI => N0,
      LI => Mcount_tmp_lut(0),
      O => Result(0)
    );
  Mcount_tmp_cy_1_Q : MUXCY
    port map (
      CI => Mcount_tmp_cy(0),
      DI => N0,
      S => Mcount_tmp_cy_1_rt_22,
      O => Mcount_tmp_cy(1)
    );
  Mcount_tmp_xor_1_Q : XORCY
    port map (
      CI => Mcount_tmp_cy(0),
      LI => Mcount_tmp_cy_1_rt_22,
      O => Result(1)
    );
  Mcount_tmp_cy_2_Q : MUXCY
    port map (
      CI => Mcount_tmp_cy(1),
      DI => N0,
      S => Mcount_tmp_cy_2_rt_40,
      O => Mcount_tmp_cy(2)
    );
  Mcount_tmp_xor_2_Q : XORCY
    port map (
      CI => Mcount_tmp_cy(1),
      LI => Mcount_tmp_cy_2_rt_40,
      O => Result(2)
    );
  Mcount_tmp_cy_3_Q : MUXCY
    port map (
      CI => Mcount_tmp_cy(2),
      DI => N0,
      S => Mcount_tmp_cy_3_rt_42,
      O => Mcount_tmp_cy(3)
    );
  Mcount_tmp_xor_3_Q : XORCY
    port map (
      CI => Mcount_tmp_cy(2),
      LI => Mcount_tmp_cy_3_rt_42,
      O => Result(3)
    );
  Mcount_tmp_cy_4_Q : MUXCY
    port map (
      CI => Mcount_tmp_cy(3),
      DI => N0,
      S => Mcount_tmp_cy_4_rt_44,
      O => Mcount_tmp_cy(4)
    );
  Mcount_tmp_xor_4_Q : XORCY
    port map (
      CI => Mcount_tmp_cy(3),
      LI => Mcount_tmp_cy_4_rt_44,
      O => Result(4)
    );
  Mcount_tmp_cy_5_Q : MUXCY
    port map (
      CI => Mcount_tmp_cy(4),
      DI => N0,
      S => Mcount_tmp_cy_5_rt_46,
      O => Mcount_tmp_cy(5)
    );
  Mcount_tmp_xor_5_Q : XORCY
    port map (
      CI => Mcount_tmp_cy(4),
      LI => Mcount_tmp_cy_5_rt_46,
      O => Result(5)
    );
  Mcount_tmp_cy_6_Q : MUXCY
    port map (
      CI => Mcount_tmp_cy(5),
      DI => N0,
      S => Mcount_tmp_cy_6_rt_48,
      O => Mcount_tmp_cy(6)
    );
  Mcount_tmp_xor_6_Q : XORCY
    port map (
      CI => Mcount_tmp_cy(5),
      LI => Mcount_tmp_cy_6_rt_48,
      O => Result(6)
    );
  Mcount_tmp_cy_7_Q : MUXCY
    port map (
      CI => Mcount_tmp_cy(6),
      DI => N0,
      S => Mcount_tmp_cy_7_rt_50,
      O => Mcount_tmp_cy(7)
    );
  Mcount_tmp_xor_7_Q : XORCY
    port map (
      CI => Mcount_tmp_cy(6),
      LI => Mcount_tmp_cy_7_rt_50,
      O => Result(7)
    );
  Mcount_tmp_cy_8_Q : MUXCY
    port map (
      CI => Mcount_tmp_cy(7),
      DI => N0,
      S => Mcount_tmp_cy_8_rt_52,
      O => Mcount_tmp_cy(8)
    );
  Mcount_tmp_xor_8_Q : XORCY
    port map (
      CI => Mcount_tmp_cy(7),
      LI => Mcount_tmp_cy_8_rt_52,
      O => Result(8)
    );
  Mcount_tmp_cy_9_Q : MUXCY
    port map (
      CI => Mcount_tmp_cy(8),
      DI => N0,
      S => Mcount_tmp_cy_9_rt_54,
      O => Mcount_tmp_cy(9)
    );
  Mcount_tmp_xor_9_Q : XORCY
    port map (
      CI => Mcount_tmp_cy(8),
      LI => Mcount_tmp_cy_9_rt_54,
      O => Result(9)
    );
  Mcount_tmp_cy_10_Q : MUXCY
    port map (
      CI => Mcount_tmp_cy(9),
      DI => N0,
      S => Mcount_tmp_cy_10_rt_2,
      O => Mcount_tmp_cy(10)
    );
  Mcount_tmp_xor_10_Q : XORCY
    port map (
      CI => Mcount_tmp_cy(9),
      LI => Mcount_tmp_cy_10_rt_2,
      O => Result(10)
    );
  Mcount_tmp_cy_11_Q : MUXCY
    port map (
      CI => Mcount_tmp_cy(10),
      DI => N0,
      S => Mcount_tmp_cy_11_rt_4,
      O => Mcount_tmp_cy(11)
    );
  Mcount_tmp_xor_11_Q : XORCY
    port map (
      CI => Mcount_tmp_cy(10),
      LI => Mcount_tmp_cy_11_rt_4,
      O => Result(11)
    );
  Mcount_tmp_cy_12_Q : MUXCY
    port map (
      CI => Mcount_tmp_cy(11),
      DI => N0,
      S => Mcount_tmp_cy_12_rt_6,
      O => Mcount_tmp_cy(12)
    );
  Mcount_tmp_xor_12_Q : XORCY
    port map (
      CI => Mcount_tmp_cy(11),
      LI => Mcount_tmp_cy_12_rt_6,
      O => Result(12)
    );
  Mcount_tmp_cy_13_Q : MUXCY
    port map (
      CI => Mcount_tmp_cy(12),
      DI => N0,
      S => Mcount_tmp_cy_13_rt_8,
      O => Mcount_tmp_cy(13)
    );
  Mcount_tmp_xor_13_Q : XORCY
    port map (
      CI => Mcount_tmp_cy(12),
      LI => Mcount_tmp_cy_13_rt_8,
      O => Result(13)
    );
  Mcount_tmp_cy_14_Q : MUXCY
    port map (
      CI => Mcount_tmp_cy(13),
      DI => N0,
      S => Mcount_tmp_cy_14_rt_10,
      O => Mcount_tmp_cy(14)
    );
  Mcount_tmp_xor_14_Q : XORCY
    port map (
      CI => Mcount_tmp_cy(13),
      LI => Mcount_tmp_cy_14_rt_10,
      O => Result(14)
    );
  Mcount_tmp_cy_15_Q : MUXCY
    port map (
      CI => Mcount_tmp_cy(14),
      DI => N0,
      S => Mcount_tmp_cy_15_rt_12,
      O => Mcount_tmp_cy(15)
    );
  Mcount_tmp_xor_15_Q : XORCY
    port map (
      CI => Mcount_tmp_cy(14),
      LI => Mcount_tmp_cy_15_rt_12,
      O => Result(15)
    );
  Mcount_tmp_cy_16_Q : MUXCY
    port map (
      CI => Mcount_tmp_cy(15),
      DI => N0,
      S => Mcount_tmp_cy_16_rt_14,
      O => Mcount_tmp_cy(16)
    );
  Mcount_tmp_xor_16_Q : XORCY
    port map (
      CI => Mcount_tmp_cy(15),
      LI => Mcount_tmp_cy_16_rt_14,
      O => Result(16)
    );
  Mcount_tmp_cy_17_Q : MUXCY
    port map (
      CI => Mcount_tmp_cy(16),
      DI => N0,
      S => Mcount_tmp_cy_17_rt_16,
      O => Mcount_tmp_cy(17)
    );
  Mcount_tmp_xor_17_Q : XORCY
    port map (
      CI => Mcount_tmp_cy(16),
      LI => Mcount_tmp_cy_17_rt_16,
      O => Result(17)
    );
  Mcount_tmp_cy_18_Q : MUXCY
    port map (
      CI => Mcount_tmp_cy(17),
      DI => N0,
      S => Mcount_tmp_cy_18_rt_18,
      O => Mcount_tmp_cy(18)
    );
  Mcount_tmp_xor_18_Q : XORCY
    port map (
      CI => Mcount_tmp_cy(17),
      LI => Mcount_tmp_cy_18_rt_18,
      O => Result(18)
    );
  Mcount_tmp_cy_19_Q : MUXCY
    port map (
      CI => Mcount_tmp_cy(18),
      DI => N0,
      S => Mcount_tmp_cy_19_rt_20,
      O => Mcount_tmp_cy(19)
    );
  Mcount_tmp_xor_19_Q : XORCY
    port map (
      CI => Mcount_tmp_cy(18),
      LI => Mcount_tmp_cy_19_rt_20,
      O => Result(19)
    );
  Mcount_tmp_cy_20_Q : MUXCY
    port map (
      CI => Mcount_tmp_cy(19),
      DI => N0,
      S => Mcount_tmp_cy_20_rt_24,
      O => Mcount_tmp_cy(20)
    );
  Mcount_tmp_xor_20_Q : XORCY
    port map (
      CI => Mcount_tmp_cy(19),
      LI => Mcount_tmp_cy_20_rt_24,
      O => Result(20)
    );
  Mcount_tmp_cy_21_Q : MUXCY
    port map (
      CI => Mcount_tmp_cy(20),
      DI => N0,
      S => Mcount_tmp_cy_21_rt_26,
      O => Mcount_tmp_cy(21)
    );
  Mcount_tmp_xor_21_Q : XORCY
    port map (
      CI => Mcount_tmp_cy(20),
      LI => Mcount_tmp_cy_21_rt_26,
      O => Result(21)
    );
  Mcount_tmp_cy_22_Q : MUXCY
    port map (
      CI => Mcount_tmp_cy(21),
      DI => N0,
      S => Mcount_tmp_cy_22_rt_28,
      O => Mcount_tmp_cy(22)
    );
  Mcount_tmp_xor_22_Q : XORCY
    port map (
      CI => Mcount_tmp_cy(21),
      LI => Mcount_tmp_cy_22_rt_28,
      O => Result(22)
    );
  Mcount_tmp_cy_23_Q : MUXCY
    port map (
      CI => Mcount_tmp_cy(22),
      DI => N0,
      S => Mcount_tmp_cy_23_rt_30,
      O => Mcount_tmp_cy(23)
    );
  Mcount_tmp_xor_23_Q : XORCY
    port map (
      CI => Mcount_tmp_cy(22),
      LI => Mcount_tmp_cy_23_rt_30,
      O => Result(23)
    );
  Mcount_tmp_cy_24_Q : MUXCY
    port map (
      CI => Mcount_tmp_cy(23),
      DI => N0,
      S => Mcount_tmp_cy_24_rt_32,
      O => Mcount_tmp_cy(24)
    );
  Mcount_tmp_xor_24_Q : XORCY
    port map (
      CI => Mcount_tmp_cy(23),
      LI => Mcount_tmp_cy_24_rt_32,
      O => Result(24)
    );
  Mcount_tmp_cy_25_Q : MUXCY
    port map (
      CI => Mcount_tmp_cy(24),
      DI => N0,
      S => Mcount_tmp_cy_25_rt_34,
      O => Mcount_tmp_cy(25)
    );
  Mcount_tmp_xor_25_Q : XORCY
    port map (
      CI => Mcount_tmp_cy(24),
      LI => Mcount_tmp_cy_25_rt_34,
      O => Result(25)
    );
  Mcount_tmp_cy_26_Q : MUXCY
    port map (
      CI => Mcount_tmp_cy(25),
      DI => N0,
      S => Mcount_tmp_cy_26_rt_36,
      O => Mcount_tmp_cy(26)
    );
  Mcount_tmp_xor_26_Q : XORCY
    port map (
      CI => Mcount_tmp_cy(25),
      LI => Mcount_tmp_cy_26_rt_36,
      O => Result(26)
    );
  Mcount_tmp_cy_27_Q : MUXCY
    port map (
      CI => Mcount_tmp_cy(26),
      DI => N0,
      S => Mcount_tmp_cy_27_rt_38,
      O => Mcount_tmp_cy(27)
    );
  Mcount_tmp_xor_27_Q : XORCY
    port map (
      CI => Mcount_tmp_cy(26),
      LI => Mcount_tmp_cy_27_rt_38,
      O => Result(27)
    );
  Mcount_tmp_xor_28_Q : XORCY
    port map (
      CI => Mcount_tmp_cy(27),
      LI => Mcount_tmp_xor_28_rt_56,
      O => Result(28)
    );
  led31 : LUT4
    generic map(
      INIT => X"FFE9"
    )
    port map (
      I0 => switch_2_IBUF_106,
      I1 => switch_3_IBUF_107,
      I2 => switch_1_IBUF_105,
      I3 => switch_0_IBUF_104,
      O => led31_94
    );
  start_IBUF : IBUF
    port map (
      I => start,
      O => start_IBUF_99
    );
  reset_IBUF : IBUF
    port map (
      I => reset,
      O => reset_IBUF_97
    );
  switch_3_IBUF : IBUF
    port map (
      I => switch(3),
      O => switch_3_IBUF_107
    );
  switch_2_IBUF : IBUF
    port map (
      I => switch(2),
      O => switch_2_IBUF_106
    );
  switch_1_IBUF : IBUF
    port map (
      I => switch(1),
      O => switch_1_IBUF_105
    );
  switch_0_IBUF : IBUF
    port map (
      I => switch(0),
      O => switch_0_IBUF_104
    );
  led_OBUF : OBUF
    port map (
      I => led_OBUF_95,
      O => led
    );
  Mcount_tmp_cy_1_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => tmp(1),
      O => Mcount_tmp_cy_1_rt_22
    );
  Mcount_tmp_cy_2_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => tmp(2),
      O => Mcount_tmp_cy_2_rt_40
    );
  Mcount_tmp_cy_3_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => tmp(3),
      O => Mcount_tmp_cy_3_rt_42
    );
  Mcount_tmp_cy_4_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => tmp(4),
      O => Mcount_tmp_cy_4_rt_44
    );
  Mcount_tmp_cy_5_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => tmp(5),
      O => Mcount_tmp_cy_5_rt_46
    );
  Mcount_tmp_cy_6_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => tmp(6),
      O => Mcount_tmp_cy_6_rt_48
    );
  Mcount_tmp_cy_7_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => tmp(7),
      O => Mcount_tmp_cy_7_rt_50
    );
  Mcount_tmp_cy_8_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => tmp(8),
      O => Mcount_tmp_cy_8_rt_52
    );
  Mcount_tmp_cy_9_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => tmp(9),
      O => Mcount_tmp_cy_9_rt_54
    );
  Mcount_tmp_cy_10_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => tmp(10),
      O => Mcount_tmp_cy_10_rt_2
    );
  Mcount_tmp_cy_11_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => tmp(11),
      O => Mcount_tmp_cy_11_rt_4
    );
  Mcount_tmp_cy_12_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => tmp(12),
      O => Mcount_tmp_cy_12_rt_6
    );
  Mcount_tmp_cy_13_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => tmp(13),
      O => Mcount_tmp_cy_13_rt_8
    );
  Mcount_tmp_cy_14_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => tmp(14),
      O => Mcount_tmp_cy_14_rt_10
    );
  Mcount_tmp_cy_15_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => tmp(15),
      O => Mcount_tmp_cy_15_rt_12
    );
  Mcount_tmp_cy_16_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => tmp(16),
      O => Mcount_tmp_cy_16_rt_14
    );
  Mcount_tmp_cy_17_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => tmp(17),
      O => Mcount_tmp_cy_17_rt_16
    );
  Mcount_tmp_cy_18_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => tmp(18),
      O => Mcount_tmp_cy_18_rt_18
    );
  Mcount_tmp_cy_19_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => tmp(19),
      O => Mcount_tmp_cy_19_rt_20
    );
  Mcount_tmp_cy_20_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => tmp(20),
      O => Mcount_tmp_cy_20_rt_24
    );
  Mcount_tmp_cy_21_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => tmp(21),
      O => Mcount_tmp_cy_21_rt_26
    );
  Mcount_tmp_cy_22_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => tmp(22),
      O => Mcount_tmp_cy_22_rt_28
    );
  Mcount_tmp_cy_23_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => tmp(23),
      O => Mcount_tmp_cy_23_rt_30
    );
  Mcount_tmp_cy_24_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => tmp(24),
      O => Mcount_tmp_cy_24_rt_32
    );
  Mcount_tmp_cy_25_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => tmp(25),
      O => Mcount_tmp_cy_25_rt_34
    );
  Mcount_tmp_cy_26_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => tmp(26),
      O => Mcount_tmp_cy_26_rt_36
    );
  Mcount_tmp_cy_27_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => tmp(27),
      O => Mcount_tmp_cy_27_rt_38
    );
  Mcount_tmp_xor_28_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => tmp(28),
      O => Mcount_tmp_xor_28_rt_56
    );
  led118 : LUT4
    generic map(
      INIT => X"F222"
    )
    port map (
      I0 => N4,
      I1 => switch_0_IBUF_104,
      I2 => tmp(25),
      I3 => led31_94,
      O => led_OBUF_95
    );
  led118_SW0 : MUXF5
    port map (
      I0 => N6,
      I1 => N7,
      S => switch_3_IBUF_107,
      O => N4
    );
  led118_SW0_F : LUT4
    generic map(
      INIT => X"6240"
    )
    port map (
      I0 => switch_1_IBUF_105,
      I1 => switch_2_IBUF_106,
      I2 => tmp(27),
      I3 => tmp(26),
      O => N6
    );
  led118_SW0_G : LUT3
    generic map(
      INIT => X"02"
    )
    port map (
      I0 => tmp(28),
      I1 => switch_2_IBUF_106,
      I2 => switch_1_IBUF_105,
      O => N7
    );
  clk_BUFGP : BUFGP
    port map (
      I => clk,
      O => clk_BUFGP_92
    );
  Mcount_tmp_lut_0_INV_0 : INV
    port map (
      I => tmp(0),
      O => Mcount_tmp_lut(0)
    );

end Structure;

