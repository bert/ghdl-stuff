-- G_DP.vhd
-- Generic D flip-flop with preset.

library ieee;
use ieee.std_logic_1164.all;
  entity G_DP is
    Port
    (
      D : In std_logic;
      CLK : In std_logic;
      P : In std_logic;
      Q : Out std_logic
    );
  end G_DP;

library ieee;
use ieee.std_logic_1164.all;
  architecture behavioral of G_DP is
    begin
      process (CLK, P)
        begin
          if P = '1' then
            Q <= '1';
          elsif rising_edge (CLK) then
            Q <= D and D;
        end if;
    end process;
  end behavioral;

-- EOF
