library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity Reg_Files is
    Port ( RegWrite : in  STD_LOGIC;
           Read_Reg_1 : in  STD_LOGIC_VECTOR (4 downto 0);
           Read_Reg_2 : in  STD_LOGIC_VECTOR (4 downto 0);
           Write_Reg : in  STD_LOGIC_VECTOR (4 downto 0);
           Write_data : in  STD_LOGIC_VECTOR (31 downto 0);
           Read_Data_1 : out  STD_LOGIC_VECTOR (31 downto 0);
           Read_Data_2 : out  STD_LOGIC_VECTOR (31 downto 0);
			  CLK : STD_LOGIC);
end Reg_Files;

architecture Behavioral of Reg_Files is

type RegFileType is array (0 to 31) of STD_LOGIC_VECTOR (31 downto 0);

signal array_reg : RegFileType := ( X"00000000", X"00000000", X"00000000", X"00000000", 
												X"00000005", X"00000007", X"00000000", X"00000000",
												X"00000000", X"00000000", X"00000000", X"00000000", 
												X"00000000", X"00000000", X"00000000", X"00000000",
												X"00000000", X"00000000", X"00000000", X"00000000", 
												X"00000000", X"00000000", X"00000000", X"00000000",
												X"00000000", X"00000000", X"00000000", X"00000000",
												X"00000000", X"00000000", X"00000000", X"00000000");
begin

	Read_Data_1 <= array_reg(to_integer(unsigned(Read_Reg_1)));
	
	Read_Data_2 <= array_reg(to_integer(unsigned(Read_Reg_2)));
	
	process(RegWrite, CLK)
		begin
			if RegWrite = '1' AND rising_edge(CLK)
				then
					array_reg(to_integer(unsigned(Write_Reg))) <= Write_Data;
			end if;
	end process;
end Behavioral;

