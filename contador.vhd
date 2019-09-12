----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    17:09:26 10/18/2018 
-- Design Name: 
-- Module Name:    contador - Behavioral 
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
use IEEE.STD_LOGIC_UNSIGNED.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity contador is
    Port ( clk : in  STD_LOGIC;
			  carga : in STD_LOGIC;
			  entrada : in STD_LOGIC_VECTOR(7 downto 0);
           reset : in  STD_LOGIC;
           hab : in  STD_LOGIC;
           updown : in  STD_LOGIC;
           cuenta : out  STD_LOGIC_VECTOR (7 downto 0));
end contador;

architecture Behavioral of contador is
	signal tmp : std_logic_vector(7 downto 0);
begin
	process(clk)--,hab,reset,updown,carga,entrada)
	begin
		if clk='1' and clk'event then
			if reset ='1' then
				tmp <= (others=>'0');
			elsif carga ='1' then
				tmp <= entrada;
			elsif hab ='1' then
				if updown ='1' then
					tmp <= tmp + 1;
				else
					tmp <= tmp - 1;
				end if;
			end if;
		end if;
	end process;
	cuenta <= tmp;
end Behavioral;

