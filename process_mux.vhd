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

entity process5 is
	port(
		a, b, sel : in std_logic; -- sel eh o seletor
		x : out std_logic
	);
end process5;

architecture Behavioral of process5 is

begin
	process(a, b, sel)
	begin
		-- Logica de Multiplexador (MUX)
		if(sel = '0') then
			x <= a; -- Se seletor zero, saida recebe A
		else
			x <= b; -- Senao, saida recebe B
		end if;
		
	end process;

end Behavioral;
