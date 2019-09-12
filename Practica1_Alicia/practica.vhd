----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:13:25 08/07/2019 
-- Design Name: 
-- Module Name:    practica - Behavioral 
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

entity practica is
    Port ( clk : in  STD_LOGIC;
           reset : in  STD_LOGIC;
           led : out  STD_LOGIC;
           switch : in  STD_LOGIC_VECTOR (3 downto 0);
           start : in  STD_LOGIC);
end practica;

architecture Behavioral of practica is
signal tmp : std_logic_vector(28 downto 0);
begin

process(clk)
begin
	if clk='1' and clk'event then
		if reset='1' then
			tmp <= (others => '0');
		elsif start ='1' then
			tmp <= tmp + 1;
		end if;
	end if;
end process;
with switch select
	led <= tmp(25) when "0001",
			 tmp(26) when "0010",
			 tmp(27) when "0100",
			 tmp(28) when "1000",
			 tmp(25) when others;



--------------------------------------------------------------------------------
				--COPIA CÓDIGO ESCRITO EN EL PDF DE LA PRÁCTICA 1
													--	-- Clock period definitions
													--	constant clk_period : time := 10ns;
													--begin

													--Instantiate the Unit Under Test (UUT)
													--	uut: practica PORT MAP (
													--			clk => clk,
													--			reset => reset,
													--			led => led,
													--			switch => switch,
													--			start => start
													--		);
													--	-- Clock process definitions
													--	clk_process: process
													--	begin
													--		clk <= '0';
													--		wait for clk_period/2;
													--		clk <= '1';
													--		wait for clk_period/2;
													--	end process;
	
													--	-- Stimulus process
													--	stim_proc: process
													--	begin
													--		reset<='1';
													--		start <= '0';
													--		switch <= "0000";
													--		-- hold reset state for 100ns.
													--		wait for 100ns;
													--		reset <= '0';
													--		wait for clk_period*10;
													--		start <= '1';
													--		wait for clk_period*10;
													--		switch <="0010";
													--		wait for clk_period*10;
													--		switch <= "0100";
													--		wait for clk_period*10;
													--		--insert stimulus here
													--		wait;
													--	end process;
--------------------------------------------------------------------------------


end Behavioral;

