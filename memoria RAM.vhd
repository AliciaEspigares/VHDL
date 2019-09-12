----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    18:25:41 10/18/2018 
-- Design Name: 
-- Module Name:    memoria - Behavioral 
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
use IEEE.STD_LOGIC_UNSIGNED.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity memoria is
    Port ( clk : in  STD_LOGIC;
           reset : in  STD_LOGIC;
           r_w : in  STD_LOGIC;
           addr : in  STD_LOGIC_VECTOR (9 downto 0);
           d_in : in  STD_LOGIC_VECTOR (15 downto 0);
           d_out : out  STD_LOGIC_VECTOR (15 downto 0));
end memoria;

architecture Behavioral of memoria is
type RAM is array (0 to 1023) of std_logic_Vector(15 downto 0);
signal m_ram : ram;
begin
process(clk,reset,r_w,addr, d_in)
begin
	if clk='1' and clk'event then
		if reset='1' then
			d_out <= (others=>'0');
		else
			if r_w ='1' then
				d_out <= m_ram(conv_integer(addr));
			else
				m_ram(conv_integer(addr)) <= d_in;
			end if;
		end if;
	end if;
end process;

end Behavioral;

