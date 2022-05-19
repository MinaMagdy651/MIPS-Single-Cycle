library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity Data_Memory is
    Port ( Address : in  STD_LOGIC_VECTOR (31 downto 0);
           Write_Data : in  STD_LOGIC_VECTOR (31 downto 0);
           MemWrite : in  STD_LOGIC;
           MemRead : in  STD_LOGIC;
           Read_Data : out  STD_LOGIC_VECTOR (31 downto 0);
			  CLK : STD_LOGIC);
end Data_Memory;

	architecture Behavioral of Data_Memory is

type DataMemoryType is array (0 to 35) of STD_LOGIC_VECTOR (7 downto 0);

signal array_Memory : DataMemoryType := ( X"AB", X"CD", X"EF", X"00", 
														X"75", X"74", X"65", X"72", 
														X"20", X"41", X"72", X"63", 
														X"68", X"69", X"74", X"65", 
														X"12", X"34", X"56", X"78",
														X"7F", X"7F", X"7D", X"7D", 
														X"00", X"00", X"00", X"00", 
														X"78", X"78", X"6A", X"6A", 
														X"00", X"00", X"00", X"01");
begin

process(MemRead, MemWrite, CLK, Address)
begin

	if MemRead = '1' AND MemWrite = '0'
		then 
			Read_Data(31 downto 24) <= array_Memory(to_integer(unsigned(Address)));
			Read_Data(23 downto 16) <= array_Memory(to_integer(unsigned(Address) +1));
			Read_Data(15 downto  8) <= array_Memory(to_integer(unsigned(Address) +2));
			Read_Data(7  downto  0) <= array_Memory(to_integer(unsigned(Address) +3));
	
	elsif MemWrite = '1' AND MemRead = '0' AND rising_edge(CLK)
		then 
			array_Memory(to_integer(unsigned(Address))) <= Write_Data(31 downto 24);
			array_Memory(to_integer(unsigned(Address) +1)) <= Write_Data(23 downto 16);
			array_Memory(to_integer(unsigned(Address) +2)) <= Write_Data(15 downto  8);
			array_Memory(to_integer(unsigned(Address) +3)) <= Write_Data(7  downto 0);
	end if;
	
end process;

end Behavioral;

