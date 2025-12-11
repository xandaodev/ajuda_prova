----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    11:29:22 12/11/2025 
-- Design Name: 
-- Module Name:    process - Behavioral 
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

entity process6 is
	port(
		a, b : in std_logic;
		x, y : out std_logic
	);
end process6;

architecture Behavioral of process6 is

begin
	process(a, b)
	begin
		-- Logica da porta NOR (Nem um, nem outro)
		if(a='0' and b='0') then
			x <= '1';
		else
			x <= '0';
		end if;
		
		-- Logica da porta AND normal pro Y
		if(a='1' and b='1') then
			y <= '1';
		else
			y <= '0';
		end if;
	end process;

end Behavioral;

      --x é uma NOR (só é 1 se tudo for 0). y é uma AND normal.
