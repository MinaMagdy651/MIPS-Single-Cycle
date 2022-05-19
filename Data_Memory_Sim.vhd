--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   09:52:16 03/28/2022
-- Design Name:   
-- Module Name:   D:/Mina/Term 6/Computer Archetcture/Lab/Project_28_3/Data_Memory_Sim.vhd
-- Project Name:  Project_22_2
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Data_Memory
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
 
ENTITY Data_Memory_Sim IS
END Data_Memory_Sim;
 
ARCHITECTURE behavior OF Data_Memory_Sim IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Data_Memory
    PORT(
         Address : IN  std_logic_vector(31 downto 0);
         Write_Data : IN  std_logic_vector(31 downto 0);
         MemWrite : IN  std_logic;
         MemRead : IN  std_logic;
         Read_Data : OUT  std_logic_vector(31 downto 0);
         CLK : IN  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal Address : std_logic_vector(31 downto 0) := (others => '0');
   signal Write_Data : std_logic_vector(31 downto 0) := (others => '0');
   signal MemWrite : std_logic := '0';
   signal MemRead : std_logic := '0';
   signal CLK : std_logic := '0';

 	--Outputs
   signal Read_Data : std_logic_vector(31 downto 0);

   -- Clock period definitions
   constant CLK_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Data_Memory PORT MAP (
          Address => Address,
          Write_Data => Write_Data,
          MemWrite => MemWrite,
          MemRead => MemRead,
          Read_Data => Read_Data,
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
      wait for 100 ns;	

      wait for CLK_period*10;

      MemRead <= '1';
		MemWrite <= '0';
		Address <= X"00000000";
		wait for 100 ns;
		
		MemRead <= '0';
		MemWrite <= '1';
		Address <= X"00000004";
		Write_data <= X"FFFFFFFF";
		wait for 100 ns;
		
		MemRead <= '1';
		MemWrite <= '0';
		Address <= X"00000004";
      wait;
   end process;

END;
