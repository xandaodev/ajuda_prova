----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:44:50 12/10/2025 
-- Design Name: 
-- Module Name:    q3 - Behavioral 
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

entity q3 is
	port(
		A : in std_logic_vector (0 to 15);
		S : out std_logic_vector (0 to 15)
	);
end q3;

architecture Behavioral of q3 is

component q1 is
	port(
		x, y : in std_logic;
		a, b : out std_logic
	);
end component;

component q2 is
	port(
		x0, y0 : in std_logic;
		s : out std_logic
	);
end component;

signal sub1A : std_logic_vector(0 to 15);
signal sub1B : std_logic_vector(0 to 15);
signal sub2 : std_logic_vector (0 to 15);

begin

gen_circuitos : for i in 1 to 15  generate 
	sub1 : q1 port map(
		
	);
	

end Behavioral;
