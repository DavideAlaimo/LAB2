
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Reg is
generic ( N: integer:= 8);
port (CLK : in std_logic;
      EN: IN STD_LOGIC;
      DATA_IN : IN STD_LOGIC_VECTOR (N-1 DOWNTO 0);
      DATA_OUT : OUT STD_LOGIC_VECTOR(N-1 DOWNTO 0));
end entity;

architecture beh of Reg is
begin
process (CLK)
variable  data:  STD_LOGIC_VECTOR (N-1  downto  0);
begin


IF(CLK'event  and  CLK='1') then 
	IF (EN ='1') THEN
		DATA_OUT <= DATA_IN;
		data:= DATA_IN; 
	ELSE 
		
 		DATA_OUT<=data;
	end if;


end if;
end  process;
end architecture;