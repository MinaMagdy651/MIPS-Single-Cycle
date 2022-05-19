
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 

 
ENTITY Adder_Sim IS
END Adder_Sim;
 
ARCHITECTURE behavior OF Adder_Sim IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Adder
    PORT(
         Input1 : IN  std_logic_vector(31 downto 0);
         Input2 : IN  std_logic_vector(31 downto 0);
         Output : OUT  std_logic_vector(31 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal Input1 : std_logic_vector(31 downto 0) := (others => '0');
   signal Input2 : std_logic_vector(31 downto 0) := (others => '0');

 	--Outputs
   signal Output : std_logic_vector(31 downto 0);

 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Adder PORT MAP (
          Input1 => Input1,
          Input2 => Input2,
          Output => Output
        );


 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	
		Input1 <= X"00000000";
		Input2 <= X"00000004";
		wait for 100 ns;
		Input2 <= X"FFFFFFFF";

      wait;
   end process;

END;
