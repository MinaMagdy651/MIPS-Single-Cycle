
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 

 
ENTITY Shift_Left_32_32_Sim IS
END Shift_Left_32_32_Sim;
 
ARCHITECTURE behavior OF Shift_Left_32_32_Sim IS 
 
 
    COMPONENT Shift_Left_32_32
    PORT(
         Input : IN  std_logic_vector(31 downto 0);
         Output : OUT  std_logic_vector(31 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal Input : std_logic_vector(31 downto 0) := (others => '0');

 	--Outputs
   signal Output : std_logic_vector(31 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Shift_Left_32_32 PORT MAP (
          Input => Input,
          Output => Output
        );

   -- Clock process definitions
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

      Input <= X"FFFFFFFF";
		wait for 100 ns;

      -- insert stimulus here 

      wait;
   end process;

END;
