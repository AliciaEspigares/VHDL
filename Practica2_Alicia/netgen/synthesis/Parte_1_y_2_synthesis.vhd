--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: P.20131013
--  \   \         Application: netgen
--  /   /         Filename: Parte_1_y_2_synthesis.vhd
-- /___/   /\     Timestamp: Fri Aug 16 13:54:29 2019
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -ar Structure -tm Parte_1_y_2 -w -dir netgen/synthesis -ofmt vhdl -sim Parte_1_y_2.ngc Parte_1_y_2_synthesis.vhd 
-- Device	: xc3s200-4-ft256
-- Input file	: Parte_1_y_2.ngc
-- Output file	: H:\Users\Alicia Espigares\Creciendo como ingeniera\Programming programes\VHDL\Practicando 1\Practica2_Alicia\netgen\synthesis\Parte_1_y_2_synthesis.vhd
-- # of Entities	: 1
-- Design Name	: Parte_1_y_2
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

entity Parte_1_y_2 is
  port (
    selector_OUT : out STD_LOGIC_VECTOR ( 3 downto 0 ); 
    display : out STD_LOGIC_VECTOR ( 6 downto 0 ); 
    selector_IN : in STD_LOGIC_VECTOR ( 1 downto 0 ); 
    datos : in STD_LOGIC_VECTOR ( 3 downto 0 ) 
  );
end Parte_1_y_2;

architecture Structure of Parte_1_y_2 is
  signal datos_0_IBUF_4 : STD_LOGIC; 
  signal datos_1_IBUF_5 : STD_LOGIC; 
  signal datos_2_IBUF_6 : STD_LOGIC; 
  signal datos_3_IBUF_7 : STD_LOGIC; 
  signal display_0_OBUF_15 : STD_LOGIC; 
  signal display_1_OBUF_16 : STD_LOGIC; 
  signal display_2_OBUF_17 : STD_LOGIC; 
  signal display_3_OBUF_18 : STD_LOGIC; 
  signal display_4_OBUF_19 : STD_LOGIC; 
  signal display_5_OBUF_20 : STD_LOGIC; 
  signal display_6_OBUF_21 : STD_LOGIC; 
  signal selector_IN_0_IBUF_24 : STD_LOGIC; 
  signal selector_IN_1_IBUF_25 : STD_LOGIC; 
  signal selector_OUT_0_OBUF_30 : STD_LOGIC; 
  signal selector_OUT_1_OBUF_31 : STD_LOGIC; 
  signal selector_OUT_2_OBUF_32 : STD_LOGIC; 
  signal selector_OUT_3_OBUF_33 : STD_LOGIC; 
begin
  Mdecod_selector_OUT31 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => selector_IN_0_IBUF_24,
      I1 => selector_IN_1_IBUF_25,
      O => selector_OUT_3_OBUF_33
    );
  Mdecod_selector_OUT21 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => selector_IN_0_IBUF_24,
      I1 => selector_IN_1_IBUF_25,
      O => selector_OUT_2_OBUF_32
    );
  Mdecod_selector_OUT11 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => selector_IN_1_IBUF_25,
      I1 => selector_IN_0_IBUF_24,
      O => selector_OUT_1_OBUF_31
    );
  Mdecod_selector_OUT01 : LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => selector_IN_0_IBUF_24,
      I1 => selector_IN_1_IBUF_25,
      O => selector_OUT_0_OBUF_30
    );
  Mrom_display21 : LUT4
    generic map(
      INIT => X"FFE4"
    )
    port map (
      I0 => datos_1_IBUF_5,
      I1 => datos_2_IBUF_6,
      I2 => datos_3_IBUF_7,
      I3 => datos_0_IBUF_4,
      O => display_2_OBUF_17
    );
  Mrom_display41 : LUT4
    generic map(
      INIT => X"A8AC"
    )
    port map (
      I0 => datos_3_IBUF_7,
      I1 => datos_1_IBUF_5,
      I2 => datos_2_IBUF_6,
      I3 => datos_0_IBUF_4,
      O => display_4_OBUF_19
    );
  Mrom_display51 : LUT4
    generic map(
      INIT => X"ACE8"
    )
    port map (
      I0 => datos_3_IBUF_7,
      I1 => datos_2_IBUF_6,
      I2 => datos_1_IBUF_5,
      I3 => datos_0_IBUF_4,
      O => display_5_OBUF_20
    );
  Mrom_display111 : LUT4
    generic map(
      INIT => X"F9D8"
    )
    port map (
      I0 => datos_2_IBUF_6,
      I1 => datos_3_IBUF_7,
      I2 => datos_1_IBUF_5,
      I3 => datos_0_IBUF_4,
      O => display_1_OBUF_16
    );
  Mrom_display11 : LUT4
    generic map(
      INIT => X"E9C9"
    )
    port map (
      I0 => datos_2_IBUF_6,
      I1 => datos_3_IBUF_7,
      I2 => datos_1_IBUF_5,
      I3 => datos_0_IBUF_4,
      O => display_0_OBUF_15
    );
  Mrom_display61 : LUT4
    generic map(
      INIT => X"FA14"
    )
    port map (
      I0 => datos_1_IBUF_5,
      I1 => datos_0_IBUF_4,
      I2 => datos_2_IBUF_6,
      I3 => datos_3_IBUF_7,
      O => display_6_OBUF_21
    );
  selector_IN_1_IBUF : IBUF
    port map (
      I => selector_IN(1),
      O => selector_IN_1_IBUF_25
    );
  selector_IN_0_IBUF : IBUF
    port map (
      I => selector_IN(0),
      O => selector_IN_0_IBUF_24
    );
  datos_3_IBUF : IBUF
    port map (
      I => datos(3),
      O => datos_3_IBUF_7
    );
  datos_2_IBUF : IBUF
    port map (
      I => datos(2),
      O => datos_2_IBUF_6
    );
  datos_1_IBUF : IBUF
    port map (
      I => datos(1),
      O => datos_1_IBUF_5
    );
  datos_0_IBUF : IBUF
    port map (
      I => datos(0),
      O => datos_0_IBUF_4
    );
  selector_OUT_3_OBUF : OBUF
    port map (
      I => selector_OUT_3_OBUF_33,
      O => selector_OUT(3)
    );
  selector_OUT_2_OBUF : OBUF
    port map (
      I => selector_OUT_2_OBUF_32,
      O => selector_OUT(2)
    );
  selector_OUT_1_OBUF : OBUF
    port map (
      I => selector_OUT_1_OBUF_31,
      O => selector_OUT(1)
    );
  selector_OUT_0_OBUF : OBUF
    port map (
      I => selector_OUT_0_OBUF_30,
      O => selector_OUT(0)
    );
  display_6_OBUF : OBUF
    port map (
      I => display_6_OBUF_21,
      O => display(6)
    );
  display_5_OBUF : OBUF
    port map (
      I => display_5_OBUF_20,
      O => display(5)
    );
  display_4_OBUF : OBUF
    port map (
      I => display_4_OBUF_19,
      O => display(4)
    );
  display_3_OBUF : OBUF
    port map (
      I => display_3_OBUF_18,
      O => display(3)
    );
  display_2_OBUF : OBUF
    port map (
      I => display_2_OBUF_17,
      O => display(2)
    );
  display_1_OBUF : OBUF
    port map (
      I => display_1_OBUF_16,
      O => display(1)
    );
  display_0_OBUF : OBUF
    port map (
      I => display_0_OBUF_15,
      O => display(0)
    );
  Mrom_display31 : LUT4
    generic map(
      INIT => X"E9D8"
    )
    port map (
      I0 => datos_1_IBUF_5,
      I1 => datos_3_IBUF_7,
      I2 => datos_2_IBUF_6,
      I3 => datos_0_IBUF_4,
      O => display_3_OBUF_18
    );

end Structure;

