-- ARQUIVO: template_process.vhd
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity a_process is
    Port ( a, b : in  STD_LOGIC;
           x, y : out STD_LOGIC);
end a_process;

architecture Behavioral of a_process is
begin

    -- LISTA DE SENSIBILIDADE: Coloque TODAS as entradas aqui dentro dos parênteses
    -- Se esquecer uma, o circuito não simula direito.
    process(a, b)
    begin
        -- Aqui dentro é sequencial (linha por linha)
        
        -- Saída X: É uma porta AND (conforme desenho)
        if (a = '1' and b = '1') then
            x <= '1';
        else
            x <= '0';
        end if;
        -- Poderia ser apenas: x <= a and b;
        
        -- Saída Y: É um fio direto do B (conforme desenho)
        y <= b;
        
    end process;

end Behavioral;
