
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity Control_Unit is
    Port ( Op : in  STD_LOGIC_VECTOR (5 downto 0);
           RegDst : out  STD_LOGIC;
           ALUSrc : out  STD_LOGIC;
           MemToReg : out  STD_LOGIC;
           RegWhite : out  STD_LOGIC;
           MemRead : out  STD_LOGIC;
           MemWrite : out  STD_LOGIC;
           Branch : out  STD_LOGIC;
           ALUOp : out  STD_LOGIC_VECTOR(1 downto 0) );
end Control_Unit;

architecture Behavioral of Control_Unit is

begin
process(Op)
begin
	
	if op = "000000"
		then 
			  RegDst <= '1';
           ALUSrc <= '0';
           MemToReg <= '0';
           RegWhite <= '1';
           MemRead <= '0';
           MemWrite <= '0';
           Branch <= '0';
			  ALUOp <= "10";
			  
	elsif op = "100011"
		then
			RegDst <= '0';
			ALUSrc <= '1';
			MemToReg <= '1';
			RegWhite <= '1';
			MemRead <= '1';
			MemWrite <= '0';
			Branch <= '0';
			ALUOp <= "00";
			
	elsif op = "101011"
		then
			RegDst <= '0';
			ALUSrc <= '1';
			MemToReg <= '0';
			RegWhite <= '0';
			MemRead <= '0';
			MemWrite <= '1';
			Branch <= '0';
			ALUOp <= "00";
			
	elsif op = "000100"
		then
			RegDst <= '0';
			ALUSrc <= '0';
			MemToReg <= '0';
			RegWhite <= '0';
			MemRead <= '0';
			MemWrite <= '0';
			Branch <= '1';
			ALUOp <= "01";
	end if;
	
end process;
end Behavioral;

