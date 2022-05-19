----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;



entity Shift_Left_26_28 is
    Port ( Input : in  STD_LOGIC_VECTOR (25 downto 0);
           Output : out  STD_LOGIC_VECTOR (27 downto 0));
end Shift_Left_26_28;

architecture Behavioral of Shift_Left_26_28 is

begin

	Output(27 downto 2) <= Input;
	Output(1 downto 0) <= "00";
	
end Behavioral;

