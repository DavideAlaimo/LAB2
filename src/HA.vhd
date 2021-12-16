LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_arith.all;

ENTITY HA IS
PORT (input1, input2 : IN STD_LOGIC;
      out_HA : OUT STD_LOGIC;
      carry_out : OUT STD_LOGIC);
END ENTITY;

ARCHITECTURE beh of HA IS
BEGIN
PROCESS (input1,input2) 
BEGIN
out_HA <= input1 xor input2;
carry_out <= input1 and input2;
END PROCESS;

END ARCHITECTURE;