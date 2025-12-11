LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

-- 1. ENTITY VAZIA (Sempre assim em testbench)
ENTITY tb_meu_circuito IS
END tb_meu_circuito;

ARCHITECTURE behavior OF tb_meu_circuito IS 

    -- 2. COMPONENTE (Copie a entity do seu circuito e cole aqui mudando para Component)
    COMPONENT meu_circuito
    PORT(
         a : IN  std_logic;
         b : IN  std_logic;
         y : OUT  std_logic
        );
    END COMPONENT;

    -- 3. SINAIS (Os fios para ligar). 
    -- Dica: Inputs inicialize com '0'. Outputs não precisa.
    signal s_a : std_logic := '0';
    signal s_b : std_logic := '0';
    signal s_y : std_logic;
 
BEGIN
 
    -- 4. PORT MAP (Ligar os sinais nas portas)
    -- Esquerda: Nome na porta do componente
    -- Direita: Nome do sinal que criamos acima
    uut: meu_circuito PORT MAP (
          a => s_a,
          b => s_b,
          y => s_y
        );

    -- 5. PROCESSO DE ESTÍMULOS (Onde você manda os valores)
    stim_proc: process
    begin		
        -- Cenário 1: Tudo zero
        s_a <= '0';
        s_b <= '0';
        wait for 100 ns; -- OBRIGATÓRIO ter wait

        -- Cenário 2: A=1
        s_a <= '1';
        s_b <= '0';
        wait for 100 ns;

        -- Cenário 3: B=1
        s_a <= '0';
        s_b <= '1';
        wait for 100 ns;
        
        -- Cenário 4: Tudo 1
        s_a <= '1';
        s_b <= '1';
        wait for 100 ns;

        wait; -- IMPORTANTE: Esse wait final sem tempo faz a simulação parar.
    end process;

END;
