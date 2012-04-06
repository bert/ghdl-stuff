-- G_T.vhd
-- Generic T flip-flop.

library ieee;
use ieee.std_logic_1164.all;
entity G_T is
  port
  (
    T : In std_logic;
    CLK : In std_logic;
    Q : Out std_logic
  );
end G_T;

library ieee;
use ieee.std_logic_1164.all;
architecture behavioral of G_T is
begin
  process(CLK)
  variable Q_local: std_logic;
  begin
    if (not (now > 0 ns)) THEN
      Q_local := '0';
    end if;
    if rising_edge (CLK) then
      if T = '1' then
        Q_local := not Q_local;
      end if;
    end if;
    Q <= Q_local;
  end process;
end behavioral;

-- EOF
