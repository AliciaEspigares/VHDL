----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    11:22:21 12/12/2018 
-- Design Name: 
-- Module Name:    secuencia - Behavioral 
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

entity secuencia is
    Port ( dato_in : in  STD_LOGIC;
           dato_val : in  STD_LOGIC;
           clk : in  STD_LOGIC;
           reset : in  STD_LOGIC;
           N_sec_recv : out  STD_LOGIC_VECTOR (7 downto 0);
           N_sec_error : out  STD_LOGIC_VECTOR (5 downto 0);
           full : out  STD_LOGIC;
           bloq : out  STD_LOGIC);
end secuencia;

architecture Behavioral of secuencia is
	type estado is (idle,s1,s2,s3,s4,s5,s6,s7,s8,error); 
   signal state, next_state : estado;
	signal inc_val, inc_error,sfull,sbloq : std_logic;
	signal sec_val : std_logic_vector(7 downto 0);
	signal sec_error : std_logic_vector(5 downto 0);
	
	--attribute FSM_ENCODING : string;
	--attribute FSM_ENCODING of state: signal is "COMPACT";--"ONE-HOT"; --"SEQUENTIAL"; "JOHNSON" "GRAY";
begin
	full <= sfull; bloq <= sbloq;
	sfull <= '1' when sec_val=255 else '0';
	sbloq <= '1' when sec_error > 16 else '0';
	
	SYNC_PROC: process (clk)
   begin
      if (clk'event and clk = '1') then
         if (reset = '1') then
            state <= idle;
				sec_val <= (others=>'0');
				sec_error <= (others=>'0');		
         else
            state <= next_state;
				if inc_val ='1' then
					sec_val <= sec_val + 1;
				end if;
				if inc_error = '1' then
					sec_error <= sec_error + 1;
				end if;
         end if;        
      end if;
   end process;
	N_sec_recv <= sec_val;
	N_sec_error <= sec_error;
	NEXT_STATE_DECODE: process (state, dato_in,dato_val,sbloq)
   begin    
   next_state <= state; 
		if sbloq ='0' then
      case state is
			when idle =>
				if dato_val='1' then
					next_state <= s1;
				else
					next_state <= idle;
				end if;
			when s1 =>
				if dato_in='1' then
					next_state <= s2;
				else
					next_state <= error;
				end if;
			when s2  =>
				if dato_in='0' then
					next_state <= s3;
				else
					next_state <= error;
				end if;
			when s3 =>
				if dato_in='0' then
					next_state <= s4;
				else
					next_state <= error;
				end if;
			when s4 =>
				if dato_in='1' then
					next_state <= s5;
				else
					next_state <= error;
				end if;
			when s5 =>
				if dato_in='1' then
					next_state <= s6;
				else
					next_state <= error;
				end if;
			when s6 =>
				if dato_in='0' then
					next_state <= s7;
				else
					next_state <= error;
				end if;
			when s7 =>
				if dato_in='0' then
					next_state <= s8;
				else
					next_state <= error;
				end if;
			when s8 =>
				if dato_in='1' then
					next_state <= idle;
				else
					next_state <= error;
				end if;
			when error =>
					next_state <= idle;
			when others =>
					next_state <= idle;
		end case;
		end if;
   end process;
	OUTPUT_DECODE: process (state)
   begin
		case state is
			when idle | s1 | s2 | s3 | s4 | s5 | s6 | s7 =>
				inc_val <= '0';
				inc_error <= '0';
			when  s8 =>
				inc_val <= '1';
				inc_error <= '0';
			when error =>
				inc_val <= '0';
				inc_error <= '1';
			when others => 
				inc_val <= '0';
				inc_error <= '0';
		end case;
   end process;

end Behavioral;

