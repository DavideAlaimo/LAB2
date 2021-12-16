LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_arith.all;

entity tb_mult_pipe is
end entity;

architecture beh of tb_mult_pipe is

component FPmul IS
   PORT( 
      FP_A : IN     std_logic_vector (31 DOWNTO 0);
      FP_B : IN     std_logic_vector (31 DOWNTO 0);
      clk : IN     std_logic;
      FP_Z : OUT    std_logic_vector (31 DOWNTO 0)
   );

-- Declarations

END component ;



component data_maker is
  port (
    CLK  : in  std_logic;
    DATA : out std_logic_vector(31 downto 0));
end component;

signal out_mult : std_logic_vector (31 downto 0);
signal clk: std_logic;
constant Ts : time := 10 ns;
signal data_file: std_logic_vector(31 downto 0);

begin

process
  begin  -- process
    if (clk = 'U') then
      clk <= '0';
    else
      clk <= not(clk);
    end if;
    wait for Ts/2;
  end process;

DataMaker : data_maker port map (clk,data_file);
Multiplier : FPmul port map (data_file,data_file,clk,out_mult);


end architecture;
