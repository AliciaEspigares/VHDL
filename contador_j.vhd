----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    18:09:51 10/25/2018 
-- Design Name: 
-- Module Name:    contador_j - Behavioral 
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

entity contador_j is
	generic( N : integer range 3 to 63 :=15);
    Port ( clk : in  STD_LOGIC;
           clear : in  STD_LOGIC;
           salida : out  STD_LOGIC_VECTOR (N downto 0);
           ce : in  STD_LOGIC);
end contador_j;

architecture Behavioral of contador_j is
	signal tmp : std_logic_Vector(N downto 0);
begin
process(clk,ce,clear)
begin
	if rising_edge(clk) then
		if clear = '1' then
			tmp <= (others=>'0');
		elsif ce ='1' then
			tmp <= tmp (n-1 downto 0) & not(tmp(n));
		end if;
	end if;
end process;
	salida <= tmp;
		
		
		
		
		
		
		
		
		
		
		
		
			


end Behavioral;

