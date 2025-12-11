----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:31:17 12/10/2025 
-- Design Name: 
-- Module Name:    q2 - Behavioral 
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

entity q2 is
	port(
		x0, y0 : in std_logic;
		s : out std_logic
	);
end q2;

architecture Behavioral of q2 is
	component q1 is
		port(
			x, y : in std_logic;
			a, b : out std_logic
		);
	end component;

signal sa, sb : std_logic;

begin
	circuito1 : q1 port map(
		x => x0,
		y => y0,
		a => sa, 
		b => sb
	);	
	s <= sa and sb;
	

end Behavioral;
