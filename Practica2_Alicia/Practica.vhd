----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:07:26 08/16/2019 
-- Design Name: 
-- Module Name:    Practica - Behavioral 
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Parte_1_y_2 is
    Port ( datos : in  STD_LOGIC_VECTOR (3 downto 0);
           selector_IN : in  STD_LOGIC_VECTOR (1 downto 0);
           display : out  STD_LOGIC_VECTOR (6 downto 0);
           selector_OUT : out  STD_LOGIC_VECTOR (3 downto 0));
end Parte_1_y_2;

architecture Behavioral of Parte_1_y_2 is

begin

------CONVERSOR SWITCH TO DISPLAY-----------
with datos select
display <= "0000001" when "0000", --0
			  "1001111" when "0001", --1
			  "0010010" when "0010", --2
			  "0000110" when "0011",
			  "1001100" when "0100",
			  "0100100" when "0101",
			  "0100000" when "0110",
			  "0001111" when "0111",
			  "0000000" when "1000",
			  "0000100" when "1001",
			  "1111111" when others;
			  

------SELECTOR DISPLAY--------
with selector_IN select
selector_OUT <= "0001" when "00",
					 "0010" when "01",
					 "0100" when "10",
					 "1000" when "11",
					 "0001" when others;


end Behavioral;

