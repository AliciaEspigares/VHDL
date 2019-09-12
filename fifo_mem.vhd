----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    10:31:51 11/07/2018 
-- Design Name: 
-- Module Name:    fifo_mem - Behavioral 
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
use IEEE.math_real.all;
use IEEE.math_real."ceil";
use IEEE.math_real."log2";

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity fifo_mem is
generic (depth : integer:= 16;
			size : integer range 3 to 63:=15);
port (    clk : in std_logic;
          sinit : in std_logic;
          rw : in std_logic;   
          data_in : in std_logic_vector (size downto 0);     --input data
          data_out : out std_logic_vector(size downto 0);    --output data
			 data_count : out integer;-- std_logic_vector((integer(ceil(log2(real(depth))))) downto 0);
          fifo_empty : out std_logic;   
          fifo_full : out std_logic     
         );
end fifo_mem;

architecture Behavioral of fifo_mem is
type t_memoria is array (0 to depth-1) of std_logic_vector(size downto 0);
signal memoria : t_memoria;
signal readptr,writeptr : integer ; --std_logic_vector((integer(ceil(log2(real(depth)))))-1 downto 0); 
signal empty,full : std_logic;
signal num_elem : integer ; --std_logic_vector((integer(ceil(log2(real(depth))))) downto 0);  

begin

fifo_empty <= empty;
fifo_full <= full;
data_count <= num_elem;

process(Clk,sinit)
begin

if(rising_edge(Clk)) then
	if(sinit = '1') then
		data_out <= (others => '0');
		empty <= '0';
		full <= '0';
		readptr <= 0;--(others=>'0');
		writeptr <=0;-- (others=>'0');
		num_elem <=0; --(others=>'0');
	 else
		 if(rw = '1' and empty = '0') then  --read
			  data_out <= memoria(readptr);--memoria(conv_integer(readptr));
			  readptr <= readptr + 1;      
			  num_elem <= num_elem-1;
		 elsif (rw ='0' and full = '0') then    --write
			  memoria(writeptr) <= data_in; --(conv_integer(writeptr))
			  writeptr <= writeptr + 1;  
			  num_elem <= num_elem+1;
		 end if;
		 if(readptr = depth-1) then      --Si la fifo no es **2
			  readptr <= 0;--(others=>'0');
		 end if;
		 if(writeptr = depth-1) then        --Si la fifo no es **2
			  writeptr <= 0;--(others=>'0');
		 end if; 
		 if(num_elem = 0) then
			  empty <= '1';
		 else
			  empty <= '0';
		 end if;
		 if(num_elem = depth) then
			  full <= '1';
		 else
			  full <= '0';
		 end if;
	end if;
end if; 
end process;


end Behavioral;

