
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
ENTITY Control_Unit_sim IS
END Control_Unit_sim;
 
ARCHITECTURE behavior OF Control_Unit_sim IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Control_Unit
    PORT(
         Op : IN  std_logic_vector(5 downto 0);
         RegDst : OUT  std_logic;
         ALUSrc : OUT  std_logic;
         MemToReg : OUT  std_logic;
         RegWhite : OUT  std_logic;
         MemRead : OUT  std_logic;
         MemWrite : OUT  std_logic;
         Branch : OUT  std_logic;
         ALUOp1 : OUT  std_logic;
         ALUOp0 : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal Op : std_logic_vector(5 downto 0) := (others => '0');

 	--Outputs
   signal RegDst : std_logic;
   signal ALUSrc : std_logic;
   signal MemToReg : std_logic;
   signal RegWhite : std_logic;
   signal MemRead : std_logic;
   signal MemWrite : std_logic;
   signal Branch : std_logic;
   signal ALUOp1 : std_logic;
   signal ALUOp0 : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Control_Unit PORT MAP (
          Op => Op,
          RegDst => RegDst,
          ALUSrc => ALUSrc,
          MemToReg => MemToReg,
          RegWhite => RegWhite,
          MemRead => MemRead,
          MemWrite => MemWrite,
          Branch => Branch,
          ALUOp1 => ALUOp1,
          ALUOp0 => ALUOp0
        );

   -- Clock process definitions

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

		Op <= "000000";
		wait for 100 ns;
		
		Op <= "110001";
		wait for 100 ns;
		
		Op <= "110101";
		wait for 100 ns;
		
		Op <= "001000";
		wait for 100 ns;

      wait;
   end process;

END;
