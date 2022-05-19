
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY ALU_Simulation IS
END ALU_Simulation;
 
ARCHITECTURE behavior OF ALU_Simulation IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT ALU
    PORT(
         A : IN  std_logic_vector(31 downto 0);
         B : IN  std_logic_vector(31 downto 0);
         ALUop : IN  std_logic_vector(3 downto 0);
         Res : OUT  std_logic_vector(31 downto 0);
         Zero : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal A : std_logic_vector(31 downto 0) := (others => '0');
   signal B : std_logic_vector(31 downto 0) := (others => '0');
   signal ALUop : std_logic_vector(3 downto 0) := (others => '0');

 	--Outputs
   signal Res : std_logic_vector(31 downto 0);
   signal Zero : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: ALU PORT MAP (
          A => A,
          B => B,
          ALUop => ALUop,
          Res => Res,
          Zero => Zero
        );

 

   -- Stimulus process
   stim_proc: process
   begin		
      wait for 100 ns;	
		A <= X"00000002";
		B <= X"00000001";
		
		--ALUop <= "0000";
		wait for 100 ns;
		
		--ALUop <= "0000";
		wait for 100 ns;
		
		--ALUop <= "0001";
		wait for 100 ns;
		
		--ALUop <= "0111";
		wait for 100 ns;
		
		ALUop <= "0010";
		wait for 100 ns;
		
		--ALUop <= "0110";
		wait for 100 ns;
		
		--ALUop <= "1100";
		wait for 100 ns;

      wait;
   end process;

END;
