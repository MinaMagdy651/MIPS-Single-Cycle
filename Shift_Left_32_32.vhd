
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;



entity Shift_Left_32_32 is
    Port ( Input : in  STD_LOGIC_VECTOR (31 downto 0);
           Output : out  STD_LOGIC_VECTOR (31 downto 0));
end Shift_Left_32_32;

architecture Behavioral of Shift_Left_32_32 is

begin

	Output(31 downto 2) <= Input(29 downto 0);
	Output(1 downto 0) <= "00";
end Behavioral;

