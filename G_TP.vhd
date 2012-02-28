-- G_TP.vhd
-- Generic T flip-flop with preset.

library ieee;
use ieee.std_logic_1164.all;
  entity G_TP is
    Port
    (
      T : In std_logic;
      CLK : In std_logic;
      P : In std_logic;
      Q : Out std_logic
    );
  end G_TP;

library ieee;
use ieee.std_logic_1164.all;
  architecture behavioral of G_TP is
  begin
    process (CLK, P)
    variable Q_local: std_logic;

    begin
      if P = '1' then
        Q_local := '1';
      elsif rising_edge (CLK) then
        if T = '1' then
          Q_local := not Q_local;
        end if;
      end if;
      Q <= Q_local;
    end process;
  end behavioral;

-- EOF
