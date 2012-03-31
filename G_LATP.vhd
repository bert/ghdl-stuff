-- G_LATP.vhd
-- Generic latch with enable and preset.

library ieee;
use ieee.std_logic_1164.all;
entity G_LATP is
  port
  (
    D : In std_logic;
    E : In std_logic;
    P : In std_logic;
    Q : Out std_logic
  );
end G_LATP;

library ieee;
use ieee.std_logic_1164.all;
architecture behavioral of G_LATP is
begin
  process (P, E, D)
  begin
    if P = '1' then
      Q <= '1';
    elsif E = '1' then
      Q <= D;
    end if;
  end process;
end behavioral;

-- EOF
