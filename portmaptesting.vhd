--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   04:10:09 04/16/2022
-- Design Name:   
-- Module Name:   D:/Mina/Term 6/Computer Archetcture/Home/Project_4_4/portmaptesting.vhd
-- Project Name:  Project_22_2
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: portmaptest
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
 
ENTITY portmaptesting IS
END portmaptesting;
 
ARCHITECTURE behavior OF portmaptesting IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT portmaptest
    PORT(
         I0 : IN  std_logic_vector(31 downto 0);
         I1 : IN  std_logic_vector(31 downto 0);
         O : OUT  std_logic_vector(31 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal I0 : std_logic_vector(31 downto 0) := (others => '0');
   signal I1 : std_logic_vector(31 downto 0) := (others => '0');

 	--Outputs
   signal O : std_logic_vector(31 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: portmaptest PORT MAP (
          I0 => I0,
          I1 => I1,
          O => O
        );

 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

		I0 <= X"FFFFFFFF";
		I1 <= X"ABCDEF11";

      wait;
   end process;

END;
