----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    10:04:30 12/11/2025 
-- Design Name: 
-- Module Name:    sub1 - Behavioral 
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

entity sub1 is
	port(
		x, y : in std_logic;
		a, b : out std_logic
	);
end sub1;

architecture Behavioral of sub1 is

signal s_and, s_or1, s_or2 : std_logic;
begin

s_and <= x and y;
s_or1 <= (not x) or y;
s_or2 <= s_and or (not s_or1) or x;

b <= s_and;
a <= s_or2;

end Behavioral;

