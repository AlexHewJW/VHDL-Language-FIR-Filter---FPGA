--
-- Mul.vhd
--

library ieee; 
use ieee.std_logic_1164.all; 
use ieee.numeric_std.all;

entity Mul is 
	port(
		Reset, Clock, InEnable: in std_logic; 
		Xin, Yin: in std_logic_vector(63 downto 0);
		Rout: out std_logic_vector(63 downto 0);		
		OutValid: out std_logic
  );
end Mul; 

architecture Mul_arch of Mul is

-- High speed, max usage(17 x DSP48A), max latency(26 clock cycles) 
COMPONENT mul_double
  PORT (
    a : IN STD_LOGIC_VECTOR(63 DOWNTO 0);
    b : IN STD_LOGIC_VECTOR(63 DOWNTO 0);
    clk : IN STD_LOGIC;
    result : OUT STD_LOGIC_VECTOR(63 DOWNTO 0)
  );
END COMPONENT;

signal iInEnable1, iInEnable2, iInEnable3, iInEnable4, iInEnable5, iInEnable6, iInEnable7, iInEnable8, iInEnable9, iInEnable10: std_logic;
signal iInEnable11, iInEnable12, iInEnable13, iInEnable14, iInEnable15, iInEnable16, iInEnable17, iInEnable18, iInEnable19, iInEnable20: std_logic;
signal iInEnable21, iInEnable22, iInEnable23, iInEnable24, iInEnable25: std_logic;

begin	

	U1: mul_double 
		PORT MAP (
			a => Xin,
			b => Yin,
			clk => Clock,
			result => Rout
		);
				
	process (Clock)
	begin
		if rising_edge(Clock) then	
			if Reset = '1' then
				iInEnable1  	<= '0';
				iInEnable2  	<= '0';
				iInEnable3  	<= '0';
				iInEnable4  	<= '0';
				iInEnable5  	<= '0';
				iInEnable6  	<= '0';
				iInEnable7  	<= '0';
				iInEnable8  	<= '0';
				iInEnable9  	<= '0';
				iInEnable10  	<= '0';
				iInEnable11  	<= '0';
				iInEnable12  	<= '0';
				iInEnable13  	<= '0';
				iInEnable14  	<= '0';
				iInEnable15  	<= '0';
				iInEnable16  	<= '0';
				iInEnable17  	<= '0';
				iInEnable18  	<= '0';
				iInEnable19  	<= '0';
				iInEnable20  	<= '0';
				iInEnable21  	<= '0';
				iInEnable22  	<= '0';
				iInEnable23  	<= '0';
				iInEnable24  	<= '0';
				iInEnable25  	<= '0';
				OutValid		<= '0';		
			else
				iInEnable1  	<= InEnable;
				iInEnable2  	<= iInEnable1;
				iInEnable3  	<= iInEnable2;
				iInEnable4  	<= iInEnable3;
				iInEnable5  	<= iInEnable4;
				iInEnable6  	<= iInEnable5;
				iInEnable7  	<= iInEnable6;
				iInEnable8  	<= iInEnable7;
				iInEnable9  	<= iInEnable8;
				iInEnable10  	<= iInEnable9;
				iInEnable11  	<= iInEnable10;
				iInEnable12  	<= iInEnable11;
				iInEnable13  	<= iInEnable12;
				iInEnable14  	<= iInEnable13;
				iInEnable15  	<= iInEnable14;
				iInEnable16  	<= iInEnable15;
				iInEnable17  	<= iInEnable16;
				iInEnable18  	<= iInEnable17;
				iInEnable19  	<= iInEnable18;
				iInEnable20  	<= iInEnable19;
				iInEnable21  	<= iInEnable20;
				iInEnable22  	<= iInEnable21;
				iInEnable23  	<= iInEnable22;
				iInEnable24  	<= iInEnable23;
				iInEnable25  	<= iInEnable24;
				OutValid		<= iInEnable25;
			end if;
		end if;
	end process;			

end Mul_arch;