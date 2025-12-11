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

entity process4 is
	port(
		a, b, c : in std_logic; -- Adicionei entrada C
		x, y : out std_logic
	);
end process4;

architecture Behavioral of process4 is

begin
	-- Lista sensivel tem que ter A, B e C
	process(a, b, c)
	begin
		-- Logica AND de 3 entradas
		if(a='1' and b='1' and c='1') then
			x <= '1';
		else
			x <= '0';
		end if;
		
		-- Logica OR entre A e C
		if(a='1' or c='1') then
			y <= '1';
		else
			y <= '0';
		end if;
	end process;

end Behavioral;

      --Circuito com 3 Entradas (AND de 3 portas)
