--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   11:01:35 04/04/2022
-- Design Name:   
-- Module Name:   D:/Last lab/Project_28_3/Shift_Left_26_28_Sim.vhd
-- Project Name:  Project_22_2
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Shift_Left_26_28
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
 
ENTITY Shift_Left_26_28_Sim IS
END Shift_Left_26_28_Sim;
 
ARCHITECTURE behavior OF Shift_Left_26_28_Sim IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Shift_Left_26_28
    PORT(
         Input : IN  std_logic_vector(25 downto 0);
         Output : OUT  std_logic_vector(27 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal Input : std_logic_vector(25 downto 0) := (others => '0');

 	--Outputs
   signal Output : std_logic_vector(27 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 

 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Shift_Left_26_28 PORT MAP (
          Input => Input,
          Output => Output
        );

   -- Clock process definitions

 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

      Input <= "11111111111111111111111111";

      -- insert stimulus here 

      wait;
   end process;

END;
