-- G_MUX41.vhd
-- Generic 4 to 1 multiplexer.

library ieee;
use ieee.std_logic_1164.all;
entity G_MUX41 is
  port
  (
    A : In std_logic;
    B : In std_logic;
    C : In std_logic;
    D : In std_logic;
    S0 : In std_logic;
    S1 : In std_logic;
    Y : Out std_logic
  );
end G_MUX41;

library ieee;
use ieee.std_logic_1164.all;
architecture behavioral of G_MUX41 is
  begin
    P1: process (A, B, C, D, S1, S0)
    begin
      if S1 = '0' then   
        if S0 = '0' then   
          Y <= A;
        elsif S0 = '1' then 
          Y <= B;
        end if;
      elsif S1 = '1' then
        if S0 = '0' then   
          Y <= C;
        elsif S0 = '1' then 
           Y <= D;
        end if;
      end if;
    end process P1;
  end behavioral;


-- EOF
