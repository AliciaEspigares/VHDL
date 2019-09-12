----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:55:02 08/16/2019 
-- Design Name: 
-- Module Name:    Parte3 - Behavioral 
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

entity Parte3 is
	Port (display : out std_logic_vector(6 downto 0);
			selector_IN : in std_logic_vector(1 downto 0);
			selector_OUT : out std_logic_vector(3 downto 0);
			clk : in std_logic;
			reset : in std_logic;
			up_down : in std_logic);
			
	
	
end Parte3;

architecture Behavioral of Parte3 is

signal tmp : std_logic_vector(25 downto 0);
signal cont : std_logic_vector(3 downto 0);
signal clk_div : std_logic;

begin
----------DIVISOR DE FRECUENCIA-----------
process(clk)
begin
	if clk='1' and clk'event then
		if reset = '0' then
			tmp <= (others => '0');
			clk_div <= '0';
		else 
			if tmp = 49999999 then
				tmp <= (others => '0');
				clk_div <= '1';
			else 
				clk_div <= '0';
				tmp <= tmp + 1;
			
			end if;
		end if;
	end if;
end process;


----------CONTADOR-------------
process(clk)
begin
	if clk='1' and clk'event then
		if reset = '0' then
			cont <= (others => '0');
		else 
			clk_div <='1'; 
			if up_down = '1' then
				cont <= cont + 1;
			else 
				cont <= cont - 1;
			end if;
		end if;
	end if;
end process;

------CONVERSOR SWITCH TO DISPLAY-----------
with cont select
display <= "0000001" when "0000", --0
			  "1001111" when "0001", --1
			  "0010010" when "0010", --2
			  "0000110" when "0011", --3
			  "1001100" when "0100", --4
			  "0100100" when "0101", --5
			  "0100000" when "0110", --6
			  "0001111" when "0111", --7
			  "0000000" when "1000", --8
			  "0000100" when "1001", --9
			  "0001000" when "1010", --A
			  "1100000" when "1011", --B
			  "0110001" when "1100", --C
			  "1000010" when "1101", --D
			  "0110000" when "1110", --E
			  "0111000" when "1111", --F			  
			  "1111111" when others;
			  

------SELECTOR DISPLAY--------
with selector_IN select
selector_OUT <= "0001" when "00",
					 "0010" when "01",
					 "0100" when "10",
					 "1000" when "11",
					 "0001" when others;

end Behavioral;

