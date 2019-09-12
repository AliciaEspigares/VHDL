--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   11:42:14 11/07/2018
-- Design Name:   
-- Module Name:   D:/codigos/test_cont_ex.vhd
-- Project Name:  simul
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: contador_examen
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
 
ENTITY test_cont_ex IS
END test_cont_ex;
 
ARCHITECTURE behavior OF test_cont_ex IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT contador_examen
    PORT(
         clk : IN  std_logic;
         clear : IN  std_logic;
         carga : IN  std_logic;
         data_in : IN  std_logic;
			dato_valido : out std_logic;
         salida : OUT  std_logic_vector(15 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal clear : std_logic := '0';
   signal carga : std_logic := '0';
   signal data_in : std_logic := '0';

 	--Outputs
   signal salida : std_logic_vector(15 downto 0);
	signal dato_valido : std_logic;

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: contador_examen PORT MAP (
          clk => clk,
          clear => clear,
          carga => carga,
          data_in => data_in,
			 dato_valido => dato_valido,
          salida => salida
        );

   -- Clock process definitions
   clk_process :process
   begin
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
   end process;
	
 data_in <= not data_in after clk_period;
  
  -- Stimulus process
   stim_proc: process
   begin		
		clear <= '1';
      -- hold reset state for 100 ns.
      wait for 100 ns;	
		clear <= '0';
      wait for clk_period*10;
		carga <= '1' ;
		wait for clk_period*5;
		carga <= '0' ;
		wait for clk_period*20;
		carga <= '1' ;
		wait for clk_period*5;
		carga <= '0' ;
		wait for clk_period*20;
      wait;
   end process;

END;
