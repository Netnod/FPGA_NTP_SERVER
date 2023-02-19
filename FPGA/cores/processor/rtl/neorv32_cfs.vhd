-- #################################################################################################
-- # << NEORV32 - Custom Functions Subsystem (CFS) >>                                              #
-- # ********************************************************************************************* #
-- # Intended for tightly-coupled, application-specific custom co-processors. This module provides #
-- # 32x 32-bit memory-mapped interface registers, one interrupt request signal and custom IO      #
-- # conduits for processor-external or chip-external interface.                                   #
-- #                                                                                               #
-- # NOTE: This is just an example/illustration template. Modify/replace this file to implement    #
-- #       your own custom design logic.                                                           #
-- # ********************************************************************************************* #
-- # BSD 3-Clause License                                                                          #
-- #                                                                                               #
-- # Copyright (c) 2022, Stephan Nolting. All rights reserved.                                     #
-- #                                                                                               #
-- # Redistribution and use in source and binary forms, with or without modification, are          #
-- # permitted provided that the following conditions are met:                                     #
-- #                                                                                               #
-- # 1. Redistributions of source code must retain the above copyright notice, this list of        #
-- #    conditions and the following disclaimer.                                                   #
-- #                                                                                               #
-- # 2. Redistributions in binary form must reproduce the above copyright notice, this list of     #
-- #    conditions and the following disclaimer in the documentation and/or other materials        #
-- #    provided with the distribution.                                                            #
-- #                                                                                               #
-- # 3. Neither the name of the copyright holder nor the names of its contributors may be used to  #
-- #    endorse or promote products derived from this software without specific prior written      #
-- #    permission.                                                                                #
-- #                                                                                               #
-- # THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND ANY EXPRESS   #
-- # OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF               #
-- # MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE    #
-- # COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL,     #
-- # EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE #
-- # GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED    #
-- # AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING     #
-- # NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED  #
-- # OF THE POSSIBILITY OF SUCH DAMAGE.                                                            #
-- # ********************************************************************************************* #
-- # The NEORV32 Processor - https://github.com/stnolting/neorv32              (c) Stephan Nolting #
-- #################################################################################################

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

library neorv32;
use neorv32.neorv32_package.all;

library xil_defaultlib;
use xil_defaultlib.all;

entity neorv32_cfs is
  generic (
    CFS_CONFIG   : std_ulogic_vector(31 downto 0); -- custom CFS configuration generic
    CFS_IN_SIZE  : positive; -- size of CFS input conduit in bits
    CFS_OUT_SIZE : positive  -- size of CFS output conduit in bits
  );
  port (
    -- host access --
    clk_i       : in  std_ulogic; -- global clock line
    rstn_i      : in  std_ulogic; -- global reset line, low-active, use as async
    priv_i      : in  std_ulogic; -- current CPU privilege mode
    addr_i      : in  std_ulogic_vector(31 downto 0); -- address
    rden_i      : in  std_ulogic; -- read enable
    wren_i      : in  std_ulogic; -- word write enable
    data_i      : in  std_ulogic_vector(31 downto 0); -- data in
    data_o      : out std_ulogic_vector(31 downto 0); -- data out
    ack_o       : out std_ulogic; -- transfer acknowledge
    err_o       : out std_ulogic; -- transfer error
    -- clock generator --
    clkgen_en_o : out std_ulogic; -- enable clock generator
    clkgen_i    : in  std_ulogic_vector(07 downto 0); -- "clock" inputs
    -- interrupt --
    irq_o       : out std_ulogic; -- interrupt request
    -- custom io (conduits) --
    cfs_in_i    : in  std_ulogic_vector(CFS_IN_SIZE-1 downto 0);  -- custom inputs
    cfs_out_o   : out std_ulogic_vector(CFS_OUT_SIZE-1 downto 0)  -- custom outputs
  );
end neorv32_cfs;

architecture neorv32_cfs_rtl of neorv32_cfs is

  -- IO space: module base address --
  -- WARNING: Do not modify the CFS base address or the CFS' occupied address
  -- space as this might cause access collisions with other processor modules.
  constant hi_abb_c : natural := index_size_f(io_size_c)-1; -- high address boundary bit
  constant lo_abb_c : natural := index_size_f(cfs_size_c); -- low address boundary bit

  -- access control --
  signal acc_en : std_ulogic; -- module access enable
  signal addr   : std_ulogic_vector(4 downto 0); -- access address
  signal wren   : std_ulogic; -- word write enable
  signal rden   : std_ulogic; -- read enable

  -- TWI bus --
  signal twi_scl_i : std_ulogic;
  signal twi_sda_i : std_ulogic;
  signal twi_scl_o : std_ulogic;
  signal twi_sda_o : std_ulogic;

begin

  -- Access Control -------------------------------------------------------------------------
  -- -------------------------------------------------------------------------------------------
  acc_en <= '1' when (addr_i(hi_abb_c downto lo_abb_c) = cfs_base_c(hi_abb_c downto lo_abb_c)) else '0';
  addr   <= addr_i(lo_abb_c-1 downto 2);
  wren   <= acc_en and wren_i; -- only full-word write accesses are supported
  rden   <= acc_en and rden_i; -- read accesses always return a full 32-bit word

  clkgen_en_o <= '0'; -- not used
  irq_o       <= '0'; -- not used
  err_o       <= '0'; -- never signals errors

  cfs_twi_slave_inst : entity cfs_twi_slave
  generic map (
    ADDR_WIDTH => lo_abb_c-2
    )
  port map (
    -- Global control --
    clk_i       => clk_i,       -- global clock, rising edge
    rstn_i      => rstn_i,      -- global reset, low-active, async

    -- Neorv bus --
    wren_i      => wren,
    rden_i      => rden,
    addr_i      => addr,
    data_i      => data_i,
    data_o      => data_o,
    ack_o       => ack_o,

    -- TWI bus
    twi_scl_i   => twi_scl_i,
    twi_sda_i   => twi_sda_i,
    twi_scl_o   => twi_scl_o,
    twi_sda_o   => twi_sda_o
    );

  -- pack wishbone bus into cfs registers
  cfs_out_o(0) <= twi_scl_o;
  cfs_out_o(1) <= twi_sda_o;

  twi_scl_i <= cfs_in_i(0);
  twi_sda_i <= cfs_in_i(1);

end neorv32_cfs_rtl;
