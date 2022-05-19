
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 

 
ENTITY Reg_Files_Sim IS
END Reg_Files_Sim;
 
ARCHITECTURE behavior OF Reg_Files_Sim IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Reg_Files
    PORT(
         RegWrite : IN  std_logic;
         Read_Reg_1 : IN  std_logic_vector(4 downto 0);
         Read_Reg_2 : IN  std_logic_vector(4 downto 0);
         Write_Reg : IN  std_logic_vector(4 downto 0);
         Write_data : IN  std_logic_vector(31 downto 0);
         Read_Data_1 : OUT  std_logic_vector(31 downto 0);
         Read_Data_2 : OUT  std_logic_vector(31 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal RegWrite : std_logic := '0';
   signal Read_Reg_1 : std_logic_vector(4 downto 0) := (others => '0');
   signal Read_Reg_2 : std_logic_vector(4 downto 0) := (others => '0');
   signal Write_Reg : std_logic_vector(4 downto 0) := (others => '0');
   signal Write_data : std_logic_vector(31 downto 0) := (others => '0');

 	--Outputs
   signal Read_Data_1 : std_logic_vector(31 downto 0);
   signal Read_Data_2 : std_logic_vector(31 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Reg_Files PORT MAP (
          RegWrite => RegWrite,
          Read_Reg_1 => Read_Reg_1,
          Read_Reg_2 => Read_Reg_2,
          Write_Reg => Write_Reg,
          Write_data => Write_data,
          Read_Data_1 => Read_Data_1,
          Read_Data_2 => Read_Data_2
        );

   -- Clock process definitions
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	
      -- insert stimulus here 
		Read_Reg_1 <= "00000";
		Read_Reg_2 <= "00001";
		wait for 100 ns;	
		
		RegWrite <= '1';
		Write_Reg <= "00001";
		Write_Data <= X"00000009";
		Read_Reg_1 <= "00000";
      wait;
   end process;

END;
