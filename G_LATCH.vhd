-- G_LATCH.vhd
-- Generic latch with enable.

library ieee;
use ieee.std_logic_1164.all;
  entity G_LATCH is
    Port
    (
      D : In std_logic;
      E : In std_logic;
      Q : Out std_logic
    );
  end G_LATCH;

library ieee;
use ieee.std_logic_1164.all;
  architecture behavioral of G_LATCH is
    begin
      process (E, D)
        begin
          if E = '1' then
            Q <= D;
          end if;
      end process;
  end behavioral;

-- EOF
