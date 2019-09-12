
-- VHDL Instantiation Created from source file Parte3.vhd -- 14:30:51 08/16/2019
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT Parte3
	PORT(
		selector_IN : IN std_logic_vector(1 downto 0);
		clk : IN std_logic;
		reset : IN std_logic;
		up_down : IN std_logic;          
		display : OUT std_logic_vector(6 downto 0);
		selector_OUT : OUT std_logic_vector(3 downto 0)
		);
	END COMPONENT;

	Inst_Parte3: Parte3 PORT MAP(
		display => ,
		selector_IN => ,
		selector_OUT => ,
		clk => ,
		reset => ,
		up_down => 
	);


