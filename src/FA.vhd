LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_arith.all;

ENTITY FA IS
PORT (input1, input2 : IN STD_LOGIC;
      carry_in : IN STD_LOGIC;
      out_FA : OUT STD_LOGIC;
      carry_out : OUT STD_LOGIC);
END ENTITY;

ARCHITECTURE beh of FA IS
BEGIN
PROCESS (input1,input2,carry_in) 
BEGIN
out_FA <= input1 xor input2 xor carry_in;
carry_out <= (input1 and input2) or (carry_in and input1) or (carry_in and input2);
END PROCESS;

END ARCHITECTURE;
