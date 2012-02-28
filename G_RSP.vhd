-- G_RSP.vhd
-- Generic RS flip-flop with preset.

library ieee;
use ieee.std_logic_1164.all;
  entity G_RSP is
    Port
    (
      R : In std_logic;
      S : In std_logic;
      CLK : In std_logic;
      P : In std_logic;
      Q : Out std_logic
    );
  end G_RSP;

library ieee;
use ieee.std_logic_1164.all;
  architecture behavioral of G_RSP is
    begin
      process (CLK, P)
      variable Q_local: std_logic;
      begin
        if P = '1' then
          Q_local := '1';
        elsif rising_edge(CLK) then
          if R = '1' and S = '1' then
            Q_local := 'X';
          elsif S = '1' and R = '0' then
            Q_local := '1';
          elsif S = '0' and R = '1' then
            Q_local := '0';
          end if;
        end if;
        Q <= Q_local;
    end process;
  end behavioral;

-- EOF
