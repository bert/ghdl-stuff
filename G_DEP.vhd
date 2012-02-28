-- G_DEP.vhd
-- Generic D flip-flop with enable and preset.

library ieee;
use ieee.std_logic_1164.all;
  entity G_DEP is
    Port
    (
      D : In std_logic;
      E : In std_logic;
      CLK : In std_logic;
      P : In std_logic;
      Q : Out std_logic
    );
  end G_DEP;

library ieee;
use ieee.std_logic_1164.all;
  architecture behavioral of G_DEP is
    begin
      process (CLK, P, E)
        begin
          if P = '1' then
            Q <= '1';
          elsif rising_edge (CLK) then
            if E = '1' then
              Q <= D and D;
          end if;
        end if;
      end process;
    end behavioral;

-- EOF
