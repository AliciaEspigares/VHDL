--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   17:48:08 10/18/2018
-- Design Name:   
-- Module Name:   D:/codigos/test_cont.vhd
-- Project Name:  simul
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: contador
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
 
ENTITY test_cont IS
END test_cont;
 
ARCHITECTURE behavior OF test_cont IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT contador
    PORT(
         clk : IN  std_logic;
         carga : IN  std_logic;
         entrada : IN  std_logic_vector(7 downto 0);
         reset : IN  std_logic;
         hab : IN  std_logic;
         updown : IN  std_logic;
         cuenta : OUT  std_logic_vector(7 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal carga : std_logic := '0';
   signal entrada : std_logic_vector(7 downto 0) := (others => '0');
   signal reset : std_logic := '0';
   signal hab : std_logic := '0';
   signal updown : std_logic := '0';

 	--Outputs
   signal cuenta : std_logic_vector(7 downto 0);

   -- Clock period definitions
   constant clk_period : time := 20 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: contador PORT MAP (
          clk => clk,
          carga => carga,
          entrada => entrada,
          reset => reset,
          hab => hab,
          updown => updown,
          cuenta => cuenta
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
		reset<='1';
      -- hold reset state for 100 ns.
      wait for 100 ns;	
		reset <='0';
		hab<='1';
		updown <='1';
      wait for clk_period*20;
		hab <='0';
      wait for clk_period*5;
		hab<='1';
		wait for clk_period*80;
		updown <= '0';
		wait for clk_period*5;
		carga <= '1';
		entrada <=X"AA";
		wait for clk_period*3;
		carga <='0';
		
		
      -- insert stimulus here 

      wait;
   end process;

END;
