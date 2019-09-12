----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    10:49:11 12/12/2018 
-- Design Name: 
-- Module Name:    vending - Behavioral 
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity vending is
    Port ( moneda_5 : in  STD_LOGIC;
           moneda_10 : in  STD_LOGIC;
           moneda_20 : in  STD_LOGIC;
           clk : in  STD_LOGIC;
           rst : in  STD_LOGIC;
           agua : out  STD_LOGIC;
           sal_5 : out  STD_LOGIC;
           sal_10 : out  STD_LOGIC);
end vending;

architecture Behavioral of vending is

   type estado is (idle,cts5,cts10,cts15,cts20,cts25,cts30,cts35,cts40); 
   signal state, next_state : estado;

	attribute FSM_ENCODING : string;
	attribute FSM_ENCODING of state: signal is "COMPACT";--"ONE-HOT"; --"SEQUENTIAL"; "JOHNSON" "GRAY";
 
begin

   SYNC_PROC: process (clk)
   begin
      if (clk'event and clk = '1') then
         if (rst = '1') then
            state <= idle;
         else
            state <= next_state;
         end if;        
      end if;
   end process;
	
 NEXT_STATE_DECODE: process (state, moneda_5, moneda_10,moneda_20)
   begin    
   next_state <= state;     
      case state is
			when idle =>
				if moneda_5 ='1' then
					next_state <= cts5;
				elsif moneda_10 = '1' then
					next_state <= cts10;
				elsif moneda_20 = '1' then
					next_state <= cts20;
				end if;
			when cts5 =>
				if moneda_5 ='1' then
					next_state <= cts10;
				elsif moneda_10 = '1' then
					next_state <= cts15;
				elsif moneda_20 = '1' then
					next_state <= cts25;
				end if;
			when cts10 =>
				if moneda_5 ='1' then
					next_state <= cts15;
				elsif moneda_10 = '1' then
					next_state <= cts20;
				elsif moneda_20 = '1' then
					next_state <= cts30;
				end if;
			when cts15 =>
				if moneda_5 ='1' then
					next_state <= cts20;
				elsif moneda_10 = '1' then
					next_state <= cts25;
				elsif moneda_20 = '1' then
					next_state <= cts35;
				end if;	
			when cts20 =>
				if moneda_5 ='1' then
					next_state <= cts25;
				elsif moneda_10 = '1' then
					next_state <= cts35;
				elsif moneda_20 = '1' then
					next_state <= cts40;
				end if;
			when cts25 =>
					next_state <= idle;
			when cts30 =>
					next_state <= idle;		
			when cts35 =>
					next_state <= idle;	
			when cts40 =>
					next_state <= idle;			
			when others =>
					next_state <= idle;
		end case;			
   end process;
  OUTPUT_DECODE: process (state)
   begin
		--agua <= '0';
		--sal_5 <='0';
		--sal_10 <= '0';
    --MOORE State-Machine - Outputs based on state only 	
		case state is
			when idle | cts5 | cts10 | cts15 | cts20 =>
				agua <= '0';
				sal_5 <='0';
				sal_10 <= '0';
			when cts25 =>
				agua <= '1';
				sal_5 <='0';
				sal_10 <= '0';
			when cts30 =>
				agua <= '1';
				sal_5 <='1';
				sal_10 <= '0';	
			when cts35 =>
				agua <= '1';
				sal_5 <='0';
				sal_10 <= '1';	
			when cts40 =>
				agua <= '1';
				sal_5 <='1';
				sal_10 <= '1';		
			when others =>
				agua <= '0';
				sal_5 <='0';
				sal_10 <= '0';
		end case;
   end process;

				

end Behavioral;

