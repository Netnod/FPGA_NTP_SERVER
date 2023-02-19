-- #################################################################################################
-- # << NEORV32 - Test Setup using the default UART-Bootloader to upload and run executables >>    #
-- # ********************************************************************************************* #
-- # BSD 3-Clause License                                                                          #
-- #                                                                                               #
-- # Copyright (c) 2023, Stephan Nolting. All rights reserved.                                     #
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
-- # The NEORV32 RISC-V Processor - https://github.com/stnolting/neorv32                           #
-- #################################################################################################

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

library neorv32;
use neorv32.neorv32_package.all;

library xil_defaultlib;
use xil_defaultlib.all;

entity neorv32_wrapper is
  generic (
    -- General --
    CLOCK_FREQUENCY              : natural := 0;      -- clock frequency of clk_i in Hz
    MEM_EXT_PIPE_MODE            : boolean := false;   -- protocol: false=classic/standard wishbone mode, true=pipelined wishbone mode
    INT_BOOTLOADER_EN            : boolean := true    -- boot configuration: true = boot explicit bootloader; false = boot from int/ext (I)MEM
    );
  port (
    -- Global control --
    clk_i       : in std_logic;       -- global clock, rising edge
    rstn_i      : in std_logic;      -- global reset, low-active, async
    -- GPIO --
    gpio_i      : in  std_ulogic_vector(7 downto 0); -- parallel output
    gpio_o      : out std_ulogic_vector(7 downto 0); -- parallel output
    -- UART0 --
    uart0_txd_o : out std_ulogic; -- UART0 send data
    uart0_rxd_i : in  std_ulogic; -- UART0 receive data
    -- Wishbone bus interface (available if MEM_EXT_EN = true) --
    wb_cyc_o       : out std_ulogic; -- valid cycle
    wb_stb_o       : out std_ulogic; -- strobe
    wb_we_o        : out std_ulogic; -- read/write
    wb_tag_o       : out std_ulogic_vector(02 downto 0); -- request tag
    wb_adr_o       : out std_ulogic_vector(31 downto 0); -- address
    wb_dat_o       : out std_ulogic_vector(31 downto 0); -- write data
    wb_sel_o       : out std_ulogic_vector(03 downto 0); -- byte enable
    wb_dat_i       : in  std_ulogic_vector(31 downto 0) := (others => 'U'); -- read data
    wb_ack_i       : in  std_ulogic := 'L'; -- transfer acknowledge
    wb_err_i       : in  std_ulogic := 'L'; -- transfer error
    -- TWI bus --
    twi_scl_i      : in  std_ulogic;
    twi_sda_i      : in  std_ulogic;
    twi_scl_o      : out  std_ulogic;
    twi_sda_o      : out  std_ulogic
  );
end entity;

architecture neorv32_wrapper_rtl of neorv32_wrapper is

  signal con_gpio_i : std_ulogic_vector(63 downto 0);
  signal con_gpio_o : std_ulogic_vector(63 downto 0);

  signal cfs_in_i   : std_ulogic_vector(1 downto 0);
  signal cfs_out_o  : std_ulogic_vector(1 downto 0);

begin

  -- The Core Of The Problem ----------------------------------------------------------------
  -- -------------------------------------------------------------------------------------------
  neorv32_top_inst: neorv32_top
  generic map (
    -- General --
    CLOCK_FREQUENCY              => CLOCK_FREQUENCY,   -- clock frequency of clk_i in Hz
    INT_BOOTLOADER_EN            => INT_BOOTLOADER_EN, -- boot configuration: true = boot explicit bootloader; false = boot from int/ext (I)MEM
    -- RISC-V CPU Extensions --
    CPU_EXTENSION_RISCV_C        => true,              -- implement compressed extension?
    CPU_EXTENSION_RISCV_M        => true,              -- implement mul/div extension?
    CPU_EXTENSION_RISCV_Zicsr    => true,              -- implement CSR system?
    CPU_EXTENSION_RISCV_Zicntr   => true,              -- implement base counters?
    -- Internal Instruction memory --
    MEM_INT_IMEM_EN              => true,              -- implement processor-internal instruction memory
    MEM_INT_IMEM_SIZE            => 16*1024,           -- size of processor-internal instruction memory in bytes
    -- Internal Data memory --
    MEM_INT_DMEM_EN              => true,              -- implement processor-internal data memory
    MEM_INT_DMEM_SIZE            => 8*1024,            -- size of processor-internal data memory in bytes
    -- Tuning Options --
    FAST_MUL_EN		 	 => true, 	       -- use DSPs for M extension's multiplier
    -- External memory interface (WISHBONE) --
    MEM_EXT_EN                   => true,              -- implement external memory bus interface?
    MEM_EXT_PIPE_MODE            => MEM_EXT_PIPE_MODE, -- protocol: false=classic/standard wishbone mode, true=pipelined wishbone mode
    -- Processor peripherals --
    IO_CFS_EN                    => true,              -- implement custom functions subsystem (CFS)?
    IO_CFS_IN_SIZE               => 2,	               -- sizeb of CFS input conduit in bits
    IO_CFS_OUT_SIZE              => 2,                 -- size of CFS output conduit in bits
    IO_GPIO_NUM                  => 8,                 -- number of GPIO input/output pairs (0..64)
    IO_MTIME_EN                  => true,              -- implement machine system timer (MTIME)?
    IO_UART0_EN                  => true               -- implement primary universal asynchronous receiver/transmitter (UART0)?
  )
  port map (
    -- Global control --
    clk_i       => clk_i,       -- global clock, rising edge
    rstn_i      => rstn_i,      -- global reset, low-active, async
    -- GPIO (available if IO_GPIO_EN = true) --
    gpio_i      => con_gpio_i,  -- parallel input
    gpio_o      => con_gpio_o,  -- parallel output
    -- primary UART0 (available if IO_GPIO_NUM > 0) --
    uart0_txd_o => uart0_txd_o, -- UART0 send data
    uart0_rxd_i => uart0_rxd_i, -- UART0 receive data

    -- Custom Functions Subsystem IO (available if IO_CFS_EN = true) --
    -- For some reason these have to be defined --
    cfs_in_i    => cfs_in_i,    -- custom function input
    cfs_out_o   => cfs_out_o,   -- custom function output

    -- Wishbone bus interface (available if MEM_EXT_EN = true) --
    wb_tag_o	=> wb_tag_o,
    wb_adr_o	=> wb_adr_o,
    wb_dat_i	=> wb_dat_i,
    wb_dat_o	=> wb_dat_o,
    wb_we_o 	=> wb_we_o,
    wb_sel_o	=> wb_sel_o,
    wb_stb_o	=> wb_stb_o,
    wb_cyc_o	=> wb_cyc_o,
    wb_ack_i	=> wb_ack_i,
    wb_err_i	=> wb_err_i
  );

  -- GPIO --
  gpio_o <= con_gpio_o(7 downto 0);
  con_gpio_i(7 downto 0) <= gpio_i;
  con_gpio_i(31 downto 8) <= x"000000";

  -- Pack TWI bus into CFS conduit
  cfs_in_i(0) <= twi_scl_i;
  cfs_in_i(1) <= twi_sda_i;
  twi_scl_o <= cfs_out_o(0);
  twi_sda_o <= cfs_out_o(1);

end architecture;
