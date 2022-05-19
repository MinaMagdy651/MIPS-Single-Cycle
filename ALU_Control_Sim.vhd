
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
ENTITY ALU_Control_Sim IS
END ALU_Control_Sim;
 
ARCHITECTURE behavior OF ALU_Control_Sim IS 
 
 
    COMPONENT ALU_Control
    PORT(
         ALUOP : IN  std_logic_vector(1 downto 0);
         F : IN  std_logic_vector(5 downto 0);
         Operation : OUT  std_logic_vector(3 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal ALUOP : std_logic_vector(1 downto 0) := (others => '0');
   signal F : std_logic_vector(5 downto 0) := (others => '0');

 	--Outputs
   signal Operation : std_logic_vector(3 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 

BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: ALU_Control PORT MAP (
          ALUOP => ALUOP,
          F => F,
          Operation => Operation
        );

   -- Clock process definitions

 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	
		

      -- insert stimulus here 
		
		F <= "000000";
		
		ALUOP <= "00";
		wait for 100 ns;
		
		ALUOP <= "01";
		wait for 100 ns;
		
		
		ALUOP <= "11";
		
		F <= "000010";
		wait for 100 ns;
		
		F <= "001010";
		wait for 100 ns;
		
		ALUOP <= "10";
		
		F <= "000101";
		wait for 100 ns;
		
		F <= "000100";
		wait for 100 ns;
		
		F <= "000000";
		wait for 100 ns;
		
      wait;
   end process;

END;
