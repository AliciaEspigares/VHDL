----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    08:38:50 12/17/2018 
-- Design Name: 
-- Module Name:    garaje - Behavioral 
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
use ieee.std_logic_unsigned.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity garaje is
    Port ( a : in  STD_LOGIC;
           b : in  STD_LOGIC;
           clk : in  STD_LOGIC;
           rst : in  STD_LOGIC;
           full : out  STD_LOGIC;
           n_coches : out  STD_LOGIC_VECTOR (7 downto 0));
end garaje;

architecture Behavioral of garaje is

-- This is a sample state-machine using enumerated types.
-- This will allow the synthesis tool to select the appropriate
-- encoding style and will make the code more readable.
 
--Insert the following in the architecture before the begin keyword
   --Use descriptive names for the states, like st1_reset, st2_search
   type state_type is (idle,ent_1,ent_2,ent_3,sal_1,sal_2,sal_3); 
   signal state, next_state : state_type; 
   --Declare internal signals for all outputs of the state-machine
   signal entrada : std_logic_vector(1 downto 0);  -- example output signal
	signal inc_coche,dec_coche : std_logic;
	signal cuenta : std_logic_Vector(7 downto 0);

   --other outputs
 begin
	entrada <= a & b;
   NEXT_STATE_DECODE: process (state, entrada)
   begin
      --declare default state for next_state to avoid latches
      next_state <= state;  --default is to stay in current state
      --insert statements to decode next_state
      --below is a simple example
		inc_Coche <= '0';
		dec_Coche <= '0';
      case (state) is
         when idle =>
            if entrada = "10" then
               next_state <= ent_1;
				elsif entrada = "01" then
					next_state <= sal_1;
            end if;
         when ent_1 =>
            if entrada = "11" then
               next_state <= ent_2;
				elsif entrada = "01" then
					next_state <= idle; -- peaton
            end if;
         when ent_2 =>
             if entrada = "01" then
               next_state <= ent_3;
            end if;
			when ent_3 =>
             if entrada = "00" then
               next_state <= idle;
					inc_coche <= '1';
            end if;
			when sal_1 =>
            if entrada = "11" then
               next_state <= sal_2;
				elsif entrada = "10" then
					next_state <= idle; -- peaton
            end if;
         when sal_2 =>
             if entrada = "10" then
               next_state <= sal_3;
            end if;
			when sal_3 =>
             if entrada = "00" then
               next_state <= idle;
					dec_Coche <= '1';
            end if;
         when others =>           
               next_state <= idle;
      end case;      
   end process;
	
--Insert the following in the architecture after the begin keyword
   SYNC_PROC: process (clk)	
   begin
      if (clk'event and clk = '1') then
         if (rst = '1') then
            state <= idle;
				cuenta <= (others=>'0');
         else
            state <= next_state;
				if inc_coche ='1' then
					if cuenta = 255 then
						cuenta <= (others=>'1');
					else
						cuenta <= cuenta + 1;
					end if;
				elsif dec_coche ='1' then
					if cuenta = 0 then
						cuenta <= (others=>'0');
					else
						cuenta <= cuenta - 1;
					end if;
				end if;	
         -- assign other outputs to internal signals
         end if;        
      end if;
   end process;
	full <= '1' when cuenta = 255 else '0'; 
	n_coches <= cuenta;
	
end Behavioral;

