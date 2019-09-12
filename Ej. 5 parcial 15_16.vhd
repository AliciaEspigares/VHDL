----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    11:12:22 11/07/2018 
-- Design Name: 
-- Module Name:    contador_examen - Behavioral 
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
use IEEE.math_real.all;
use IEEE.math_real."ceil";
use IEEE.math_real."log2";
use IEEE.STD_LOGIC_UNSIGNED.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity contador_examen is
	generic(n : integer range 3 to 31 :=16);
port(clk,clear, carga, data_in : in std_logic;
	  dato_valido : out std_logic;
	  salida : out std_logic_vector (n-1 downto 0));
end contador_examen;

architecture Behavioral of contador_examen is
signal flag : std_logic;
signal registro : std_logic_vector(n-1 downto 0);
signal cuenta : std_logic_Vector((integer(ceil(log2(real(n))))) downto 0);
begin
	process(clk)
	
	begin
	if clk='1' and clk'event then
		if clear ='1' then 
			registro <= (others=>'0');
			flag <= '0';
			salida <= (others=>'0');
			cuenta <= (others=>'0');
			dato_valido <='0';
		else
			if carga='1' and flag ='0' then
				dato_valido <='0';
				flag <= '1';
				registro(conv_integer(cuenta)) <= data_in;
			elsif flag ='1' then
				if cuenta <= n-1 then
					cuenta <= cuenta + 1;
					registro(conv_integer(cuenta))  <= data_in;
				elsif cuenta = n then
					flag <= '0';
					salida <= registro;
					dato_valido <='1';
					registro <= (others=>'0');
					cuenta <= (others=>'0');
				end if;
			end if;
		end if;
	end if;
end process;
					
					
					
				


end Behavioral;

