-- G_DEC.vhd
-- Generic D flip-flop with enable and clear.

library ieee;
use ieee.std_logic_1164.all;
  entity G_DEC is
    Port
    (
      D : In std_logic;
      E : In std_logic;
      C : In std_logic;
      CLK : In std_logic;
      Q : Out std_logic
    );
  end G_DEC;

library ieee;
use ieee.std_logic_1164.all;
  architecture behavioral of G_DEC is
    begin
      process(CLK, C, E)
        begin
          if C = '1' then
            Q <= '0';
          elsif rising_edge (CLK) then
            if E = '1' then
              Q <= D and D;
            end if;
          end if;
      end process;
    end behavioral;

