----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    10:16:26 12/11/2025 
-- Design Name: 
-- Module Name:    sub3 - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity sub3 is
	port(
		A : in std_logic_vector (0 to 15);
		S : out std_logic_vector (0 to 15)
	);
end sub3;

architecture Behavioral of sub3 is
	component sub1 is
		port(
			x, y : in std_logic;
			a, b : out std_logic
		);
	end component;
	
	component sub2 is
		port(
			x0, x1 : in std_logic;
			s : out std_logic
		);
	end component;
	
	signal sub1_b, sub1_a : std_logic_vector(0 to 7);
	signal s_sub2 : std_logic_vector (0 to 7);

begin

logica_b_1 : for i in 0 to 7 generate
	subs1 : sub1 port map(
		x => A(2*i),
		y => A(2*i + 1),
		b => sub1_b(i),
		a => sub1_a(i)
	);
	S(i) <= sub1_b(i);
end generate;

logica_s : for i in 0 to 6 generate
	subs2 : sub2 port map(
		x0 => sub1_b(i),
		x1 => sub1_a(i),
		s => s_sub2(i)
	);
	s(i+8) <= s_sub2(i);
end generate;
--s(0 to 8) <= sub(0 to 8)
--ultimo sub2 diferente
subs2_b : sub2 port map(
		x0 => sub1_b(7),
		x1 => sub1_b(7),
		s => s_sub2(7)
	);
	s(15) <= s_sub2(7);
end Behavioral;

