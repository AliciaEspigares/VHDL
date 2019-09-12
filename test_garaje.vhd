--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   09:28:32 12/17/2018
-- Design Name:   
-- Module Name:   D:/codigos_vhdl/codigos/test_garaje.vhd
-- Project Name:  simul
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: garaje
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY test_garaje IS
END test_garaje;
 
ARCHITECTURE behavior OF test_garaje IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT garaje
    PORT(
         a : IN  std_logic;
         b : IN  std_logic;
         clk : IN  std_logic;
         rst : IN  std_logic;
         full : OUT  std_logic;
         n_coches : OUT  std_logic_vector(7 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal a : std_logic := '0';
   signal b : std_logic := '0';
   signal clk : std_logic := '0';
   signal rst : std_logic := '0';

 	--Outputs
   signal full : std_logic;
   signal n_coches : std_logic_vector(7 downto 0);

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: garaje PORT MAP (
          a => a,
          b => b,
          clk => clk,
          rst => rst,
          full => full,
          n_coches => n_coches
        );

   -- Clock process definitions
   clk_process :process
   begin
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
		rst <='1' ;
      -- hold reset state for 100 ns.
      wait for 100 ns;
		rst <='0';
      wait for clk_period*100;
		for i in 0 to 7 loop
			a<= '1'; b<= '0';
			wait for 100 ns;
			a<= '1'; b<= '1';
			wait for 100 ns;
			a<= '0'; b<= '1';
			wait for 100 ns;
			a<= '0'; b<= '0';
			wait for 100 ns;
		end loop;
		wait for clk_period*100;
		for i in 0 to 1 loop
			a<= '1'; b<= '0';
			wait for 100 ns;
			a<= '0'; b<= '1';
			wait for 100 ns;
			a<= '0'; b<= '0';
			wait for 100 ns;
		report "paso persona";
		end loop;
      -- insert stimulus here 
		for i in 0 to 2 loop
			a<= '0'; b<= '1';
			wait for 100 ns;
			a<= '1'; b<= '1';
			wait for 100 ns;
			a<= '1'; b<= '0';
			wait for 100 ns;
			a<= '0'; b<= '0';
			wait for 100 ns;
		end loop;
      wait;
   end process;

END;
