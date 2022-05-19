--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   22:03:23 05/08/2022
-- Design Name:   
-- Module Name:   D:/Mina/Term 6/Computer Archetcture/Home/FInal Project/Reg_File_Sim.vhd
-- Project Name:  Project_22_2
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Reg_Files
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY Reg_File_Sim IS
END Reg_File_Sim;
 
ARCHITECTURE behavior OF Reg_File_Sim IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Reg_Files
    PORT(
         RegWrite : IN  std_logic;
         Read_Reg_1 : IN  std_logic_vector(4 downto 0);
         Read_Reg_2 : IN  std_logic_vector(4 downto 0);
         Write_Reg : IN  std_logic_vector(4 downto 0);
         Write_data : IN  std_logic_vector(31 downto 0);
         Read_Data_1 : OUT  std_logic_vector(31 downto 0);
         Read_Data_2 : OUT  std_logic_vector(31 downto 0);
         CLK : IN  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal RegWrite : std_logic := '0';
   signal Read_Reg_1 : std_logic_vector(4 downto 0) := (others => '0');
   signal Read_Reg_2 : std_logic_vector(4 downto 0) := (others => '0');
   signal Write_Reg : std_logic_vector(4 downto 0) := (others => '0');
   signal Write_data : std_logic_vector(31 downto 0) := (others => '0');
   signal CLK : std_logic := '0';

 	--Outputs
   signal Read_Data_1 : std_logic_vector(31 downto 0);
   signal Read_Data_2 : std_logic_vector(31 downto 0);

   -- Clock period definitions
   constant CLK_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Reg_Files PORT MAP (
          RegWrite => RegWrite,
          Read_Reg_1 => Read_Reg_1,
          Read_Reg_2 => Read_Reg_2,
          Write_Reg => Write_Reg,
          Write_data => Write_data,
          Read_Data_1 => Read_Data_1,
          Read_Data_2 => Read_Data_2,
          CLK => CLK
        );

   -- Clock process definitions
   CLK_process :process
   begin
		CLK <= '0';
		wait for CLK_period/2;
		CLK <= '1';
		wait for CLK_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 50 ns;	

		Read_Reg_1 <= "00000";
		Read_Reg_2 <= "00001";
		wait for 100 ns;	
		
		RegWrite <= '1';
		Write_Reg <= "00000";
		Write_Data <= X"00000009";
		
		Read_Reg_1 <= "00000";
		Read_Reg_2 <= "00011";
      wait;
   end process;

END;
