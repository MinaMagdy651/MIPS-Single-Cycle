
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
 
ENTITY SignExtend_Sim IS
END SignExtend_Sim;
 
ARCHITECTURE behavior OF SignExtend_Sim IS 
 
 
    COMPONENT SignExtend
    PORT(
         Input : IN  std_logic_vector(15 downto 0);
         Output : OUT  std_logic_vector(31 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal Input : std_logic_vector(15 downto 0) := (others => '0');

 	--Outputs
   signal Output : std_logic_vector(31 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: SignExtend PORT MAP (
          Input => Input,
          Output => Output
        );

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

      Input <= X"0001";
		wait for 100 ns;
		Input <= X"F000";

      -- insert stimulus here 

      wait;
   end process;

END;
