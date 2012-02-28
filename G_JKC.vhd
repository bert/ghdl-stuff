-- G_JKC.vhd
-- Generic JK flip-flop with clear.

library ieee;
use ieee.std_logic_1164.all;
  entity G_JKC is
    Port
    (
      J : In std_logic;
      K : In std_logic;
      CLK : In std_logic;
      C : In std_logic;
      Q : Out std_logic
    );
  end G_JKC;

library ieee;
use ieee.std_logic_1164.all;
  architecture behavioral of G_JKC is
    begin
      process (CLK, C)
      variable Q_local: std_logic;
      begin
        if C = '1' then
          Q_local := '0';
        elsif rising_edge(CLK) then
          if J = '1' and K = '1' then
            Q_local := not Q_local;
          elsif J = '1' and K = '0' then
            Q_local := '1';
          elsif J = '0' and K = '1' then
            Q_local := '0';
          end if;
        end if;
        Q <= Q_local;
      end process;
    end behavioral;

-- EOF
