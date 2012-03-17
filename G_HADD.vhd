-- G_HADD.vhd
-- Generic half adder.

library ieee;
use ieee.std_logic_1164.all;
entity G_HADD is 
  port
  (
    A : in std_logic;
    B : in std_logic;
    SUM : out std_logic;
    CO: out std_logic
  );
  end G_HADD;

library ieee;
use ieee.std_logic_1164.all;
architecture behavioral of G_HADD is
  signal s: std_logic;
    begin 
      SUM <= A xor B;
      CO <= A and B;
    end behavioral;

-- EOF
