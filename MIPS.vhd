library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_arith.ALL;
use IEEE.STD_LOGIC_unsigned.ALL;


entity MIPS is
    Port ( Clk : in  STD_LOGIC);
end MIPS;

	architecture Behavioral of MIPS is

component ALU_Control is
    Port ( ALUOP : in  STD_LOGIC_VECTOR (1 downto 0);
           F : in  STD_LOGIC_VECTOR (5 downto 0);
           Operation : out  STD_LOGIC_VECTOR (3 downto 0));
end component;

component ALU is
    Port ( A : in  STD_LOGIC_VECTOR (31 downto 0);
           B : in  STD_LOGIC_VECTOR (31 downto 0);
           ALUop : in  STD_LOGIC_VECTOR (3 downto 0);
           Res : out  STD_LOGIC_VECTOR (31 downto 0);
           Zero : out  STD_LOGIC);
end component;

component Adder is
    Port ( Input1 : in  STD_LOGIC_VECTOR (31 downto 0);
           Input2 : in  STD_LOGIC_VECTOR (31 downto 0);
           Output : out  STD_LOGIC_VECTOR (31 downto 0));
end component;

component Control_Unit is
    Port ( Op : in  STD_LOGIC_VECTOR (5 downto 0);
           RegDst : out  STD_LOGIC;
           ALUSrc : out  STD_LOGIC;
           MemToReg : out  STD_LOGIC;
           RegWhite : out  STD_LOGIC;
           MemRead : out  STD_LOGIC;
           MemWrite : out  STD_LOGIC;
           Branch : out  STD_LOGIC;
           ALUOp : out  STD_LOGIC_VECTOR(1 downto 0) );
end component;

component Data_Memory is
    Port ( Address : in  STD_LOGIC_VECTOR (31 downto 0);
           Write_Data : in  STD_LOGIC_VECTOR (31 downto 0);
           MemWrite : in  STD_LOGIC;
           MemRead : in  STD_LOGIC;
           Read_Data : out  STD_LOGIC_VECTOR (31 downto 0);
			  CLK : STD_LOGIC);
end component;

component MUX_2_1 is
    Port ( I0 : in  STD_LOGIC_VECTOR (31 downto 0);
           I1 : in  STD_LOGIC_VECTOR (31 downto 0);
           S : in  STD_LOGIC;
           O : out  STD_LOGIC_VECTOR (31 downto 0));
end component;

component MUX_2_1_5Bits is
    Port ( I0 : in  STD_LOGIC_VECTOR (4 downto 0);
           I1 : in  STD_LOGIC_VECTOR (4 downto 0);
           S : in  STD_LOGIC;
           O : out  STD_LOGIC_VECTOR (4 downto 0));
end component;

component PC is
    Port ( Input : in  STD_LOGIC_VECTOR (31 downto 0);
           Output : out  STD_LOGIC_VECTOR (31 downto 0);
			  firstTime : in  STD_LOGIC;
           CLK : STD_LOGIC);
end component;

component Reg_Files is
    Port ( RegWrite : in  STD_LOGIC;
           Read_Reg_1 : in  STD_LOGIC_VECTOR (4 downto 0);
           Read_Reg_2 : in  STD_LOGIC_VECTOR (4 downto 0);
           Write_Reg : in  STD_LOGIC_VECTOR (4 downto 0);
           Write_data : in  STD_LOGIC_VECTOR (31 downto 0);
           Read_Data_1 : out  STD_LOGIC_VECTOR (31 downto 0);
           Read_Data_2 : out  STD_LOGIC_VECTOR (31 downto 0);
			  CLK : STD_LOGIC);
end component;

component Shift_Left_26_28 is
    Port ( Input : in  STD_LOGIC_VECTOR (25 downto 0);
           Output : out  STD_LOGIC_VECTOR (27 downto 0));
end component;

component Shift_Left_32_32 is
    Port ( Input : in  STD_LOGIC_VECTOR (31 downto 0);
           Output : out  STD_LOGIC_VECTOR (31 downto 0));
end component;

component SignExtend is
    Port ( Input : in  STD_LOGIC_VECTOR (15 downto 0);
           Output : out  STD_LOGIC_VECTOR (31 downto 0));
end component;

component Instruction_Memory is
    Port ( Address : in  STD_LOGIC_VECTOR (31 downto 0);
           Output : out  STD_LOGIC_VECTOR (31 downto 0);
           Clk : in  STD_LOGIC);
end component;

--PC Signals
signal PCoutput: std_logic_vector(31 downto 0);
signal PCinput: std_logic_vector (31 downto 0);

--Control Unit Signals
signal OpCode: STD_LOGIC_VECTOR (5 downto 0);
signal RegDst: STD_LOGIC;
signal Branch: STD_LOGIC;
signal MemRead: STD_LOGIC;
signal MemToReg: STD_LOGIC;
signal AluOp: STD_LOGIC_VECTOR (1 downto 0);
signal MemWrite: STD_LOGIC;	
signal AluSrc: STD_LOGIC;
signal RegWrite: STD_LOGIC;

--	Instruction and Register Signals
signal Rs: STD_LOGIC_VECTOR (4 downto 0);
signal Rt: STD_LOGIC_VECTOR (4 downto 0);
signal Rd: STD_LOGIC_VECTOR (4 downto 0);
signal RegWriteDataAddress: STD_LOGIC_VECTOR (4 downto 0); -- RegDst Output
signal RegReadData_1 : STD_LOGIC_VECTOR (31 downto 0);
signal RegReadData_2 : STD_LOGIC_VECTOR (31 downto 0);
signal RegWriteData : STD_LOGIC_VECTOR (31 downto 0); -- Data in
signal Instruction: STD_LOGIC_VECTOR (31 downto 0);


--ALU Signals
signal AluIn_1: STD_LOGIC_VECTOR (31 downto 0); -- Always equal to RegReadData_1
signal AluIn_2: STD_LOGIC_VECTOR (31 downto 0); -- AluSrc Output
signal AluRes: STD_LOGIC_VECTOR (31 downto 0);
signal Zero: STD_LOGIC;

--Data Memory Signals
signal DataMemoryReadData: STD_LOGIC_VECTOR (31 downto 0);

--Sign Extend Signals
signal SignExtendIn: STD_LOGIC_VECTOR (15 downto 0);
signal SignExtendOut: STD_LOGIC_VECTOR (31 downto 0);

--Shift Signals
signal ShiftOut32: STD_LOGIC_VECTOR (31 downto 0);

--Alu Control Signals
signal AluControl_in: STD_LOGIC_VECTOR (5 downto 0); --Always Equal to Instruction[5-0]
signal AluControl_Out: STD_LOGIC_VECTOR (3 downto 0);

--Adder Signals
signal PCAdder_Out: STD_LOGIC_VECTOR (31 downto 0);
signal BranchAdder_out: STD_LOGIC_VECTOR (31 downto 0);

--PC first time signal
signal firstTime: STD_LOGIC := '0';

begin
	
	--PC
	PC_Component: PC port map(PCinput, PCoutput, firstTime, Clk);
	firstTime <= '1';
	PC_Adder: Adder port map(PCoutput, x"00000004", PCAdder_Out);
	Branch_Adder: Adder port map(PCAdder_Out, ShiftOut32, BranchAdder_out);
	
	--Instruction Memory
	IR_Component: Instruction_Memory port map(PCoutput, Instruction, Clk);
	
	--Control Unit
	OpCode <= Instruction (31 downto 26);
	ControlUnit_Component: Control_Unit port map(OpCode, RegDst, AluSrc, MemToReg, RegWrite, MemRead, MemWrite, Branch, AluOp);
	
	--ALU Control
	AluControl_in <= Instruction (5 downto 0);
	ALU_Control_Component: ALU_Control port map(AluOp, AluControl_in, AluControl_Out);
	
	--RegDst MUX
	Rs <= Instruction (25 downto 21);
	Rt <= Instruction (20 downto 16);
	Rd <= Instruction (15 downto 11);
	RegDst_MUX: MUX_2_1_5Bits port map (Rt, Rd, RegDst, RegWriteDataAddress);
	
	--Branch Mux
	Branch_Mux: MUX_2_1 port map(PCAdder_Out, BranchAdder_out, (Branch AND Zero), PCinput);
	
	--AluSrc Mux
	AluSrc_Mux: MUX_2_1 port map(RegReadData_2, SignExtendOut, AluSrc, AluIn_2);
	
	--MemToReg Mux
	MemToReg_Mux: MUX_2_1 port map(AluRes, DataMemoryReadData, MemToReg, RegWriteData);
	
	
	--Register Files
	Reg_Files_Component: Reg_Files port map(RegWrite, Rs, Rt, RegWriteDataAddress, RegWriteData, RegReadData_1, RegReadData_2, Clk);
	
	--Sign Extend
	SignExtendIn <= Instruction (15 downto 0);
	SignExtend_Component: SignExtend port map(SignExtendIn, SignExtendOut);
	
	--Shift Left
	Shift_Left_32_32_Component: Shift_Left_32_32 port map(SignExtendOut, ShiftOut32);
	
	--Alu
	AluIn_1 <= RegReadData_1;
	ALU_Component: ALU port map(AluIn_1, AluIn_2, AluControl_Out, AluRes, Zero);
	
	--Data Memory
	Data_Memory_Component: Data_Memory port map(AluRes, RegReadData_2, MemWrite, MemRead, DataMemoryReadData, Clk);
	
end Behavioral;

