Library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;


entity contador is
  port(
  clk : in std_logic;
  reset : in std_logic;
  modo : in std_logic;
  vel : in std_logic;
  start : in std_logic;
  display : out std_logic_vector (6 downto 0);
  leds : out std_logic_vector (5 downto 0);
  led : out std_logic);
end contador;

architecture behavioral of contador is

  signal tmp1 : integer;
  signal tmp2 : integer;
  signal clk_1hz : std_logic;
  signal clk_05hz : std_logic;
  signal dec : integer;
--  signal para : std_logic;
  signal seg : integer;

  begin
    process(clk, reset)
    begin
      if rising_edge(clk) then
        if reset = '1' then
          tmp1 <= 0;
          tmp2 <= 0;
          leds <= "000000";
          display <= "0000000";
          clk_1hz <= '0';
          clk_05hz <='0';
          led <= '0';
          dec <= 0;
          para <= '0';
          seg <= 0;
        else
          if start = '1' then
            tmp1 <= tmp1 + 1;
            tmp2 <= tmp2 + 1;
            clk_1hz <= '0';
            clk_05hz <= '0';
            if tmp1 = 25000000 then
              clk_05hz <= '1';
              tmp1 <= 0;
            elsif tmp2 = 50000000 then
              clk_1hz <= '1';
              tmp2 <= 0;
            end if;
          end if;
        end if;
      end if;
    end process;

    process(clk)
    begin
      if para = '0' then
        if modo = '1' then
          if vel = '1' then
            if clk_1hz = '1' then
              seg <= seg + 1;
            end if;
          else
            if clk_05hz = '1' then
              seg <= seg + 1;
            end if;
          end if;
          if seg = 9 then
            if dec = 5 then
              led <= '1';
    --          para <= '1';
            else
            seg <= 0;
            dec <= dec + 1;
            end if;
          end if;
        else
          if vel = '1' then
            if clk_1hz = '1' then
              seg <= seg - 1;
            end if;
          else
            if clk_05hz = '1' then
              seg <= seg - 1;
            end if;
          end if;
          if seg = 0 then
            if dec = 0 then
              led <= '1';
      --        para <= '1';
            else
            seg <= 9;
            dec <= dec - 1;
            end if;
          end if;
        end if;
      end if;
    end process;

    with seg select
    display <= "1110111" when 0,
               "0100101" when 1,
               "1011101" when 2,
               "1101101" when 3,
               "0101110" when 4,
               "1101011" when 5,
               "1111011" when 6,
               "0101101" when 7,
               "1111111" when 8,
               "0101111" when 9
               "0000000" when others;
    with dec select
    leds <= "000001" when "000",
            "000011" when "001",
            "000111" when "010",
            "001111" when "011",
            "011111" when "100",
            "111111" when "101",
            "000000" when others;
