-- G_LATPC.vhd
-- Generic latch with enable and preset and clear.

library ieee;
use ieee.std_logic_1164.all;
entity G_LATPC is
  port
  (
    D : In std_logic;
    E : In std_logic;
    P : In std_logic;
    C : In std_logic;
    Q : Out std_logic
  );
end G_LATPC;

library ieee;
use ieee.std_logic_1164.all;
architecture behavioral of G_LATPC is
begin
  process (C, P, E, D)
  begin
    if C = '1' then
      Q <= '0';
    elsif P = '1' then
      Q <= '1';
    elsif E = '1' then
      Q <= D;
    end if;
  end process;
end behavioral;

-- EOF
