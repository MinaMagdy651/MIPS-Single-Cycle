
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;



entity MUX_2_1_5Bits is
    Port ( I0 : in  STD_LOGIC_VECTOR (4 downto 0);
           I1 : in  STD_LOGIC_VECTOR (4 downto 0);
           S : in  STD_LOGIC;
           O : out  STD_LOGIC_VECTOR (4 downto 0));
end MUX_2_1_5Bits;

architecture Behavioral of MUX_2_1_5Bits is

begin
	process(I0, I1, S)
	begin
		if S = '0'
			then O <= I0;
		else
			O <= I1;
		end if;
	end process;

end Behavioral;

