library IEEE;
use IEEE.std_logic_1164.all;
use ieee.numeric_std.all;

--https://insper.blackboard.com/bbcswebdav/pid-639417-dt-content-rid-4055150_2/courses/201962.GRENGCOM_201561_0004.DESIGNCOMP_6ENGCOMPA/Atividades/vhdl/_componentesVHDL.html#rom-mips
entity ROM IS
   generic (
          dataWidth: natural := 32;
          addrWidth: natural := 32;
          memoryAddrWidth:  natural := 6 );   -- 64 posicoes de 32 bits cada
   port ( Endereco : IN  STD_LOGIC_VECTOR (addrWidth-1 DOWNTO 0);
          Dado     : OUT STD_LOGIC_VECTOR (dataWidth-1 DOWNTO 0) );
end entity;

architecture assincrona OF ROM IS
  type blocoMemoria IS ARRAY(0 TO 2**memoryAddrWidth - 1) OF std_logic_vector(dataWidth-1 DOWNTO 0);

  function initMemory
        return blocoMemoria is variable tmp : blocoMemoria := (others => (others => '0'));
  begin

      -- Cola dos valores iniciais no banco de registradores
      -- $zero (#0) := 0x00
      -- $t0 (#8)  := 0x00
      -- $t1 (#9)  := 0x0A
      -- $t2 (#10) := 0x0B
      -- $t3 (#11) := 0x0C
      -- $t4 (#12) := 0x0D
      -- $t5 (#13) := 0x16
--
--    --        -- Inicializa os endereços:
--        tmp(0) := x"AC090008"; --sw $t1 8($zero) (m(8) := 0x0A)  100011 00000 01001 x0008
--        tmp(1) := x"8C080008"; --lw $t0 8($zero) ($t0 := 0x0A)   100011 00000 01000 x0008
--        tmp(2) := x"012A4022"; --sub $t0 $t1 $t2 ($t0 := 0xFF)   000000 01001 01010 01000 00000 100010
--        tmp(3) := x"012A4024"; --and $t0 $t1 $t2 ($t0 := 0x0A)   000000 01001 01010 01000 00000 100100
--        tmp(4) := x"012A4025"; --or $t0 $t1 $t2  ($t0 := 0x0B)   000000 01001 01010 01000 00000 100101
--        tmp(5) := x"3C08FFFF"; --lui $t0 0xFFFF   ($t0 := 0xFFFF0000)  
--        tmp(6) := x"2128000A"; --addi $t0 $t1 0x000A ($t0 := 0x00000014)
--        tmp(7) := x"31080013"; --andi $t0 $t0 0x0013
--        tmp(8) := x"35880007"; --ori $t0 $t4 0x0007  ($t0 := 0x0000000F)
--		  tmp(9) := x"2928FFFF"; --slti $t0 $t1 0xFFFF ($t0 := 0x00000000)
--		  tmp(10) := x"010A4020"; --add $t0 $t0 $t2     ($t0 := 0x0000000B)
--		  tmp(11) := x"150DFFFE"; --bne $t0 $t5 0xFFFE (pc := #10)
--		  tmp(12) := X"012A402A"; --slt $t0 $t1 $t2     ($t0 := 0x00000001)
	 
--    tmp(0) := x"20090004"; --addi $t1 $zero 0x0004 ($t1 := 0x04)          000010 00 x000001
--	 tmp(1) := x"00005022"; --sub $t2 $zero $zero ($t2 := 0x00)          000010 00 x000001
--    tmp(2) := x"200B0001"; --addi $t3 $zero 0x0001 ($t3 := 0x01)          000010 00 x000001
--	 tmp(3) := x"29AAFFFF";  --slti t2 t5 0xffff    ($t1 := 0x00)
--    tmp(4) := x"014B5020"; --add $t2 $t2 $t3 ($t2 := 0x01) ($t2 := 0x02) ($t2 := 0x03) ($t2 := 0x04) 
--    tmp(5) := x"152AFFFE"; --bne $t1 $t2 0xfffe 
--    tmp(6) := x"018B4822"; --and $t0 $t1 $t2 ($t0 := 0x0A)   000000 01001 01010 01000 00000 100100
	
       return tmp;
    end initMemory;

  signal memROM: blocoMemoria;-- := initMemory;
  attribute ram_init_file : string;
  attribute ram_init_file of memROM:
  signal is "ROMcontent.mif";

-- Utiliza uma quantidade menor de endereços locais:
   signal EnderecoLocal : std_logic_vector(memoryAddrWidth-1 downto 0);

begin
  EnderecoLocal <= Endereco(memoryAddrWidth+1 downto 2);
  Dado <= memROM (to_integer(unsigned(EnderecoLocal)));
end architecture;