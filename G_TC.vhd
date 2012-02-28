-- G_TC.vhd
-- Generic T flip-flop with clear.
library ieee;
use ieee.std_logic_1164.all;
  entity G_TC is
    Port
    (
      T : In std_logic;
      CLK : In std_logic;
      C : In std_logic;
      Q : Out std_logic
    );
  end G_TC;

library ieee;
use ieee.std_logic_1164.all;
  architecture behavioral of G_TC is
    begin
      process (CLK, C)
      variable Q_local: std_logic;
      begin
        if C = '1' then
          Q_local := '0';
        elsif rising_edge (CLK) then
          if T = '1' then
            Q_local := not Q_local;
          end if;
        end if;
        Q <= Q_local;
      end process;
    end behavioral;

-- EOF
