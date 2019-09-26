-------------------------------------------------------------------------------
-- mac_pkg - Package
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
-- Filename     : mac_pkg.vhd
-- Version      : v2.0
-- Description  : This file contains the constants used in the design of the
--                Ethernet MAC.
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

package mac_pkg is


  type tx_state_name is 
    (idle,txEnCheck,loadByteCnt,checkByteCnt,checkByteCntOvrWrtSrcAdr,
     requestFifoRd,requestFifoRdOvrWrtSrcAdr,waitFifoEmpty,decByteCnt,
     decByteCntOvrWrtSrcAdr,checkBusFifoFull,checkBusFifoFullOvrWrtSrcAdr,
     loadBusFifo,loadBusFifoOvrWrtSrcAdr,txDone,preamble,SFD,loadBusFifoSrcAdr,
     loadBusFifoJam,checkBusFifoFullSrcAdr,loadBusFifoPad,checkBusFifoFullPad,
     loadBusFifoCrc,checkBusFifoFullCrc,checkBusFifoFullJam,lateCollision,
     excessDeferal,collisionRetry,cleanPacketCheckByteCnt,
     cleanPacketRequestFifoRd,cleanPacketDecByteCnt,retryWaitFifoEmpty,
     retryReset,tlrRead,checkBusFifoFullSFD,txDone2);



-------------------------------------------------------------------------------
-- Constant Declarations
-------------------------------------------------------------------------------

  constant XEMAC_MAJOR_VERSION : std_logic_vector(0 to 3) := "0001"; -- 1
                                 -- binary encoded major version number
    
  constant XEMAC_MINOR_VERSION : std_logic_vector(0 to 6) := "0000000";-- 00
                                 -- binary encoded minor version number   
    
  constant XEMAC_REVISION      : std_logic_vector(0 to 4)      := "00001";-- rev b
                                 -- binary encoded revision letter. a = "00000" z = "11001"    
    
  constant XEMAC_BLOCK_TYPE    : std_logic_vector(0 to 7) := "00000001";-- 1
                                 -- value that indentifies this device as a 10/100 Ethernet IP
    
  constant RESET_ACTIVE        : std_logic := '1'; 
                                -- the RESET_ACTIVE constant should denote the
                                -- logic level of an active reset
  constant MinimumPacketLength : std_logic_vector (0 to 15) := "0000000000111100";
                                -- 60 = 3c in hex
    
  constant MAXENetPktLength    : natural   := 1500;
  constant MINENetPktLength    : natural   := 46;
-------------------------------------------------------------------------------
-- these constants give data and address bus sizes for 3 widths of data
-- such that the largest ethernet frame will be addressable
-------------------------------------------------------------------------------

  constant dbw4  : natural := 4;
  constant abw4  : natural := 12;
  constant dbw8  : natural := 8;
  constant abw8  : natural := 11;
  constant dbw16 : natural := 16;
  constant abw16 : natural := 10;
  
  constant CRCDataWidth : natural := 32;  -- crc output data width
  
  subtype UNSIGNED30BIT is std_logic_vector (0 to 29);
  subtype UNSIGNED29BIT is std_logic_vector (0 to 28);
  subtype UNSIGNED27BIT is std_logic_vector (0 to 26);
  subtype UNSIGNED24BIT is std_logic_vector (0 to 23);
  subtype UNSIGNED23BIT is std_logic_vector (0 to 22);
  subtype UNSIGNED22BIT is std_logic_vector (0 to 21);
  subtype UNSIGNED21BIT is std_logic_vector (0 to 20);
  subtype UNSIGNED20BIT is std_logic_vector (0 to 19);
  subtype UNSIGNED18BIT is std_logic_vector (0 to 17);
  subtype UNSIGNED16BIT is std_logic_vector (0 to 15);
  subtype UNSIGNED12BIT is std_logic_vector (0 to 11);
  subtype UNSIGNED11BIT is std_logic_vector (0 to 10);
  subtype UNSIGNED10BIT is std_logic_vector (0 to 9);
  subtype UNSIGNED9BIT  is std_logic_vector (0 to 8);
  subtype UNSIGNED8BIT  is std_logic_vector (0 to 7);
  subtype UNSIGNED6BIT  is std_logic_vector (0 to 5);
    
  subtype ENetAddr      is std_logic_vector (47 downto 0);  -- ethernet address
  subtype IPAddress     is std_logic_vector(31 downto 0);


  subtype TwoBit is std_logic_vector (1 downto 0);  -- half a Nibble    
  subtype Nibble is std_logic_vector (3 downto 0);  -- half a byte
  subtype Byte   is std_logic_vector (7 downto 0);  -- single byte
  subtype Monk   is std_logic_vector (8 downto 0);  -- monkey (500, for 512)
  subtype Deck   is std_logic_vector (9 downto 0);  -- a 10 digit binary number
  subtype Word   is std_logic_vector (15 downto 0); -- double byte
  subtype DWord  is std_logic_vector (31 downto 0); -- quadruple byte


  subtype CRCData is std_logic_vector(CRCDataWidth - 1 downto 0);
  
-------------------------------------------------------------------------------
-- these standard types are used for the address bus declarations
-------------------------------------------------------------------------------
 
  subtype NibbleAddress is std_logic_vector(abw4 - 1 downto 0);
  subtype ByteAddress   is std_logic_vector(abw8 - 1 downto 0);
  subtype WordAddress   is std_logic_vector(abw16 - 1 downto 0);
  
  function getENetAddr (eaddr : string)           return ENetAddr;
  function revBitOrder (arg   : std_logic_vector) return std_logic_vector; 
  function convENetAddr(arg   : ENetAddr)         return bit_vector;   
                                                         -- By ben  06/28/2000
  function revNibOrder(arg    : std_logic_vector) return std_logic_vector; 
                                                         -- by ben 07/04/2000
  function getIPAddr (ipaddr  : string)           return IPAddress;
  function allZeroes (inp     : std_logic_vector) return boolean;
  function allOnes (inp       : std_logic_vector) return boolean;
  function zExtend (arg1      : std_logic_vector; size : natural) 
                                                     return std_logic_vector;
  function maxNat (arg1, arg2 : natural)          return natural;
  function netOrder (arg      : Word)             return Word; --by Ying
  function netOrder (arg      : bit_vector(15 downto 0)) return bit_vector;

  function GetInitString4 (   idx : integer;
     init_00 : bit_vector(15 downto 0);   init_01 : bit_vector(15 downto 0);
     init_02 : bit_vector(15 downto 0);   init_03 : bit_vector(15 downto 0))
     return string;

  function GetInitVector4 (   idx : integer;
     init_00 : bit_vector(15 downto 0);   init_01 : bit_vector(15 downto 0);
     init_02 : bit_vector(15 downto 0);   init_03 : bit_vector(15 downto 0))
     return bit_vector;
  function to_string (bv : bit_vector) return string;
  function to_string (b : bit) return string;   
  function to_character (bv : bit_vector(3 downto 0)) return character;
  
end mac_pkg;

package body mac_pkg is

-- coverage off

  -- Convert 4-bit vector to a character
  function to_character (
    bv : bit_vector(3 downto 0))
    return character is
  begin  -- to_character
    case bv is
      when b"0000" => return '0';
      when b"0001" => return '1';
      when b"0010" => return '2';
      when b"0011" => return '3';
      when b"0100" => return '4';
      when b"0101" => return '5';
      when b"0110" => return '6';
      when b"0111" => return '7';
      when b"1000" => return '8';
      when b"1001" => return '9';
      when b"1010" => return 'a';
      when b"1011" => return 'b';
      when b"1100" => return 'c';
      when b"1101" => return 'd';
      when b"1110" => return 'e';
      when b"1111" => return 'f';
    end case;
  end to_character;
  
  -- Convert n-bits vector to n/4-character string
  function to_string (bv : bit_vector) return string is
    constant strlen : integer := bv'length / 4;
    variable str : string(1 to strlen);
    begin  -- to_string
    for i in 0 to strlen - 1 loop
      str(strlen-i) := to_character(bv((i * 4) + 3 downto (i * 4)));
    end loop;  -- i
    return str;
  end to_string;


  -- Convert 1-bit  to 1-character string
  function to_string (b : bit) return string is
  begin
    case b is
      when '0'    => return "0";
      when '1'    => return "1";
      when others => assert false report "unrecognised bit value" severity failure;
    end case;
    return "0";
  end to_string;
  
  function netOrder (arg : bit_vector(15 downto 0))
      return bit_vector is
    variable res : bit_vector(15 downto 0);
  begin  -- netOrder
    res(15 downto 12) := arg(11 downto 8);
    res(11 downto 8) := arg(15 downto 12);
    res(7 downto 4) := arg(3 downto 0);
    res(3 downto 0) := arg(7 downto 4);
    return res;
  end netOrder;

  -- Generate the label string for LUT ROM 16x4 from the init strings
    function GetInitString4 (   idx : integer;
       init_00 : bit_vector(15 downto 0);  init_01 : bit_vector(15 downto 0);
       init_02 : bit_vector(15 downto 0);  init_03 : bit_vector(15 downto 0))
       return string is
      variable bitvalue : bit_vector(15 downto 0) ;
      begin
        bitvalue(0)  := INIT_00(idx+12);  bitvalue(1)  := INIT_00(idx+8);
        bitvalue(2)  := INIT_00(idx+4);   bitvalue(3)  := INIT_00(idx);
        bitvalue(4)  := INIT_01(idx+12);  bitvalue(5)  := INIT_01(idx+8);
        bitvalue(6)  := INIT_01(idx+4);   bitvalue(7)  := INIT_01(idx);
        bitvalue(8)  := INIT_02(idx+12);  bitvalue(9)  := INIT_02(idx+8);
        bitvalue(10)  := INIT_02(idx+4);  bitvalue(11)  := INIT_02(idx);
        bitvalue(12)  := INIT_03(idx+12); bitvalue(13)  := INIT_03(idx+8);
        bitvalue(14)  := INIT_03(idx+4);  bitvalue(15)  := INIT_03(idx);
        return to_string(bitvalue);
    end function GetInitString4;


  -- Generate the generic init vector for the LUT ROM 16x4 from the
  -- init strings
  function GetInitVector4(    idx : integer;
        init_00 : bit_vector(15 downto 0); init_01 : bit_vector(15 downto 0);
        init_02 : bit_vector(15 downto 0); init_03 : bit_vector(15 downto 0))
         return bit_vector is
      variable bitvalue : bit_vector(15 downto 0) ;
      begin
        bitvalue(0)  := INIT_00(idx+12);  bitvalue(1)  := INIT_00(idx+8);
        bitvalue(2)  := INIT_00(idx+4);   bitvalue(3)  := INIT_00(idx);
        bitvalue(4)  := INIT_01(idx+12);  bitvalue(5)  := INIT_01(idx+8);
        bitvalue(6)  := INIT_01(idx+4);   bitvalue(7)  := INIT_01(idx);
        bitvalue(8)  := INIT_02(idx+12);  bitvalue(9)  := INIT_02(idx+8);
        bitvalue(10)  := INIT_02(idx+4);  bitvalue(11)  := INIT_02(idx);
        bitvalue(12)  := INIT_03(idx+12); bitvalue(13)  := INIT_03(idx+8);
        bitvalue(14)  := INIT_03(idx+4);  bitvalue(15)  := INIT_03(idx);
        return bitvalue;
  end function GetInitVector4;
  
  function conv_std_logic_vector (ch : character) return std_logic_vector is
  begin
    case ch is
      when '0'    => return "0000";
      when '1'    => return "0001";
      when '2'    => return "0010";
      when '3'    => return "0011";
      when '4'    => return "0100";
      when '5'    => return "0101";
      when '6'    => return "0110";
      when '7'    => return "0111";
      when '8'    => return "1000";
      when '9'    => return "1001";
      when 'a'    => return "1010";
      when 'b'    => return "1011";
      when 'c'    => return "1100";
      when 'd'    => return "1101";
      when 'e'    => return "1110";
      when 'f'    => return "1111";
      when others => assert false report "unrecognised character" 
                                                         severity failure;
    end case;
    return "0000";
  end conv_std_logic_vector;

  function getENetAddr (eaddr : string) return ENetAddr is
    variable tmp : ENetAddr := (others => '0');
    variable bptr : natural  := 0;
    variable nptr : natural  := 0;
    variable indx : natural  := 0;
  begin  -- getENetAddr
    tmp := (others => '0');
    bptr := 0;
    nptr := 0;
    indx := 0;
    if eaddr'length = 17 then
      lp0  : for i in eaddr'reverse_range loop
        -- lsbyte first
        if eaddr(i) = ':'  then
          bptr := bptr + 1;
          nptr := 0;
        else
          indx := (bptr * 8) + (nptr * 4);
          tmp(indx + 3 downto indx) := conv_std_logic_vector(eaddr(i));
          nptr := nptr + 1;
        end if;
      end loop lp0;
    else
      assert false report "ethernet address format is 01 : 23 : 45 : 67 : 89 : ab msb- > lsb" severity failure;
    end if;

    return tmp;

  end getENetAddr;

-------------------------------------------------------------------------------
-- A function which can change the order of ENetAddr to
-- the order of smallrom init   --   BY ben 06/28
-------------------------------------------------------------------------------


function convENetAddr(arg: ENetAddr) return bit_vector is
variable tmp : std_logic_vector(63 downto 0) :=(others => '0');
begin
 lp0:  for i in 0 to 11 loop
      tmp(59-i) := arg(3 + i*4);
      tmp(43 -i) := arg(2 + i*4);
      tmp(27 -i) := arg(1 + i*4);
      tmp(11 -i)    := arg(i*4);
 end loop lp0;     
return to_bitvector(tmp);
end convENetAddr;

-------------------------------------------------------------------------------
-- A function which can reverse the bit order
-- order   --   BY ben 07/04
-------------------------------------------------------------------------------

  function revBitOrder( arg : std_logic_vector) return std_logic_vector is  -- By ben 07/04/2000
    variable tmp            : std_logic_vector(arg'range);
  begin
    lp0                     : for i in arg'range loop
      tmp(arg'high - i) := arg(i);
    end loop lp0;
    return tmp;
  end revBitOrder;
  
-------------------------------------------------------------------------------
-- A function which can swap the Nibble order
-- order   --   BY ben 07/04
-------------------------------------------------------------------------------

  function swapNibbles (
    arg : std_logic_vector)
    return std_logic_vector is
    variable tmp : std_logic_vector(arg'length -1 downto 0);
    variable j : integer;
  begin  -- swapNibbles
    for i in 0 to (arg'length / 8) - 1 loop
      j := i * 8;
      tmp(j + 3 downto j) := arg(j + 7 downto j + 4);
      tmp(j + 7 downto j + 4) := arg(j + 3 downto j);
    end loop;  -- i
    return tmp;
  end swapNibbles;

-------------------------------------------------------------------------------
-- A function which can reverse the Nibble order
-- order   --   BY ben 07/04
-------------------------------------------------------------------------------

function revNibOrder( arg : std_logic_vector) return std_logic_vector is   -- By ben 07/04/2000
 variable tmp : std_logic_vector(arg'high downto 0); -- length is numNubs
 variable numNibs : integer;
 begin
  numNibs := arg'length/4;
  lp0: for i in 0 to numNibs -1 loop
       tmp( (4*(numNibs-i)-1) downto 4*(numNibs-i-1) ) := arg( (4*i+3) downto 4*i);
  end loop lp0;
  return tmp ;
end revNibOrder;

-------------------------------------------------------------------------------
-- Afunction to parse IP address
------------------------------------------------------------------------------- 
 
  function getIPAddr (ipaddr : string) return IPAddress is
    variable tmp             : IPAddress := (others => '0');
    variable bptr            : natural   := 3;
    variable nptr            : natural   := 2;
    variable indx            : natural   := 0;
  begin
    bptr                                 := 3;
    nptr                                 := 2;
    indx                                 := 0;
    -- similar to above, take a fixed length string and parse it for
    -- expected characters.  We anticipate hex numbers if the format,
    --   hh.hh.hh.hh
    if ipaddr'length = 11 then
      for i in ipaddr'range loop
        if ipaddr(i) = '.' then
          bptr                           := bptr - 1;
          nptr                           := 2;
        else
          indx                           := (bptr * 8) + ((nptr - 1) * 4);
          tmp(indx + 3 downto indx)      := conv_std_logic_vector(ipaddr(i));
          nptr                           := nptr - 1;
        end if;
      end loop;  -- i
    else
      assert false report "IP address format is 01.23.45.67 msb- > lsb" severity failure;
    end if;

    return tmp;

  end getIPAddr;

-------------------------------------------------------------------------------
-- couple of useful functions, move them to utils eventually
-------------------------------------------------------------------------------
  function allZeroes (inp : std_logic_vector) return boolean is
    variable t : boolean := true;
  begin
    t := true;  -- for synopsys
    for i in inp'range loop
      if inp(i) = '1' then
        t := false;
      end if;
    end loop;
    return t;
  end allZeroes;

  function allOnes (inp : std_logic_vector) return boolean is
    variable t : boolean := true;
  begin
    t := true;  -- for synopsys
    for i in inp'range loop
      if inp(i) = '0' then
        t := false;
      end if;
    end loop;
    return t;
  end allOnes;

-------------------------------------------------------------------------------
-- returns the maximum of two naturals
-------------------------------------------------------------------------------
  function maxNat (arg1, arg2 : natural)
    return natural is
  begin  -- maxNat
    if arg1 >= arg2 then
      return arg1;
    else
      return arg2;
    end if;
  end maxNat;

-------------------------------------------------------------------------------
-- zero extend a std_logic_vector
-------------------------------------------------------------------------------
  function zExtend (
    arg1            : std_logic_vector;
    size            : natural)
    return std_logic_vector is
    variable result : std_logic_vector(size - 1 downto 0);
  begin  -- extend
    result := (others => '0');
    result(arg1'length - 1 downto 0) := arg1;
    return result;
  end zExtend;
  
-------------------------------------------------------------------------------
-- Switch the word order between Correct-Word-Order and Net-Word-Order.
-- If arg is (Hex)1234, 
-- then netOrder(arg) is (Hex)2143.
-------------------------------------------------------------------------------
  function netOrder (arg : Word)
      return Word is
  begin  -- netOrder
      return arg(11 downto 8) & arg(15 downto 12) &
             arg(3 downto 0) & arg(7 downto 4);
  end netOrder;

-- coverage on
  
end mac_pkg;