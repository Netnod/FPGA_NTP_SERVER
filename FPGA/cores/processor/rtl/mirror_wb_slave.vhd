-- VHDL wrapper for mirror_wb_slave.v --

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity mirror_wb_slave is
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

    -- wishbone slave
    wb_cyc_i  : in  std_ulogic;
    wb_stb_i  : in  std_ulogic;
    wb_we_i   : in  std_ulogic;
    wb_adr_i  : in  std_ulogic_vector(DATA_WIDTH-1 downto 0);
    wb_dat_i  : in  std_ulogic_vector(DATA_WIDTH-1 downto 0);
    wb_sel_i  : in  std_ulogic_vector(DATA_WIDTH/8-1 downto 0);
    wb_dat_o  : out std_ulogic_vector(DATA_WIDTH-1 downto 0);
    wb_ack_o  : out std_ulogic;
    wb_err_o  : out std_ulogic
  );
end mirror_wb_slave;
