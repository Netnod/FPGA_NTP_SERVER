//======================================================================
//
// pp_api.v
// -------
// API module for packet processing. Allows us to remove a lot of wide
// buses and allow us to add more IP addresses.
//
//
// Author: Joachim Strombergson
//
// Copyright (c) 2019, The Swedish Post and Telecom Authority (PTS)
// All rights reserved.
//
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided that the following conditions
// are met:
//
// 1. Redistributions of source code must retain the above copyright
//    notice, this list of conditions and the following disclaimer.
//
// 2. Redistributions in binary form must reproduce the above copyright
//    notice, this list of conditions and the following disclaimer in
//    the documentation and/or other materials provided with the
//    distribution.
//
// THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS
// "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT
// LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS
// FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE
// COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT,
// INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING,
// BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;
// LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER
// CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT
// LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN
// ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE
// POSSIBILITY OF SUCH DAMAGE.
//
//======================================================================

module pp_api(
              input wire           clk,
              input wire           areset,

              input wire           cs,
              input wire           we,
              input wire  [11 : 0] address,
              input wire  [31 : 0] write_data,
              output wire [31 : 0] read_data,
              output wire          ready,

              output wire [47 : 0] mac_addr0,
              output wire [47 : 0] mac_addr1,
              output wire [47 : 0] mac_addr2,
              output wire [47 : 0] mac_addr3,

              output wire [31 : 0] ipv4_addr0,
              output wire [31 : 0] ipv4_addr1,
              output wire [31 : 0] ipv4_addr2,
              output wire [31 : 0] ipv4_addr3,
              output wire [31 : 0] ipv4_addr4,
              output wire [31 : 0] ipv4_addr5,
              output wire [31 : 0] ipv4_addr6,
              output wire [31 : 0] ipv4_addr7,

              output wire [127 : 0] ipv6_addr0,
              output wire [127 : 0] ipv6_addr1,
              output wire [127 : 0] ipv6_addr2,
              output wire [127 : 0] ipv6_addr3,
              output wire [127 : 0] ipv6_addr4,
              output wire [127 : 0] ipv6_addr5,
              output wire [127 : 0] ipv6_addr6,
              output wire [127 : 0] ipv6_addr7
             );


  //----------------------------------------------------------------
  // Internal constant and parameter definitions.
  //----------------------------------------------------------------
  localparam ADDR_NAME0         = 12'h000;
  localparam ADDR_NAME1         = 12'h001;
  localparam ADDR_VERSION       = 12'h002;

  localparam MAC_ADDR0_LSB      = 12'h040;
  localparam MAC_ADDR0_MSB      = 12'h041;
  localparam MAC_ADDR1_LSB      = 12'h042;
  localparam MAC_ADDR1_MSB      = 12'h043;
  localparam MAC_ADDR2_LSB      = 12'h044;
  localparam MAC_ADDR2_MSB      = 12'h045;
  localparam MAC_ADDR3_LSB      = 12'h046;
  localparam MAC_ADDR3_MSB      = 12'h047;

  localparam IPV4_ADDR0         = 12'h050;
  localparam IPV4_ADDR1         = 12'h051;
  localparam IPV4_ADDR2         = 12'h052;
  localparam IPV4_ADDR3         = 12'h053;
  localparam IPV4_ADDR4         = 12'h054;
  localparam IPV4_ADDR5         = 12'h055;
  localparam IPV4_ADDR6         = 12'h056;
  localparam IPV4_ADDR7         = 12'h057;

  localparam IPV6_ADDR0_START   = 12'h060;
  localparam IPV6_ADDR0_END     = 12'h063;
  localparam IPV6_ADDR1_START   = 12'h064;
  localparam IPV6_ADDR1_END     = 12'h067;
  localparam IPV6_ADDR2_START   = 12'h068;
  localparam IPV6_ADDR2_END     = 12'h06b;
  localparam IPV6_ADDR3_START   = 12'h06c;
  localparam IPV6_ADDR3_END     = 12'h06f;
  localparam IPV6_ADDR4_START   = 12'h070;
  localparam IPV6_ADDR4_END     = 12'h073;
  localparam IPV6_ADDR5_START   = 12'h074;
  localparam IPV6_ADDR5_END     = 12'h077;
  localparam IPV6_ADDR6_START   = 12'h078;
  localparam IPV6_ADDR6_END     = 12'h07b;
  localparam IPV6_ADDR7_START   = 12'h07c;
  localparam IPV6_ADDR7_END     = 12'h07f;


  localparam CORE_NAME0   = 32'h70705f61; // "pp_a"
  localparam CORE_NAME1   = 32'h70692020; // "pi  "
  localparam CORE_VERSION = 32'h302e3130; // "0.10"


  //----------------------------------------------------------------
  // Registers including update variables and write enable.
  //----------------------------------------------------------------
  reg [31 : 0]  drop_ctr_reg;
  reg [31 : 0]  drop_ctr_new;
  reg           drop_ctr_inc;
  reg           drop_ctr_rst;
  reg           drop_ctr_we;

  reg [31 : 0]  mac_addr0_lsb_reg;
  reg [15 : 0]  mac_addr0_msb_reg;
  reg           mac_addr0_lsb_we;
  reg           mac_addr0_msb_we;

  reg [31 : 0]  mac_addr1_lsb_reg;
  reg [15 : 0]  mac_addr1_msb_reg;
  reg           mac_addr1_lsb_we;
  reg           mac_addr1_msb_we;

  reg [31 : 0]  mac_addr2_lsb_reg;
  reg [15 : 0]  mac_addr2_msb_reg;
  reg           mac_addr2_lsb_we;
  reg           mac_addr2_msb_we;

  reg [31 : 0]  mac_addr3_lsb_reg;
  reg [15 : 0]  mac_addr3_msb_reg;
  reg           mac_addr3_lsb_we;
  reg           mac_addr3_msb_we;


  reg [31 : 0] ipv4_addr0_reg;
  reg          ipv4_addr0_we;

  reg [31 : 0] ipv4_addr1_reg;
  reg          ipv4_addr1_we;

  reg [31 : 0] ipv4_addr2_reg;
  reg          ipv4_addr2_we;

  reg [31 : 0] ipv4_addr3_reg;
  reg          ipv4_addr3_we;

  reg [31 : 0] ipv4_addr4_reg;
  reg          ipv4_addr4_we;

  reg [31 : 0] ipv4_addr5_reg;
  reg          ipv4_addr5_we;

  reg [31 : 0] ipv4_addr6_reg;
  reg          ipv4_addr6_we;

  reg [31 : 0] ipv4_addr7_reg;
  reg          ipv4_addr7_we;


  reg [31 : 0]   ipv6_addr0_reg [0 : 3];
  reg            ipv6_addr0_we;

  reg [31 : 0]   ipv6_addr1_reg [0 : 3];
  reg            ipv6_addr1_we;

  reg [31 : 0]   ipv6_addr2_reg [0 : 3];
  reg            ipv6_addr2_we;

  reg [31 : 0]   ipv6_addr3_reg [0 : 3];
  reg            ipv6_addr3_we;

  reg [31 : 0]   ipv6_addr4_reg [0 : 3];
  reg            ipv6_addr4_we;

  reg [31 : 0]   ipv6_addr5_reg [0 : 3];
  reg            ipv6_addr5_we;

  reg [31 : 0]   ipv6_addr6_reg [0 : 3];
  reg            ipv6_addr6_we;

  reg [31 : 0]   ipv6_addr7_reg [0 : 3];
  reg            ipv6_addr7_we;

  reg         ready_reg;
  reg         ready_new;
  reg         ready_we;


  //----------------------------------------------------------------
  // Wires.
  //----------------------------------------------------------------
  reg [31 : 0] tmp_read_data;


  //----------------------------------------------------------------
  // Concurrent connectivity for ports etc.
  //----------------------------------------------------------------
  assign read_data     = tmp_read_data;
  assign ready         = ready_reg;

  assign mac_addr0 = {mac_addr0_msb_reg, mac_addr0_lsb_reg};
  assign mac_addr1 = {mac_addr1_msb_reg, mac_addr1_lsb_reg};
  assign mac_addr2 = {mac_addr2_msb_reg, mac_addr2_lsb_reg};
  assign mac_addr3 = {mac_addr3_msb_reg, mac_addr3_lsb_reg};


  assign ipv4_addr0 = ipv4_addr0_reg;
  assign ipv4_addr1 = ipv4_addr1_reg;
  assign ipv4_addr2 = ipv4_addr2_reg;
  assign ipv4_addr3 = ipv4_addr3_reg;
  assign ipv4_addr4 = ipv4_addr4_reg;
  assign ipv4_addr5 = ipv4_addr5_reg;
  assign ipv4_addr6 = ipv4_addr6_reg;
  assign ipv4_addr7 = ipv4_addr7_reg;


  assign ipv6_addr0 = {ipv6_addr0_reg[3], ipv6_addr0_reg[2],
                       ipv6_addr0_reg[1], ipv6_addr0_reg[0]};

  assign ipv6_addr1 = {ipv6_addr1_reg[3], ipv6_addr1_reg[2],
                       ipv6_addr1_reg[1], ipv6_addr1_reg[0]};

  assign ipv6_addr2 = {ipv6_addr2_reg[3], ipv6_addr2_reg[2],
                       ipv6_addr2_reg[1], ipv6_addr2_reg[0]};

  assign ipv6_addr3 = {ipv6_addr3_reg[3], ipv6_addr3_reg[2],
                       ipv6_addr3_reg[1], ipv6_addr3_reg[0]};

  assign ipv6_addr4 = {ipv6_addr4_reg[3], ipv6_addr4_reg[2],
                       ipv6_addr4_reg[1], ipv6_addr4_reg[0]};

  assign ipv6_addr5 = {ipv6_addr5_reg[3], ipv6_addr5_reg[2],
                       ipv6_addr5_reg[1], ipv6_addr5_reg[0]};

  assign ipv6_addr6 = {ipv6_addr6_reg[3], ipv6_addr6_reg[2],
                       ipv6_addr6_reg[1], ipv6_addr6_reg[0]};

  assign ipv6_addr7 = {ipv6_addr7_reg[3], ipv6_addr7_reg[2],
                       ipv6_addr7_reg[1], ipv6_addr7_reg[0]};


  //----------------------------------------------------------------
  // reg_update
  // Update functionality for all registers in the core.
  // All registers are positive edge triggered with asynchronous
  // active low reset.
  //----------------------------------------------------------------
  always @ (posedge clk or posedge areset)
    begin : reg_update
      integer i;

      if (areset)
        begin
          for (i = 0; i < 4 ; i = i + 1)
            begin
              ipv6_addr0_reg[i] <= 32'h0;
              ipv6_addr1_reg[i] <= 32'h0;
              ipv6_addr2_reg[i] <= 32'h0;
              ipv6_addr3_reg[i] <= 32'h0;
              ipv6_addr4_reg[i] <= 32'h0;
              ipv6_addr5_reg[i] <= 32'h0;
              ipv6_addr6_reg[i] <= 32'h0;
              ipv6_addr7_reg[i] <= 32'h0;
            end

          mac_addr0_lsb_reg <= 32'h0;
          mac_addr0_msb_reg <= 16'h0;
          mac_addr1_lsb_reg <= 32'h0;
          mac_addr1_msb_reg <= 16'h0;
          mac_addr1_lsb_reg <= 32'h0;
          mac_addr2_msb_reg <= 16'h0;
          mac_addr3_lsb_reg <= 32'h0;
          mac_addr3_msb_reg <= 16'h0;

          ipv4_addr0_reg <= 32'h0;
          ipv4_addr1_reg <= 32'h0;
          ipv4_addr2_reg <= 32'h0;
          ipv4_addr3_reg <= 32'h0;
          ipv4_addr4_reg <= 32'h0;
          ipv4_addr5_reg <= 32'h0;
          ipv4_addr6_reg <= 32'h0;
          ipv4_addr7_reg <= 32'h0;

          ready_reg      <= 1'h1;
        end
      else
        begin
          if (mac_addr0_lsb_we)
            mac_addr0_lsb_reg <= write_data;

          if (mac_addr0_msb_we)
            mac_addr0_msb_reg <= write_data[15 : 0];

          if (mac_addr1_lsb_we)
            mac_addr1_lsb_reg <= write_data;

          if (mac_addr1_msb_we)
            mac_addr1_msb_reg <= write_data[15 : 0];

          if (mac_addr2_lsb_we)
            mac_addr2_lsb_reg <= write_data;

          if (mac_addr2_msb_we)
            mac_addr2_msb_reg <= write_data[15 : 0];

          if (mac_addr3_lsb_we)
            mac_addr3_lsb_reg <= write_data;

          if (mac_addr3_msb_we)
            mac_addr3_msb_reg <= write_data[15 : 0];


          if (ipv4_addr0_we)
            ipv4_addr0_reg <= write_data;

          if (ipv4_addr1_we)
            ipv4_addr1_reg <= write_data;

          if (ipv4_addr2_we)
            ipv4_addr2_reg <= write_data;

          if (ipv4_addr3_we)
            ipv4_addr3_reg <= write_data;

          if (ipv4_addr4_we)
            ipv4_addr4_reg <= write_data;

          if (ipv4_addr5_we)
            ipv4_addr5_reg <= write_data;

          if (ipv4_addr6_we)
            ipv4_addr6_reg <= write_data;

          if (ipv4_addr7_we)
            ipv4_addr7_reg <= write_data;


          if (ipv6_addr0_we)
            ipv6_addr0_reg[address[1 : 0]] <= write_data;

          if (ipv6_addr1_we)
            ipv6_addr1_reg[address[1 : 0]] <= write_data;

          if (ipv6_addr2_we)
            ipv6_addr2_reg[address[1 : 0]] <= write_data;

          if (ipv6_addr3_we)
            ipv6_addr3_reg[address[1 : 0]] <= write_data;

          if (ipv6_addr4_we)
            ipv6_addr4_reg[address[1 : 0]] <= write_data;

          if (ipv6_addr5_we)
            ipv6_addr5_reg[address[1 : 0]] <= write_data;

          if (ipv6_addr6_we)
            ipv6_addr6_reg[address[1 : 0]] <= write_data;

          if (ipv6_addr7_we)
            ipv6_addr7_reg[address[1 : 0]] <= write_data;


          if (ready_we)
            ready_reg <= ready_new;
        end
    end // reg_update


  //----------------------------------------------------------------
  // api
  //----------------------------------------------------------------
  always @*
    begin : api
      ready_we         = 1'h0;
      tmp_read_data    = 32'h553b_a553;
      mac_addr0_lsb_we = 1'h0;
      mac_addr0_msb_we = 1'h0;
      mac_addr1_lsb_we = 1'h0;
      mac_addr1_msb_we = 1'h0;
      mac_addr2_lsb_we = 1'h0;
      mac_addr2_msb_we = 1'h0;
      mac_addr3_lsb_we = 1'h0;
      mac_addr3_msb_we = 1'h0;
      ipv4_addr0_we    = 1'h0;
      ipv4_addr1_we    = 1'h0;
      ipv4_addr2_we    = 1'h0;
      ipv4_addr3_we    = 1'h0;
      ipv4_addr4_we    = 1'h0;
      ipv4_addr5_we    = 1'h0;
      ipv4_addr6_we    = 1'h0;
      ipv4_addr7_we    = 1'h0;
      ipv6_addr0_we    = 1'h0;
      ipv6_addr1_we    = 1'h0;
      ipv6_addr2_we    = 1'h0;
      ipv6_addr3_we    = 1'h0;
      ipv6_addr4_we    = 1'h0;
      ipv6_addr5_we    = 1'h0;
      ipv6_addr6_we    = 1'h0;
      ipv6_addr7_we    = 1'h0;

      if (cs)
        begin
          if (we)
            begin
              case (address)
                MAC_ADDR0_LSB: mac_addr0_lsb_we = 1'h1;
                MAC_ADDR0_MSB: mac_addr0_msb_we = 1'h1;
                MAC_ADDR1_LSB: mac_addr1_lsb_we = 1'h1;
                MAC_ADDR1_MSB: mac_addr1_msb_we = 1'h1;
                MAC_ADDR2_LSB: mac_addr2_lsb_we = 1'h1;
                MAC_ADDR2_MSB: mac_addr2_msb_we = 1'h1;
                MAC_ADDR3_LSB: mac_addr3_lsb_we = 1'h1;
                MAC_ADDR3_MSB: mac_addr3_msb_we = 1'h1;

                IPV4_ADDR0:    ipv4_addr0_we  = 1'h1;
                IPV4_ADDR1:    ipv4_addr1_we  = 1'h1;
                IPV4_ADDR2:    ipv4_addr2_we  = 1'h1;
                IPV4_ADDR3:    ipv4_addr3_we  = 1'h1;
                IPV4_ADDR4:    ipv4_addr4_we  = 1'h1;
                IPV4_ADDR5:    ipv4_addr5_we  = 1'h1;
                IPV4_ADDR6:    ipv4_addr6_we  = 1'h1;
                IPV4_ADDR7:    ipv4_addr7_we  = 1'h1;

                default:
                  begin
                  end
              endcase // case (address)

              if ((address >= IPV6_ADDR0_START) && (address <= IPV6_ADDR0_END))
                  ipv6_addr0_we = 1'h1;

              if ((address >= IPV6_ADDR1_START) && (address <= IPV6_ADDR1_END))
                  ipv6_addr1_we = 1'h1;

              if ((address >= IPV6_ADDR2_START) && (address <= IPV6_ADDR2_END))
                  ipv6_addr2_we = 1'h1;

              if ((address >= IPV6_ADDR3_START) && (address <= IPV6_ADDR3_END))
                  ipv6_addr3_we = 1'h1;

              if ((address >= IPV6_ADDR4_START) && (address <= IPV6_ADDR4_END))
                  ipv6_addr4_we = 1'h1;

              if ((address >= IPV6_ADDR5_START) && (address <= IPV6_ADDR5_END))
                  ipv6_addr5_we = 1'h1;

              if ((address >= IPV6_ADDR6_START) && (address <= IPV6_ADDR6_END))
                  ipv6_addr6_we = 1'h1;

              if ((address >= IPV6_ADDR7_START) && (address <= IPV6_ADDR7_END))
                  ipv6_addr7_we = 1'h1;
            end // if (we)

          else
            begin
              case (address)
                ADDR_NAME0:    tmp_read_data = CORE_NAME0;
                ADDR_NAME1:    tmp_read_data = CORE_NAME1;
                ADDR_VERSION:  tmp_read_data = CORE_VERSION;

                MAC_ADDR0_LSB: tmp_read_data = mac_addr0_lsb_reg;
                MAC_ADDR0_MSB: tmp_read_data = {16'h0, mac_addr0_msb_reg};

                MAC_ADDR1_LSB: tmp_read_data = mac_addr1_lsb_reg;
                MAC_ADDR1_MSB: tmp_read_data = {16'h0, mac_addr1_msb_reg};

                MAC_ADDR2_LSB: tmp_read_data = mac_addr2_lsb_reg;
                MAC_ADDR2_MSB: tmp_read_data = {16'h0, mac_addr2_msb_reg};

                MAC_ADDR3_LSB: tmp_read_data = mac_addr3_lsb_reg;
                MAC_ADDR3_MSB: tmp_read_data = {16'h0, mac_addr3_msb_reg};

                IPV4_ADDR0:    tmp_read_data = ipv4_addr0_reg;
                IPV4_ADDR1:    tmp_read_data = ipv4_addr1_reg;
                IPV4_ADDR2:    tmp_read_data = ipv4_addr2_reg;
                IPV4_ADDR3:    tmp_read_data = ipv4_addr3_reg;
                IPV4_ADDR4:    tmp_read_data = ipv4_addr4_reg;
                IPV4_ADDR5:    tmp_read_data = ipv4_addr5_reg;
                IPV4_ADDR6:    tmp_read_data = ipv4_addr6_reg;
                IPV4_ADDR7:    tmp_read_data = ipv4_addr7_reg;

                default:
                  begin
                  end
              endcase // case (address)

              if ((address >= IPV6_ADDR0_START) && (address <= IPV6_ADDR0_END))
                tmp_read_data = ipv6_addr0_reg[address[1 : 0]];

              if ((address >= IPV6_ADDR1_START) && (address <= IPV6_ADDR1_END))
                tmp_read_data = ipv6_addr1_reg[address[1 : 0]];

              if ((address >= IPV6_ADDR2_START) && (address <= IPV6_ADDR2_END))
                tmp_read_data = ipv6_addr2_reg[address[1 : 0]];

              if ((address >= IPV6_ADDR3_START) && (address <= IPV6_ADDR3_END))
                tmp_read_data = ipv6_addr3_reg[address[1 : 0]];

              if ((address >= IPV6_ADDR4_START) && (address <= IPV6_ADDR4_END))
                tmp_read_data = ipv6_addr4_reg[address[1 : 0]];

              if ((address >= IPV6_ADDR5_START) && (address <= IPV6_ADDR5_END))
                tmp_read_data = ipv6_addr5_reg[address[1 : 0]];

              if ((address >= IPV6_ADDR6_START) && (address <= IPV6_ADDR6_END))
                tmp_read_data = ipv6_addr6_reg[address[1 : 0]];

              if ((address >= IPV6_ADDR7_START) && (address <= IPV6_ADDR7_END))
                tmp_read_data = ipv6_addr7_reg[address[1 : 0]];

            end // else: !if(we)
        end
    end // api

endmodule // pp_api

//======================================================================
// EOF pp_api.v
//======================================================================
