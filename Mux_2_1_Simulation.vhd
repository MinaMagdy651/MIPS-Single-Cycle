
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY Mux_2_1_Simulation IS
END Mux_2_1_Simulation;
 
ARCHITECTURE behavior OF Mux_2_1_Simulation IS 
 
 
    COMPONENT MUX_2_1
    PORT(
         I0 : IN  std_logic_vector(31 downto 0);
         I1 : IN  std_logic_vector(31 downto 0);
         S : IN  std_logic;
         O : OUT  std_logic_vector(31 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal I0 : std_logic_vector(31 downto 0) := (others => '0');
   signal I1 : std_logic_vector(31 downto 0) := (others => '0');
   signal S : std_logic := '0';

 	--Outputs
   signal O : std_logic_vector(31 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: MUX_2_1 PORT MAP (
          I0 => I0,
          I1 => I1,
          S => S,
          O => O
        );


 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	


      -- insert stimulus here 
		I0 <= X"FFFFFFFF";
		I1 <= X"00000000";
		S <= '0';
		wait for 100 ns;
		S <= '1';

      wait;
   end process;

END;
