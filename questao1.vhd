Q1
----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:21:59 12/10/2025 
-- Design Name: 
-- Module Name:    q1 - Behavioral 
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

entity q1 is
	port(
		x, y : in std_logic;
		a, b : out std_logic
	);
end q1;

architecture Behavioral of q1 is

signal XandY : std_logic;
signal notXorY : std_logic;
signal X_notOr_and : std_logic;

begin

Xandy <= x and y;
notXorY <= (not x) or y;

b <= XandY;
a <= XandY or notXorY or x;


end Behavioral;
