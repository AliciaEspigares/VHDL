library IEEE;
use ieee.std_logic_1164.all;
use ieee.NUMERIC_STD.ALL

entity fifo is
port(
    CLK : in std_logic;
    RESET : in std_logic;
    DIN : in std_logic(15 downto 0);
    WR_EN : in std_logic;
    RD_EN : in std_logic;
    DOUT : out std_logic (15 downto 0);
    FULL : out std_logic;
    EMPTY : out std_logic);


end fifo;

architecture behavioral of fifo is
type memoria is array (o to 255) of std_logic_vector (15 downto 0);
signal mem_int : memoria;
signal countR, countW : integer;

  begin

    process(clk)
    begin
      if clk = '1' and clk'event then
        if reset = '1' then
          countW <= 0;
          countR <= 0;

        else
          if WR_EN = '1' and RD_EN = '0' then
            mem_int(countW) <= DIN;
            if countW < 255 then
              countW <= countW + 1;
            else
              countW <= 0;
            end if;
          end if;
          if RD_EN = '1' and WR_EN = '0' then
            DOUT <= Mem_int(countR);
            if countR < 255 then
              countR <= countR + 1;
            else
              countR <= 0;.
            end if;
          end if;
        end if;
      end if;
    end process;


  process
  begin
    if countW = 0 then
      EMPTY <= '1';
      FULL <= '0';
    elsif countW < 255 then
      EMPTY <= '0';
      FULL <= '0';
    else
      EMPTY <= '0';
      FULL <= '1';
    end if;
  end process;
