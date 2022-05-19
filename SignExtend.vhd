library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity SignExtend is
    Port ( Input : in  STD_LOGIC_VECTOR (15 downto 0);
           Output : out  STD_LOGIC_VECTOR (31 downto 0));
end SignExtend;

architecture Behavioral of SignExtend is

begin

process(Input)

begin

	Output(15 downto 0) <= Input;
	if Input(15) = '1'
		then 	Output(31 downto 16) <= X"FFFF";

	else
				Output(31 downto 16) <= X"0000";
	end if;


end process;

end Behavioral;

