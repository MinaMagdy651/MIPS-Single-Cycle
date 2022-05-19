library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity PC is
    Port ( Input : in  STD_LOGIC_VECTOR (31 downto 0);
           Output : out  STD_LOGIC_VECTOR (31 downto 0);
			  firstTime :  STD_LOGIC;
           CLK : STD_LOGIC);
end PC;

architecture Behavioral of PC is

begin

process(CLK, Input)
begin
	if firstTime = '0'
		then 
			Output <= X"00000000";
		
	elsif rising_edge(CLK)
		then Output <= Input;
	end if;
	
end process;
end Behavioral;

