library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_arith.ALL;
use IEEE.STD_LOGIC_unsigned.ALL;

entity ALU is
    Port ( A : in  STD_LOGIC_VECTOR (31 downto 0);
           B : in  STD_LOGIC_VECTOR (31 downto 0);
           ALUop : in  STD_LOGIC_VECTOR (3 downto 0);
           Res : out  STD_LOGIC_VECTOR (31 downto 0);
           Zero : out  STD_LOGIC);
end ALU;

architecture Behavioral of ALU is

begin

process(A, B, ALUop)

begin

	if A = B
		then Zero <= '1';
	else
		Zero <= '0';
	end if;
	
	if ALUop = "0000"
		then Res <= A AND B;
	
	elsif AlUop = "0001"
		then Res <= A OR B;
	
	elsif ALUop = "0111"
		then 
			if A < B
				then Res <= X"00000001";
			else
				Res <= X"00000000";
			end if;
		
	elsif ALUop = "0010"
		then Res <= A + B;
		
	elsif ALUop = "0110"
		then RES <= A - B;
	
	elsif ALUop = "1100"
		then RES <= A NOR B;
	
	end if;

end process;

end Behavioral;

