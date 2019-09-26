-------------------------------------------------------------------------------
-- mdio_if.vhd - entity/architecture pair
-------------------------------------------------------------------------------
--  ***************************************************************************
--  ** DISCLAIMER OF LIABILITY                                               **
--  **                                                                       **
--  **  This file contains proprietary and confidential information of       **
--  **  Xilinx, Inc. ("Xilinx"), that is distributed under a license         **
--  **  from Xilinx, and may be used, copied and/or disclosed only           **
--  **  pursuant to the terms of a valid license agreement with Xilinx.      **
--  **                                                                       **
--  **  XILINX IS PROVIDING THIS DESIGN, CODE, OR INFORMATION                **
--  **  ("MATERIALS") "AS IS" WITHOUT WARRANTY OF ANY KIND, EITHER           **
--  **  EXPRESSED, IMPLIED, OR STATUTORY, INCLUDING WITHOUT                  **
--  **  LIMITATION, ANY WARRANTY WITH RESPECT TO NONINFRINGEMENT,            **
--  **  MERCHANTABILITY OR FITNESS FOR ANY PARTICULAR PURPOSE. Xilinx        **
--  **  does not warrant that functions included in the Materials will       **
--  **  meet the requirements of Licensee, or that the operation of the      **
--  **  Materials will be uninterrupted or error-free, or that defects       **
--  **  in the Materials will be corrected. Furthermore, Xilinx does         **
--  **  not warrant or make any representations regarding use, or the        **
--  **  results of the use, of the Materials in terms of correctness,        **
--  **  accuracy, reliability or otherwise.                                  **
--  **                                                                       **
--  **  Xilinx products are not designed or intended to be fail-safe,        **
--  **  or for use in any application requiring fail-safe performance,       **
--  **  such as life-support or safety devices or systems, Class III         **
--  **  medical devices, nuclear facilities, applications related to         **
--  **  the deployment of airbags, or any other applications that could      **
--  **  lead to death, personal injury or severe property or                 **
--  **  environmental damage (individually and collectively, "critical       **
--  **  applications"). Customer assumes the sole risk and liability         **
--  **  of any use of Xilinx products in critical applications,              **
--  **  subject only to applicable laws and regulations governing            **
--  **  limitations on product liability.                                    **
--  **                                                                       **
--  **  Copyright 2010 Xilinx, Inc.                                          **
--  **  All rights reserved.                                                 **
--  **                                                                       **
--  **  This disclaimer and copyright notice must be retained as part        **
--  **  of this file at all times.                                           **
--  ***************************************************************************
--
-------------------------------------------------------------------------------
-- Filename     : mdio_if.vhd
-- Version      : v2.0
-- Description  : This entity provides the interface between the physical layer
--                management control, and the host interface through the MAC. 
-- VHDL-Standard: VHDL'93
-------------------------------------------------------------------------------
-- Structure:   
--
--  axi_ethernetlite.vhd
--      \
--      \-- axi_interface.vhd
--      \-- xemac.vhd
--           \
--           \-- mdio_if.vhd
--           \-- emac_dpram.vhd                     
--           \    \                     
--           \    \-- RAMB16_S4_S36
--           \                          
--           \    
--           \-- emac.vhd                     
--                \                     
--                \-- MacAddrRAM                   
--                \-- receive.vhd
--                \      rx_statemachine.vhd
--                \      rx_intrfce.vhd
--                \         async_fifo_fg.vhd
--                \      crcgenrx.vhd
--                \                     
--                \-- transmit.vhd
--                       crcgentx.vhd
--                          crcnibshiftreg
--                       tx_intrfce.vhd
--                          async_fifo_fg.vhd
--                       tx_statemachine.vhd
--                       deferral.vhd
--                          cntr5bit.vhd
--                          defer_state.vhd
--                       bocntr.vhd
--                          lfsr16.vhd
--                       msh_cnt.vhd
--                       ld_arith_reg.vhd
--
-------------------------------------------------------------------------------
-- Author:    PVK
-- History:    
-- PVK        06/07/2010     First Version
-- ^^^^^^
-- First version.  
-- ~~~~~~
-------------------------------------------------------------------------------
-- Naming Conventions:
--      active low signals:                     "*_n"
--      clock signals:                          "clk", "clk_div#", "clk_#x" 
--      reset signals:                          "rst", "rst_n" 
--      generics:                               "C_*" 
--      user defined types:                     "*_TYPE" 
--      state machine next state:               "*_ns" 
--      state machine current state:            "*_cs" 
--      combinatorial signals:                  "*_com" 
--      pipelined or register delay signals:    "*_d#" 
--      counter signals:                        "*cnt*"
--      clock enable signals:                   "*_ce" 
--      internal version of output port         "*_i"
--      device pins:                            "*_pin" 
--      ports:                                  - Names begin with Uppercase 
--      processes:                              "*_PROCESS" 
--      component instantiations:               "<ENTITY_>I_<#|FUNC>
-------------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_arith.all;

library axi_ethernetlite_v3_0;
use axi_ethernetlite_v3_0.all;

-------------------------------------------------------------------------------
-- Definition of Ports:
--
--  Clk             -- System Clock
--  Rst             -- System Reset
--  MDIO_Clk        -- 2.5Mhz clock
--  MDIO_en         -- MDIO enable
--  MDIO_OP         -- MDIO OP code
--  MDIO_Req        -- MDIO transmission request
--  MDIO_PHY_AD     -- The physical layer address
--  MDIO_REG_AD     -- The individual register address
--  MDIO_WR_DATA    -- The data to be written on MDIO
--  MDIO_RD_DATA    -- The data read from MDIO
--  PHY_MDIO_I      -- MDIO Tri-state input from PHY
--  PHY_MDIO_O      -- MDIO Tri-state output to PHY
--  PHY_MDIO_T      -- MDIO Tri-state control
--  PHY_MDC         -- 2.5Mhz communication clock to PHY
--  MDIO_done       -- RX FIFO read ack
-------------------------------------------------------------------------------
-- ENTITY
-------------------------------------------------------------------------------
entity mdio_if is
   port (
      Clk            : in std_logic;   -- System Clock  
      Rst            : in std_logic;   -- System Reset  
      MDIO_Clk       : in std_logic;   -- 2.5Mhz clock
      MDIO_en        : in std_logic;   -- MDIO enable 
      MDIO_OP        : in std_logic;   -- MDIO OP code
      MDIO_Req       : in std_logic;   -- MDIO transmission request
      MDIO_PHY_AD    : in std_logic_vector(4 downto 0);    
                                       -- The physical layer address
      MDIO_REG_AD    : in std_logic_vector(4 downto 0);    
                                       -- The individual register address
      MDIO_WR_DATA   : in std_logic_vector(15 downto 0);   
                                       -- The data to be written on MDIO
      MDIO_RD_DATA   : out std_logic_vector(15 downto 0);  
                                       -- The data read from MDIO
      PHY_MDIO_I     : in std_logic;   -- MDIO Tri-state input from PHY 
      PHY_MDIO_O     : out std_logic;  -- MDIO Tri-state output to PHY
      PHY_MDIO_T     : out std_logic;  -- MDIO Tri-state control
      PHY_MDC        : out std_logic;  -- 2.5Mhz communication clock
      MDIO_done      : out std_logic   -- MDIO tranfer done indicator
   );
end mdio_if;


architecture imp of mdio_if is

attribute DowngradeIPIdentifiedWarnings: string;

attribute DowngradeIPIdentifiedWarnings of imp : architecture is "yes";

-------------------------------------------------------------------------------
--  Signal and Type Declarations
-------------------------------------------------------------------------------
type mdio_state_type is (IDLE, PREAMBLE, ST1, ST2, OP1, OP2, TA1, TA2,
                         PHY_ADDR, REG_ADDR, WRITE, READ, DONE);

signal mdio_state, next_state : mdio_state_type;

signal mdio_xfer_done : std_logic;   -- pulse to inidcate end of activity
signal mdio_idle      : std_logic;   -- internal READY signal
signal rd_data_en     : std_logic_vector(15 downto 0);   -- decoded write 
                                     -- MDIO_en for RD_DATA
signal mdio_en_reg    : std_logic;   -- MDIO_en signal latched at start of 
                                     -- transmission
signal mdio_o_cmb     : std_logic;   -- rising edge version of MDIO_OUT
signal mdio_t_comb    : std_logic;   -- combinatorial term to produce 
                                     -- MDIO_TRISTATE
signal mdio_clk_reg   : std_logic;   -- registering MDIO_Clk to use it as a 
                                     -- clock MDIO_en
signal mdio_in_reg1   : std_logic;   -- compensate in pipeline delay caused
                                     -- by using MDC as a clock MDIO_en 
signal mdio_in_reg2   : std_logic;   -- compensate in pipeline delay caused by
                                     -- using MDC as a clock MDIO_en 
signal clk_cnt           : integer range 0 to 32; -- Clk counter
signal ld_cnt_data_cmb   : integer range 0 to 32; -- Counter load comb
signal ld_cnt_data_reg   : integer range 0 to 32; -- Counter load reg
signal ld_cnt_en_cmb     : std_logic;       -- Counter load enable
signal clk_cnt_en        : std_logic;             -- Counter enable
signal mdc_falling       : std_logic;       -- MDC falling edge
signal mdc_rising        : std_logic;       -- MDC rising edge
signal ld_cnt_en_reg     : std_logic;       -- Counter load enable reg
   
begin

   ----------------------------------------------------------------------------
   -- PROCESS : INPUT_REG_CLK 
   ----------------------------------------------------------------------------
   -- Registering PHY_MDIO_I and MDC signals w.r.t SAXI clock.
   ----------------------------------------------------------------------------
   INPUT_REG_CLK: process(Clk)
   begin
      if (Clk'event and Clk = '1') then
         if (Rst = '1') then
            mdio_clk_reg <= '0';
            mdio_in_reg1 <= '0';
            mdio_in_reg2 <= '0';
         else 
            mdio_clk_reg <= MDIO_Clk;
            mdio_in_reg1 <= PHY_MDIO_I;
            mdio_in_reg2 <= mdio_in_reg1;
         end if;
      end if;
   end process INPUT_REG_CLK;

   -- Falling edge and rising edge generation of MDC clock
   mdc_falling <= not MDIO_Clk and mdio_clk_reg;
   mdc_rising  <= MDIO_Clk and not mdio_clk_reg;
   

   -- Enable MDC only when MDIO interface is enabled. 
   PHY_MDC <= MDIO_Clk; -- making the MDC clk contineous 
   --PHY_MDC <= MDIO_Clk and mdio_en_reg; 
   
   
   -- Informs MDIO interface about the MDIO transfer complete.
   MDIO_done <= mdio_xfer_done;
   
   ----------------------------------------------------------------------------
   -- PROCESS : REG_MDIO_en 
   ----------------------------------------------------------------------------
   -- Latch MDIO_en bit on falling edge of MDC and when MDIO master is IDLE.
   -- MDIO Master will complete the existing transfer even if MDIO interface 
   -- is disable in middle of the transaction.
   ----------------------------------------------------------------------------
   REG_MDIO_en : process(Clk)
   begin
      if (Clk'event and Clk = '1') then 
         if (Rst = '1') then
            mdio_en_reg <= '0';
         elsif mdc_falling='1' then 
            if mdio_idle = '1' then
               mdio_en_reg <= MDIO_en;
            end if;
         end if;
            
      end if;
   end process;
   
   ----------------------------------------------------------------------------
   -- PROCESS : PHY_MDIO_T_REG 
   ----------------------------------------------------------------------------
   -- The mdio_t_comb signal is driven high only for read operation starting
   -- from the Turn arround state. 
   -- It is driven on falling clock edge to match up with PHY_MDIO_O
   ----------------------------------------------------------------------------
   PHY_MDIO_T_REG : process(Clk)
   begin
      if (Clk'event and Clk = '1') then
         if (Rst = '1') then
            PHY_MDIO_T <= '1';
         elsif (mdc_falling='1') then -- falling edge of MDC
            PHY_MDIO_T <= mdio_t_comb;
         end if;
      end if;
   end process;
   
   ----------------------------------------------------------------------------
   -- PROCESS : PHY_MDIO_O_REG 
   ----------------------------------------------------------------------------
   -- Generating PHY_MDIO_O output singnal on falling edge of MDC
   ----------------------------------------------------------------------------
   PHY_MDIO_O_REG : process(Clk)
   begin
      if (Clk'event and Clk = '1') then
         if (Rst = '1') then
            PHY_MDIO_O <= '0';
         elsif (mdc_falling='1') then  -- falling edge of MDC
            PHY_MDIO_O <= mdio_o_cmb;
         end if;
      end if;
   end process;
   
   ----------------------------------------------------------------------------
   -- PROCESS : MDIO_IDLE_REG 
   ----------------------------------------------------------------------------
   -- The mdio_idle signal is used to indicate no activity on the MDIO.
   -- Set at reset amd at the end of transmission.
   -- Rst at start of transmission as long as device is MDIO_end
   ----------------------------------------------------------------------------
   MDIO_IDLE_REG : process(Clk)
   begin
      if (Clk'event and Clk = '1') then 
         if (Rst = '1') then
            mdio_idle <= '1';
         elsif (mdc_rising='1') then   -- rising edge of MDC
            if (mdio_xfer_done = '1') then
               mdio_idle <= '1';
            elsif (MDIO_Req = '1' and mdio_en_reg = '1') then
               mdio_idle <= '0';
            end if;
         end if;
      end if;
   end process ;
  
   ----------------------------------------------------------------------------
   -- PROCESS : MDIO_CAPTURE_DATA 
   ----------------------------------------------------------------------------
   -- This process captures registered PHY_MDIO_i input on rising edge of the 
   -- MDC clock. The rd_data_en signal is generated in MDIO State machine for 
   -- respective captured bit.
   ----------------------------------------------------------------------------
   MDIO_CAPTURE_DATA : for i in 15 downto 0 generate
      MDIO_DATA_IN : process(Clk)
      begin
         if (Clk'event and Clk = '1') then
            if (Rst = '1') then
               MDIO_RD_DATA(i) <= '0';
            elsif (mdc_rising='1') then  -- rising edge of MDC
               if(rd_data_en(i) = '1') then
                  MDIO_RD_DATA(i) <= mdio_in_reg2;
               end if;
            end if;
         end if;
      end process MDIO_DATA_IN;
   end generate;

   ----------------------------------------------------------------------------
   -- PROCESS : MDIO_DOWN_COUNTER 
   ----------------------------------------------------------------------------
   -- This counter is used in Preamble and PHY_ADDR and REG_ADDR state.
   -- This counter is loaded for the required values for each above states. 
   ----------------------------------------------------------------------------
   MDIO_DOWN_COUNTER : process(Clk)
   begin
      if (Clk'event and Clk = '1') then
         if (Rst = '1' ) then
            clk_cnt <= 0;
         elsif (mdc_rising='1') then  -- falling edge of MDC
            if (ld_cnt_en_reg = '1') then -- Load counter with load data
               clk_cnt <= ld_cnt_data_reg;
            elsif (clk_cnt_en='1') then -- Enable Down Counter
               clk_cnt <= clk_cnt - 1;
            end if;
         end if;
      end if;
   end process;

   ----------------------------------------------------------------------------
   -- PROCESS : MDIO_NEXT_STATE_GEN
   ----------------------------------------------------------------------------
   -- MDIO next state register process 
   ----------------------------------------------------------------------------
   MDIO_NEXT_STATE_GEN : process (Clk)
   begin
      if Clk'event and Clk = '1' then
         if (Rst = '1') then
            mdio_state <= IDLE;
        elsif (mdc_rising='1') then 
            mdio_state <= next_state;
        end if;   
      end if;
   end process MDIO_NEXT_STATE_GEN;

   ----------------------------------------------------------------------------
   -- PROCESS : MDIO_COMB_REG_GEN
   ----------------------------------------------------------------------------
   -- Combinational signal register process 
   ----------------------------------------------------------------------------
   MDIO_COMB_REG_GEN : process (Clk)
   begin
      if Clk'event and Clk = '1' then
         if (Rst = '1') then
            ld_cnt_data_reg <= 0;
            ld_cnt_en_reg   <= '0';
        else 
            ld_cnt_data_reg <= ld_cnt_data_cmb;
            ld_cnt_en_reg   <= ld_cnt_en_cmb;
        end if;   
      end if;
   end process MDIO_COMB_REG_GEN;

  ----------------------------------------------------------------------------
  -- PROCESS : MDIO_STATE_COMB 
  ----------------------------------------------------------------------------
  -- This process generates mdio_o_cmb signal in command and Write phase as 
  -- per the required MDIO protocol. This process also generate mdio_t_comb
  -- tristate signal and rd_data_en to capture the respective bit in Read 
  -- operation.
  ----------------------------------------------------------------------------
  MDIO_STATE_COMB : process (mdio_state, mdio_idle, clk_cnt, MDIO_OP,
                             MDIO_PHY_AD, MDIO_REG_AD, MDIO_WR_DATA)
  begin
     -- state machine defaults
     mdio_o_cmb     <= '1';
     rd_data_en     <= "0000000000000000";
     mdio_xfer_done <= '0';
     ld_cnt_en_cmb  <= '0';
     clk_cnt_en     <= '0'; 
     mdio_t_comb    <= '0';
     next_state     <= mdio_state;
     ld_cnt_data_cmb <= 0;
     
     case mdio_state is

        when IDLE =>
           mdio_o_cmb <= '1';
           mdio_t_comb <= '1';

           ld_cnt_en_cmb   <= '1';
           -- leave IDLE state when new mdio request is received.
           if mdio_idle = '0' then
              -- Load counter for 32-bit preamble
              ld_cnt_data_cmb <= 31;
              next_state  <= PREAMBLE;
           end if;

        when PREAMBLE =>
           clk_cnt_en     <= '1';
           -- Move to ST1 after 32-bit preamble.
           if clk_cnt = 0 then
              next_state  <= ST1;
              clk_cnt_en  <= '0';
           end if;

        when ST1 =>              -- Start Code-1
           mdio_o_cmb  <= '0';
           next_state  <= ST2;
           
        when ST2 =>              -- Start Code-2
           mdio_o_cmb  <= '1';
           next_state  <= OP1;

        when OP1 =>              -- Opcode-1
           next_state  <= OP2;
           if MDIO_OP='1' then
              mdio_o_cmb  <= '1';
           else
              mdio_o_cmb <= '0';                 
           end if;

        when OP2 =>              -- Opcode-2
           next_state  <= PHY_ADDR;
           -- Load counter for 5-bit PHYaddress transfer
           ld_cnt_data_cmb <= 4;
           ld_cnt_en_cmb   <= '1';
           if MDIO_OP='1' then
              mdio_o_cmb  <= '0';
           else
              mdio_o_cmb <= '1';                 
           end if;
                                 
        when PHY_ADDR =>         -- PHY Device Address
           clk_cnt_en  <= '1'; 
           mdio_o_cmb  <= MDIO_PHY_AD(clk_cnt);
           -- Send 5-bit PHY device address
           if clk_cnt=0 then
              next_state  <= REG_ADDR;
              -- Load counter for 5-bit REG address transfer
              ld_cnt_data_cmb <= 4;
              ld_cnt_en_cmb   <= '1';
           end if;

        when REG_ADDR =>         -- PHY Device Address
           clk_cnt_en    <= '1'; 
           mdio_o_cmb    <= MDIO_REG_AD(clk_cnt);
           -- Send 5-bit PHY Register address
           if clk_cnt=0 then
              next_state <= TA1;
              clk_cnt_en <= '0';
           end if;

        when TA1 =>              -- Turn Around Time-1
           mdio_o_cmb  <= '1';
           next_state  <= TA2;
           -- For Read operation generate high impedence on 
           -- MDIO bus
           if MDIO_OP='1' then
              mdio_t_comb <= '1';
           else
              mdio_t_comb <= '0';                 
           end if;

        when TA2 =>              -- Turn Around Time-2
           mdio_o_cmb  <= '0';
           -- Load the down counter for 16 bit data transfer
           ld_cnt_data_cmb <= 15;
           ld_cnt_en_cmb   <= '1';
           -- Move to Write state if opcode is '0'
           if MDIO_OP='0' then
              next_state  <= WRITE;
              mdio_t_comb <= '0';
           else
              next_state  <= READ;
              mdio_t_comb <= '1';                 
           end if;

        when WRITE =>            -- MDIO DATA Write
           clk_cnt_en <= '1'; 
           -- Send 16-bit Write Data on the MDIO data line
           mdio_o_cmb <= MDIO_WR_DATA(clk_cnt);
           -- Wait for 16 bit transfer
           if clk_cnt=0 then
              next_state <= DONE;
              clk_cnt_en <= '0';
           end if;

        when READ =>             -- MDIO DATA Read
           clk_cnt_en  <= '1'; 
           mdio_t_comb <= '1';
           -- Generate read data enable for respective bit
           rd_data_en(clk_cnt) <= '1';
           -- Wait for 16 bit transfer
           if clk_cnt=0 then
              next_state <= DONE;
              clk_cnt_en <= '0';
           end if;

        when DONE =>             -- MDIO Transfer Done
           mdio_o_cmb <= '1';
           mdio_t_comb <= '1';
           next_state <= IDLE;
           -- Mdio trasnfer complete
           mdio_xfer_done <= '1'; 

      -- coverage off
      when others =>
           next_state <= IDLE;
      -- coverage on

     end case;
  end process MDIO_STATE_COMB;

end imp;
         
         

       
