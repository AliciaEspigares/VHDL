--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   13:47:32 09/05/2019
-- Design Name:   
-- Module Name:   H:/Users/Alicia Espigares/Creciendo como ingeniera/Programming programes/VHDL/Ejercicios Clase/Practica4_testbench/TestBench.vhd
-- Project Name:  Practica4_testbench
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Codigo
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
 
ENTITY TestBench IS
END TestBench;
 
ARCHITECTURE behavior OF TestBench IS 
 
    -- Component Declaration for the Unit Under Test (UUT)a
 
    COMPONENT Codigo
    PORT(
         sel_color : IN  std_logic_vector(5 downto 0);
         reset : IN  std_logic;
         clk : IN  std_logic;
         VgaHSync : OUT  std_logic;
         VgaVSync : OUT  std_logic;
         Active_video : OUT  std_logic_vector(2 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal sel_color : std_logic_vector(5 downto 0) := (others => '0');
   signal reset : std_logic := '0';
   signal clk : std_logic := '0';

 	--Outputs
   signal VgaHSync : std_logic;
   signal VgaVSync : std_logic;
   signal Active_video : std_logic_vector(2 downto 0);

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Codigo PORT MAP (
          sel_color => sel_color,
          reset => reset,
          clk => clk,
          VgaHSync => VgaHSync,
          VgaVSync => VgaVSync,
          Active_video => Active_video
        );

   -- Clock process definitions
  -- clk_process :process
  -- begin
	--	clk <= '0';
		--wait for clk_period/2;
		--clk <= '1';
		--wait for clk_period/2;
 --  end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
     --wait for 100 ns;	
		clk <= '1';
      wait for clk_period*10;

      -- insert stimulus here 

      wait;
   end process;

END;
