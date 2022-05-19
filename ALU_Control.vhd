library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_arith.ALL;
use IEEE.STD_LOGIC_unsigned.ALL;

entity ALU_Control is
    Port ( ALUOP : in  STD_LOGIC_VECTOR (1 downto 0);
           F : in  STD_LOGIC_VECTOR (5 downto 0);
           Operation : out  STD_LOGIC_VECTOR (3 downto 0));
end ALU_Control;

architecture Behavioral of ALU_Control is

begin

process(ALUOP, F)
begin

	if ALUOP = "00"
		then Operation <= "0010";
	
	elsif ALUOP = "01"
		then Operation <= "0110";
		
	end if;
	
	if ALUOP = "10" AND F(3 downto 0) = "0000"
		then Operation <= "0010";
	end if;
	
	if ALUOP(1) = '1' AND F(3 downto 0) = "0010"
		then Operation <= "0110";
	end if;
	
	if ALUOP(1) = '1' AND F(3 downto 0) = "1010"
		then Operation <= "0111";
	end if;
	
	if ALUOP = "10" AND F(3 downto 0) = "0100"
		then Operation <= "0000";
	end if;
	
	if ALUOP = "10" AND F(3 downto 0) = "0101"
		then Operation <= "0001";
	end if;
		
end process;

end Behavioral;

