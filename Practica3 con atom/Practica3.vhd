library IEEE;
use IEEE.STD_LOGIC_1194.ALL;
use IEEE.std_logic_unsigned.ALL;
use IEEE.std_logic_arith.all; --¿Es necesario esta libreria?



entity practica_3 is
  Port   (
          clk : in STD_LOGIC;
          reset : in STD_LOGIC;
          columnas : in STD_LOGIC_VECTOR (3 downto 0);
          sel_display : in STD_LOGIC_VECTOR (1 downto 0);
          AN : out std_logic_vector (3 downto 0);
          display : out std_logic_vector (6 downto 0);
          hab.display : in std_logic;
          filas : out std_logic_vector (3 downto 0);
          dato_valido : out std_logic
          );
end practica_3;

architecture Behavioral of practica_3 is

signal cambia : std_logic_vector (1 downto 0);
signal tmp : std_logic_vector (26 downto 0);
signal c_filas : std_logic_vector (1 downto 0); --Salida del codificador de filas
signal c_columnas : std_logic_vector (1 downto 0); --Salida del codificador de filas
signal filas_columnas :  std_logic_vector (3 downto 0);
signal cuenta : std_logic;
signal sim_nand : std_logic;
signal lectura_filas : std_logic_vector(3 downto 0);

begin

--x------DIVISOR DE FRECUENCIA---------
PROCESS(clk) --¿Con el clk sobra o hay que ponerle (clk, tmp, cuenta, reset)?
begin
  if clk='1' and clk'event then --Cuando no me especifica si es sincrono o asincrono, lo hago sincrono?
    if reset='1' then
      tmp <= (others => '0');
      cuenta <= '0';
    else
      tmp = tmp + 1;
      cuenta <= '0';
      if tmp = 4999999 then --¿Es correcto el numero?
         cuenta <= '1';
         tmp <= (others => '0');
      end if;
    end if;
  end if;
end PROCESS;

--x-------NAND-----------
sim_nand <= nor(columnas(0) and columnas(1) and columnas(2) and columnas(3));

--x------CODIFICADOR DE ANILLO---------
PROCESS(clk)
begin
  if clk='1' and clk'event then
    if reset='1' then
      cambia <= (others => '0'); --¿Pone todo a "00" o mejor ponerlo yo a mano? -> cambia <= "00".
    elsif nor(sim_nand) = '1' then --Se puede poner ( if nor(sim_nand) and cuenta = '1' then) para hacerlo más simple.
      if cuenta = '1' then
        if cambia = 3 then --Cambia no puede ser mayor que 3 ya que son 2 bits. Cuando llega a 3 y le sumas uno debería de volver a ser 0 automaticamente. Por tanto, esto es innecesario.
          cambia <= 0;
        else
          cambia <= cambia + 1;
        end if;
      end if;
    end if;
  end if;
end PROCESS;


WITH cambia select
lectura_filas <= "0111" when "00",
                 "1011" when "01",
                 "1101" when "10",
                 "1110" when "11",
                 "1111" when others;

--x--------VALIDACIÓN DEL DATO------------
process(clk)
begin
  if clk='1' and clk'event
    if sim_nand = '1' then
      dato_valido <= '1'; -- Si se pulsa una tecla, se enciende un led
      filas_columnas <= c_filas & c_columnas; --Solo cambia el dato del display si pulsas una tecla
    else
      dato_valido <='0';
    end if;
  end if;
end process;
--X--------CODIFICADOR DE FILAS------------
filas <= lectura_filas;
with lectura_filas select
c_filas <= "00" when "0111",
           "01" when "1011",
           "10" when "1101",
           "11" when "1110",
           "11" when others; --When others, sale # en el display
 --X--------CODIFICADOR DE FILAS------------
with columnas select
c_columnas <= "00" when "0111",
              "01" when "1011",
              "10" when "1101",
              "11" when "1110",
              "00" when others; --When others, sale # en el display

--x---------SELECTOR DISPLAY--------------
with sel_display select
AN <= "0001" with "00",
               "0010" when "01",
               "0100" when "10",
               "1000" when "11",
               "0000" when others;

--X--------SALIDA DISPLAY----------------
with filas_columnas select
diplay <= "1001111" when "0000", --1
          "0010010" when "0001", --2
          "0000110" when "0010", --3
          "0001000" when "0011", --A
          "1001100" when "0100", --4
          "0100100" when "0101", --5
          "0100000" when "0110", --6
          "1100000" when "0111", --B
          "0001111" when "1000", --7
          "0000000" when "1001", --8
          "0000100" when "1010", --9
          "0110001" when "1011", --C
          "0110000" when "1100", --#
          "0000001" when "1101", --0
          "0111000" when "1110", --.
          "1000010" when "1111", --D
          "1111111" when others;

end Behavioral;
