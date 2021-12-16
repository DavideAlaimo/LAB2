LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_arith.all;

ENTITY MUX_PRODUCT IS
PORT (IN1, IN2, IN3 : IN STD_LOGIC_VECTOR(32 DOWNTO 0);
      SELECTOR : IN STD_LOGIC_VECTOR (2 DOWNTO 0);
      OUT_MUX : OUT STD_LOGIC_VECTOR (32 DOWNTO 0));
END ENTITY;

ARCHITECTURE BEH OF MUX_PRODUCT IS

BEGIN
--in1 -> 0
--in2 -> a
--in3 -> 2a
PROCESS (IN1,IN2,IN3,SELECTOR)
BEGIN
IF (SELECTOR = "000" OR SELECTOR="111") THEN OUT_MUX<=IN1;
ELSIF (SELECTOR="001" OR SELECTOR="010" OR SELECTOR="101" OR SELECTOR="110") THEN OUT_MUX<=IN2;
ELSIF (SELECTOR = "011" OR SELECTOR="100") THEN OUT_MUX<=IN3;
ELSE OUT_MUX<=IN1;
END IF;
END PROCESS;

END ARCHITECTURE;