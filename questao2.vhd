----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    10:10:27 12/11/2025 
-- Design Name: 
-- Module Name:    sub2 - Behavioral 
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

entity sub2 is
	port(
		x0, x1 : in std_logic;
		s : out std_logic
	);
end sub2;

architecture Behavioral of sub2 is
	component sub1 is
		port(
			x, y : in std_logic;
			a, b : out std_logic
		);
	end component;
	
signal sa, sb : std_logic;
begin
sub_1 : sub1 port map(
	x => x0,
	y => x1,
	a => sa,	--componente menor na esquerda
	b => sb
);

s <= sa and sb;
end Behavioral;

