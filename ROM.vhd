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

architecture initFileROM of ROM is

  type memory_t is array (2**addrWidth -1 downto 0) of std_logic_vector (dataWidth-1 downto 0);
  signal content: memory_t;
  attribute ram_init_file : string;
  attribute ram_init_file of content:
  signal is "ROMcontent.mif";
  
  begin
     Dado <= content(to_integer(unsigned(Endereco)));
  end architecture;