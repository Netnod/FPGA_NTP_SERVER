--------------------------------------------------------------------------------
-- Copyright (c) 2022 Netnod AB
-- Copyright (c) 2021-2023 Arista Networks, Inc. All rights reserved.
--------------------------------------------------------------------------------
-- Author:
--   wingel@netnod.se
--   fdk-support@arista.com
--
-- Description:
--   Top level for the ntps application on l and lb2 board standards.
--
--   Licensed under BSD 3-clause license:
--     https://opensource.org/licenses/BSD-3-Clause
--
-- Tags:
--   noencrypt
--   license-bsd-3-clause
--
--------------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

library UNISIM;
use UNISIM.VCOMPONENTS.all;

use work.metamako_pkg.all;
use work.fpga_spec_pkg.all;
use work.board_pkg.all;
use work.pcie_pkg.all;
use work.phy_pkg.all;
use work.amba_pkg.all;

--------------------------------------------------------------------------------

entity top is
  generic (
    PROJECT_NAME_G  : string     := "lseries_ntps    ";
    I2C_BASE_ADDR_G : i2c_addr_t := "1110010";

    -- Simulation Configuration
    SIM_SPEEDUP_G   : boolean    := false -- Set True for Simulation Only!!!
    );
  port (
    refclk_25        : in    std_logic;
    refclk_25_rst    : in    std_logic;
    refclk_50        : in    std_logic;
    refclk_50_rst    : in    std_logic;

    refclk_user      : in    std_logic_vector(NUM_USER_REFCLKS_C-1 downto 0);
    refclk_out       : out   diffpair_t;

    pps_in_n         : in    std_logic;
    pps_out          : out   std_logic;
    ts_clk_in        : in    std_logic;
    ts_diff_clk      : in    diffpair_t;
    ts_clk_out       : out   std_logic;

    sync_in          : in    diffpair_t;
    sync_out         : out   diffpair_t;

    i2c_scl_in       : in    std_logic_vector(NUM_I2C_C-1 downto 1);
    i2c_scl_out      : out   std_logic_vector(NUM_I2C_C-1 downto 1)  := (others => '1');
    i2c_sda_in       : in    std_logic_vector(NUM_I2C_C-1 downto 1);
    i2c_sda_out      : out   std_logic_vector(NUM_I2C_C-1 downto 1)  := (others => '1');
    gpio_in          : in    std_logic_vector(NUM_GPIO_C-1 downto 0);
    gpio_out         : out   std_logic_vector(NUM_GPIO_C-1 downto 0) := (others => '0');
    gpio_tri         : out   std_logic_vector(NUM_GPIO_C-1 downto 0) := (others => '1');

    gt_cfg           : in    gt_cfg_t(NUM_GT_PORTS_C downto 1);
    gt_refclk        : in    diffpair_vector_t(NUM_GT_REFCLKS_C-1 downto 0);
    gt_tx            : out   diffpair_vector_t(NUM_GT_PORTS_C downto 1);
    gt_rx            : in    diffpair_vector_t(NUM_GT_PORTS_C downto 1);

    pcie_root2ep     : in    pcie_8lane_root2ep_t;
    pcie_ep2root     : out   pcie_8lane_ep2root_t;

    ddr4_sysclk      : in    diffpair_vector_t(NUM_DIMMS_C-1 downto 0);
    ddr4_data_strobe : inout ddr4_inout_array_t(NUM_DIMMS_C-1 downto 0);
    ddr4_ctrl        : out   ddr4_host2mem_array_t(NUM_DIMMS_C-1 downto 0);

    fpga_id          : in    std_logic_vector(2 downto 0);

    sysmon_alm       : in    std_logic_vector(15 downto 0);
    crc_error        : out   std_logic := '0';

    -- Signals below are deprecated and disabled,
    -- and will be removed in a future version of the FDK.
    fpga_dna         : in    std_logic_vector(95 downto 0);
    mac_addr         : in    slv48_array_t(NUM_GT_PORTS_C downto 1);

    -- Signals below are reserved and subject to change.
    reserved_in      : in    top_reserved_in_t;
    reserved_out     : out   top_reserved_out_t := TOP_RESERVED_OUT_DFLT_C
    );
end entity top;

--------------------------------------------------------------------------------

architecture rtl of top is

  --------------------------------------------------------------------------------
  -- Constant Declarations
  --------------------------------------------------------------------------------
  constant FPGA_FAMILY_C : mm_fpga_family_t := mm_get_fpga_family(FPGA_TARGET_C);

  constant PRI_GTREFCLK_C : string := "PRI";   -- Do not change value
  constant SEC_GTREFCLK_C : string := "SEC";   -- Do not change value

  --------------------------------------------------------------------------------
  -- Signal Declarations
  --------------------------------------------------------------------------------
  -- Timing Reference Signals
  signal pps          : std_logic;
  signal pps_n        : std_logic;
  signal ts_clk_buf   : std_logic;
  signal refclk_ts    : std_logic;

  -- XCVR Interfacing
  -- signal gt_refclk_buf    : std_logic_vector(NUM_GT_REFCLKS_C-1 downto 0);

  -- MacPhy Status & Control
  signal axi_rxclk              : std_logic_vector(3 downto 0);
  signal axi_rxrst              : std_logic_vector(3 downto 0);
  signal axi_rxstd              : axi4s32_std_array_t(3 downto 0);
  signal axi_rxlocked           : std_logic_vector(3 downto 0);
  signal rxsof_trigger          : std_logic_vector(3 downto 0);

  -- Timestamp Control and Status
  signal ts_clk_sel             : std_logic;
  signal ts_clk_active          : std_logic;
  signal ts_ctl_apply_init      : std_logic;
  signal ts_ctl_apply_init_src  : std_logic_vector(2 downto 0);
  signal ts_ctl_init_val_ns     : std_logic_vector(63 downto 0);
  signal ts_ctl_init_val_ts     : std_logic_vector(63 downto 0);
  signal ts_ctl_apply_add_skip  : std_logic;
  signal ts_ctl_add_skipn       : std_logic;
  signal ts_ctl_add_skip_period : std_logic_vector(31 downto 0);

  signal ts_add_skip_inc        : std_logic_vector(1 downto 0);
  signal ts_result_vld          : std_logic_vector(1 downto 0);
  signal ts_result              : slv64_array_t(1 downto 0);
  signal rxsof_timestamp_vld    : std_logic_vector(3 downto 0);
  signal rxsof_timestamp        : slv64_array_t(3 downto 0);

  -- I2C
  signal ntps_scl_out         : std_logic;
  signal ntps_sda_out         : std_logic;

  signal reg_scl_out          : std_logic;
  signal reg_sda_out          : std_logic;

  -- Register Interface
  signal reg_addr_vld           : std_logic;
  signal reg_addr               : std_logic_vector(15 downto 0);
  signal reg_rdat_vld           : std_logic;
  signal reg_rdat               : std_logic_vector(31 downto 0);
  signal reg_wdat_vld           : std_logic;
  signal reg_wdat               : std_logic_vector(31 downto 0);

  signal axi_rxlocked_reg       : std_logic_vector(3 downto 0);
  signal pkt_count_we           : std_logic_vector(3 downto 0);
  signal pkt_count_inc          : slv8_array_t(3 downto 0) := (others => (others => '0'));

  signal internal_pps           : std_logic;
  signal beat_send              : std_logic;
  signal beat_recv              : std_logic;

--------------------------------------------------------------------------------

begin

  --------------------------------------------------------------------------------
  -- Transceiver Reference Clocks
  --
  -- gen_refclk_buf : for i in 0 to NUM_GT_REFCLKS_C-1 generate
  --   gen_ibufds_usp : if FPGA_FAMILY_C = MM_FPGA_ULTRASCALEP generate
  --     ibufds_refclk_i : IBUFDS_GTE4
  --       generic map (
  --         REFCLK_EN_TX_PATH  => '0',
  --         REFCLK_HROW_CK_SEL => "00",
  --         REFCLK_ICNTL_RX    => "00"
  --         )
  --       port map (
  --         I     => gt_refclk(i).p,
  --         IB    => gt_refclk(i).n,
  --         CEB   => '0',
  --         O     => gt_refclk_buf(i),
  --         ODIV2 => open
  --         );
  --   end generate;
  -- end generate;

  ------------------------------------------------------------------------------
  -- Merge I2C signals
  --

  i2c_scl_out(1) <= ntps_scl_out and reg_scl_out;
  i2c_sda_out(1) <= ntps_sda_out and reg_sda_out;

  ------------------------------------------------------------------------------
  -- NTPS Top
  --
  ntps_top_0 : entity ntps_top
    port map (
      refclk_25      => refclk_25,
      refclk_25_rst  => refclk_25_rst,

      refclk_50      => refclk_50,
      refclk_50_rst  => refclk_50_rst,

      scl_in         => i2c_scl_in(1),
      scl_low_n      => ntps_scl_out,
      sda_in         => i2c_sda_in(1),
      sda_low_n      => ntps_sda_out,

      ten_mhz_ina    => refclk_ts,
      pps_ina        => internal_pps,

      ten_mhz_inb    => refclk_ts,
      pps_inb        => pps,

      internal_pps   => internal_pps,
      beat_send      => beat_send,
      beat_recv      => beat_recv,

      qsfp1_mgt_refclk_0_p => gt_refclk(get_refclk_idx(156, 4/4-1)).p,
      qsfp1_mgt_refclk_0_n => gt_refclk(get_refclk_idx(156, 4/4-1)).n,

      qsfp1_tx1_p    => gt_tx(1).p,
      qsfp1_tx1_n    => gt_tx(1).n,

      qsfp1_tx2_p    => gt_tx(2).p,
      qsfp1_tx2_n    => gt_tx(2).n,

      qsfp1_tx3_p    => gt_tx(3).p,
      qsfp1_tx3_n    => gt_tx(3).n,

      qsfp1_tx4_p    => gt_tx(4).p,
      qsfp1_tx4_n    => gt_tx(4).n,

      qsfp1_rx1_p    => gt_rx(1).p,
      qsfp1_rx1_n    => gt_rx(1).n,

      qsfp1_rx2_p    => gt_rx(2).p,
      qsfp1_rx2_n    => gt_rx(2).n,

      qsfp1_rx3_p    => gt_rx(3).p,
      qsfp1_rx3_n    => gt_rx(3).n,

      qsfp1_rx4_p    => gt_rx(4).p,
      qsfp1_rx4_n    => gt_rx(4).n
      )
  ;

--  gen_axirx_ts : for i in 0 to 3 generate
--    rxsof_trigger(i) <= axi_rxstd(i).tfirst and axi_rxstd(i).tvalid and axi_rxlocked(i);
--  end generate;

   rxsof_trigger(0) <= pps;
   rxsof_trigger(1) <= internal_pps;
   rxsof_trigger(2) <= beat_send;
   rxsof_trigger(3) <= beat_recv;

  --------------------------------------------------------------------------------
  -- Timestamp IPCore
  --
  tscore_i : entity work.tscore_wrapper
    generic map (
      FPGA_FAMILY_G      => FPGA_FAMILY_C,
      SYS_CLK_FREQ_G     => 156,
      PPS_IN_INVERTED_G  => true,
      GPIO_IN_INVERTED_G => true,

      NUM_TS_TRIGGERS_G  => 4
      )
    port map (
      -- Timing Reference Sources
      refclk_user  => refclk_user(0), -- 156.25MHz
      refclk_ts    => refclk_ts,
      pps_in_gpio  => gpio_in(3),
      pps_in       => pps_n,

      -- Register interface
      reg_clk                => refclk_25,
      reg_rst                => refclk_25_rst,
      ts_clk_sel             => ts_clk_sel,
      ts_clk_active          => ts_clk_active,
      ts_ctl_apply_init      => ts_ctl_apply_init,
      ts_ctl_apply_init_src  => ts_ctl_apply_init_src,
      ts_ctl_init_val_ns     => ts_ctl_init_val_ns,
      ts_ctl_init_val_ts     => ts_ctl_init_val_ts,
      ts_ctl_apply_add_skip  => ts_ctl_apply_add_skip,
      ts_ctl_add_skipn       => ts_ctl_add_skipn,
      ts_ctl_add_skip_period => ts_ctl_add_skip_period,
      ts_add_skip_inc        => ts_add_skip_inc,
      ts_result_vld          => ts_result_vld,
      ts_result              => ts_result,

      -- TS Trigger Interface
      trigger                => rxsof_trigger,
      trig_timestamp_vld     => rxsof_timestamp_vld,
      trig_timestamp         => rxsof_timestamp
      );

  --------------------------------------------------------------------------------
  -- Register Interfacing
  --
  i2c_slave_i : entity work.i2c_reg_protocol
    port map (
      clk       => refclk_25,
      rst       => refclk_25_rst,
      base_addr => I2C_BASE_ADDR_G,

      -- I2C Bus interface
      scl_in    => i2c_scl_in(1),
      scl_low_n => reg_scl_out,
      sda_in    => i2c_sda_in(1),
      sda_low_n => reg_sda_out,

      -- Register Interface
      reg_avld  => reg_addr_vld,
      reg_addr  => reg_addr,
      reg_rvld  => reg_rdat_vld,
      reg_rdata => reg_rdat,
      reg_wvld  => reg_wdat_vld,
      reg_wdata => reg_wdat
      );

  registers_i : entity work.ntps_registers
    generic map (
      PROJECT_NAME_G => PROJECT_NAME_G
      )
    port map (
      reg_clk   => refclk_25,
      reg_avld  => reg_addr_vld,
      reg_addr  => reg_addr,
      reg_rvld  => reg_rdat_vld,
      reg_rdata => reg_rdat,
      reg_wvld  => reg_wdat_vld,
      reg_wdata => reg_wdat,

      -- Status
      fpga_id    => fpga_id,
      rxlock_sts => axi_rxlocked_reg,

      -- Counters
      pkt_count_we  => pkt_count_we,
      pkt_count_inc => pkt_count_inc,

      -- Time Stamp Control & Results
      ts_clk_sel             => ts_clk_sel,
      ts_clk_active          => ts_clk_active,

      ts_ctl_apply_init      => ts_ctl_apply_init,
      ts_ctl_apply_init_src  => ts_ctl_apply_init_src,
      ts_ctl_init_val_ns     => ts_ctl_init_val_ns,
      ts_ctl_init_val_ts     => ts_ctl_init_val_ts,
      ts_ctl_apply_add_skip  => ts_ctl_apply_add_skip,
      ts_ctl_add_skipn       => ts_ctl_add_skipn,
      ts_ctl_add_skip_period => ts_ctl_add_skip_period,
      ts_add_skip_inc        => ts_add_skip_inc,

      ts_result_vld          => ts_result_vld,
      ts_result              => ts_result,
      rxsof_timestamp_vld    => rxsof_timestamp_vld,
      rxsof_timestamp        => rxsof_timestamp
      );

  -- Synchronisation to Register Clock Domain
  gen_reg_sync : for i in 0 to 3 generate
    rxlock_sync_i : entity work.synchroniser
      port map (
        clk    => refclk_25,
        rst    => refclk_25_rst,
        a      => axi_rxlocked(i),
        a_sync => axi_rxlocked_reg(i)
        );

    pkt_count_sync_i : entity work.reg_hs_counter
      generic map (
        HS_PIPE_G      => 2,
        HS_CLK_FREQ_G  => 322,
        REG_CLK_FREQ_G => 25,
        IS_MASTER_G    => true
        )
      port map (
        -- High-Speed Domain
        hs_clk        => axi_rxclk(i),
        hs_pulse      => rxsof_trigger(i),

        -- Regfile Domain
        reg_clk       => refclk_25,
        master_sample => open,
        reg_sample    => '0',

        reg_we        => pkt_count_we(i),
        reg_count     => pkt_count_inc(i)(4 downto 0)
        );

--    axi_txclk(i) <= axi_rxclk(i);
--    axi_txrst(i) <= open;
--    axi_txstd(i) <= axi4s32_std_dflt_c;
--    axi_txdts(i) <= open;

  end generate;

  --------------------------------------------------------------------------------
  -- Timing References
  --
  ibuf_pps : IBUF
    port map (
      I => pps_in_n,
      O => pps_n
      );

  pps <= not pps_n;

  obuf_pps : OBUF
    port map (
      I => pps,
      O => pps_out
      );

  ibuf_ts_clk : IBUF
    port map (
      I => ts_clk_in,
      O => ts_clk_buf
      );

  bufg_ts_clk : BUFG
    port map (
      I => ts_clk_buf,
      O => refclk_ts
      );

  obuf_ts_clk : OBUF
    port map (
      I => refclk_ts,
      O => ts_clk_out
      );

  obufds_refclk : OBUFDS
    port map (
      I  => '0',
      O  => refclk_out.p,
      OB => refclk_out.n
      );

  obufds_sync_out : OBUFDS
    port map (
      I  => '1',
      O  => sync_out.p,
      OB => sync_out.n
      );

  --------------------------------------------------------------------------------
  -- Unused Tieoffs Signals
  --
  gen_num_ddrs : for i in 0 to NUM_DIMMS_C-1 generate
    ddr4_data_strobe(i).dq <= (others => 'Z');
    ddr4_data_strobe(i).dm <= (others => 'Z');

    ddr4_ctrl(i).addr      <= (others => '0');
    ddr4_ctrl(i).ba        <= (others => '0');
    ddr4_ctrl(i).bg        <= (others => '0');
    ddr4_ctrl(i).reset_n   <= '1';
    ddr4_ctrl(i).cke       <= (others => '0');
    ddr4_ctrl(i).cs_n      <= (others => '1');
    ddr4_ctrl(i).odt       <= (others => '0');
    ddr4_ctrl(i).act_n     <= '1';
    ddr4_ctrl(i).parity    <= '0';

    gen_ck_ties : for j in ddr4_ctrl(i).ck'range generate
      obufds_ddr4_ck : OBUFDS
        port map (
          I  => '0',
          O  => ddr4_ctrl(i).ck(j).p,
          OB => ddr4_ctrl(i).ck(j).n
          );
    end generate;

    gen_strobe_ties : for j in ddr4_data_strobe(i).dqs'range generate
      iobufds_ddr4_dqs : IOBUFDS
        port map (
          IO  => ddr4_data_strobe(i).dqs(j).p,
          IOB => ddr4_data_strobe(i).dqs(j).n,
          I   => '0',
          O   => open,
          T   => '1'
          );
    end generate;

    ibufds_ddr4_sysclk : IBUFDS
      port map (
        I  => ddr4_sysclk(i).p,
        IB => ddr4_sysclk(i).n,
        O  => open
        );
  end generate;

end architecture rtl;

--------------------------------------------------------------------------------
