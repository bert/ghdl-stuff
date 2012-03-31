-- G_LATC.vhd
-- Generic latch with enable and clear.

library ieee;
use ieee.std_logic_1164.all;
entity G_LATC is
  port
  (
    D : In std_logic;
    E : In std_logic;
    C : In std_logic;
    Q : Out std_logic
  );
end G_LATC;

library ieee;
use ieee.std_logic_1164.all;
architecture behavioral of G_LATC is
begin
  process(C,E,D)
  begin
    if C = '1' then
      Q <= '0';
    elsif E = '1' then
      Q <= D;
    end if;
  end process;
end behavioral;

-- EOF
