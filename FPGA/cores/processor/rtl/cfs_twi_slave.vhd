-- VHDL wrapper for cfs_twi_slave.v --

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity cfs_twi_slave is
  generic (
    ADDR_WIDTH   : positive := 4;
    DATA_WIDTH   : positive := 32
  );
  port (
    clk_i     : in  std_ulogic;
    rstn_i    : in  std_ulogic;

    -- host bus
    rden_i    : in  std_ulogic;
    wren_i    : in  std_ulogic;
    addr_i    : in  std_ulogic_vector(ADDR_WIDTH-1 downto 0);
    data_i    : in  std_ulogic_vector(DATA_WIDTH-1 downto 0);
    data_o    : out std_ulogic_vector(DATA_WIDTH-1 downto 0);
    ack_o     : out std_ulogic;

    -- TWI bus --
    twi_scl_i      : in  std_ulogic;
    twi_sda_i      : in  std_ulogic;
    twi_scl_o      : out  std_ulogic;
    twi_sda_o      : out  std_ulogic
  );
end cfs_twi_slave;
