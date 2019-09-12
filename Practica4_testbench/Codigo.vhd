----------------------------------------------------------------------------------
-- Company: 
-- Engineer: Alicia Espigares Erades
-- 
-- Create Date:    13:19:23 09/05/2019 
-- Design Name: 
-- Module Name:    Codigo - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_unsigned.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;


entity Codigo is
  port (
         sel_color : in std_logic_vector(5 downto 0);
         reset, clk : in std_logic;
         VgaHSync : out std_logic;
         VgaVSync : out std_logic;
         Active_video : out std_logic_vector(2 downto 0)); --VgaR, VgaG, VgaB
end Codigo;



architecture Behavioral of Codigo is
  signal pixelEn : std_logic_vector (1 downto 0);
  signal pixel_counter : integer range 0 to 799;
  signal line_counter : integer range 0 to 520;
BEGIN

  process(clk,reset)
  BEGIN
  if clk='1' and clk'event then
    if reset='0' then
      pixelEn <= (others=>'0');
      line_counter <= 0;
      pixel_counter <= 0;
      VgaVSync <= '0';
      VgaHSync <= '0';
    else
      pixelEn <= pixelEn + 1;
      if pixel_counter = 95 then
        VgaHSync <= '1';
      elsif pixel_counter = 799 then
        VgaHSync <= '0';
        pixel_counter <= 0;
        if line_counter = 1 then
          VgaVSync <= '1';
        elsif line_counter = 520 then
          VgaVSync <= '0';
          line_counter <= 0;
        else
          line_counter <= line_counter + 1;
        end if;
      else
        pixel_counter <= pixel_counter + 1;
      end if;
    end if;
  end if;
end process;

--By secuencial--
Active_video <= "010" when line_counter < 510 and line_counter > 30 and pixel_counter < 784 and pixel_counter >143 else
  "000";


end Behavioral;


