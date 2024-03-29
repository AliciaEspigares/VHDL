----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    18:43:50 10/25/2018 
-- Design Name: 
-- Module Name:    alu - Behavioral 
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
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity alu is
	port(a,b : in signed (15 downto 0);
		  sel : in std_logic_vector(1 downto 0);
		  salida : out signed (15 downto 0));
end alu;

architecture Behavioral of alu is

begin
	with sel select
		salida <= a+b when "00",
					 a-b when "01",
					 a and b when "10",
					 a or b when "11",
					 (others=>'0') when others;




end Behavioral;

