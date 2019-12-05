-- Design de Computadores
-- file: UC_ULA.vhd
-- date: 01/11/2019

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE IEEE.NUMERIC_STD.ALL;

ENTITY ULA IS
	GENERIC (
		NUM_BITS : NATURAL := 32
	);

	PORT (
		A : IN std_logic_vector(NUM_BITS - 1 DOWNTO 0);
		B : IN std_logic_vector(NUM_BITS - 1 DOWNTO 0);
		ctr : IN std_logic_vector(3 DOWNTO 0);
		C : OUT std_logic_vector(NUM_BITS - 1 DOWNTO 0);
		Z : OUT std_logic
	);

END ENTITY;

ARCHITECTURE behv OF ULA IS
	CONSTANT zero : std_logic_vector(NUM_BITS - 1 DOWNTO 0) := (OTHERS => '0');
	SIGNAL C_s, soma, sub, or1, and1, slt : std_logic_vector(NUM_BITS - 1 DOWNTO 0);
	SIGNAL overflow_s : std_logic;

BEGIN
	soma <= std_logic_vector(signed(A) + signed(B));
	sub <= std_logic_vector(signed(A) + (NOT (signed(B))) + 1);
	or1 <= A OR B;
	and1 <= A AND B;
	slt <= (0 => sub(NUM_BITS - 1) XOR overflow_s, OTHERS => '0');

	PROCESS (ctr, soma, sub, and1, or1, slt)
	BEGIN
		CASE ctr IS
			WHEN "0010" => C_s <= soma;
			WHEN "0110" => C_s <= sub;
			WHEN "0000" => C_s <= and1;
			WHEN "0001" => C_s <= or1;
			WHEN "0111" => C_s <= slt;
			WHEN OTHERS => C_s <= zero;
		END CASE;
	END PROCESS;


	Z <= '1' WHEN unsigned(sub) = unsigned(zero) ELSE '0';
	overflow_s <= (NOT(A(NUM_BITS - 1)) AND NOT(B(NUM_BITS - 1)) AND C_s(NUM_BITS - 1)) OR (A(NUM_BITS - 1) AND B(NUM_BITS - 1) AND NOT(C_s(NUM_BITS - 1)));

	C <= C_s;

END ARCHITECTURE;
