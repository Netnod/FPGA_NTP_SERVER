Introduction
============

This directory contains the source code for a NTP and NTS server
"ntps" running in a Xilinx Virtex 7 XC7VX690T FPGA on a VC709
reference board.

This is yet another variant of the vc709 implementation, this one adds
a RISC-V processor (NEORV32) which replaces the I2C-AXI bridge.  This
will allow us to put more intelligence in the FPGA and simplify the
I2C interface.

Requirements for using the FPGA images
======================================

- a Xilinx VC709 reference board with the necessary cables such as a
  PC power supply adapter cable to power the board and a micro USB
  cable to be able to program the board.

- a PC running Linux to install the VC709 in which is used to power
  and control the board.

- a stable PPS and 10MHz clock source

- an interface board which converts PPS and 10MHz via SMA connectors
  to signals suitable for the FMC connector on the reference board.
  The schematics for this interface board are available on request.
  Send an e-mail to <info@netnod.se> to get in touch with us.

- You will need a PC running Xilinx Vivado (or Vivado Lab Edition) to
  program the reference board.  Any recent version of Vivado should
  work, we have been using Vivado 2019.2.

- If you want to build the FPGA bitstream from source you will need a
  decently powerful PC running Xilinx Vivado 2019.2.  You will also
  need a license for Vivado, the free-to-use Vivado WebPACK Edition is
  device limited and can not create bitstreams for the Virtex device
  on the VC709 board.

Notes
=====

- The 10MHz clock and PPS must be very clean with low jitter for the
  FPGA image to be able to lock onto the signals.  Many GPS receivers
  output a 10MHz clock and/or PPS pulse which has too much jitter to
  be usable with the FPGA image.

- The 10MHz signal should be a 1V RMS sine when driven into a 50Ohm
  load (the interface board has an internal 50Ohm termination).  The
  input on the interface board should be able to handle any symmetric
  signal at any DC offset (sine, 50% duty cycle square wave) as long
  as the peaks are within +/-1V, but we have only tested with 1V RMS
  centered around 0V DC.  If your source has a DC offset you might
  want to add a DC block, and optionally an attenuator if the signal
  has a too high voltage swing.

- The PPS signal should be 1.5V to 5V into a 50Ohm load.  The trigger
  level is set to 1V so anything above 1.2V ought to work.

- The optical ethernet ports only supports 10Gbit speed with a
  10GBASE-SR, 10GBASE-LR or 10GBASE-ER transceiver.  1Gbit or 100MBit
  speeds are not supported.

- There is no external gateway setting in the configuration for the
  FPGA_NTP_SERVER.  All replies are sent to the MAC address found in
  the response.  Normally this is not a problem, but if you have a
  network with asymmetric routing where packets are received from one
  router and should be sent out through a different router, this will
  not work.

Building the FPGA image
=======================

To build (assuming that Vivado is installed in /opt/Xilinx):

```
source /opt/Xilinx/Vivado/2019.2/settings64.sh
cd FPGA_NTP_SERVER/FPGA/targets/ntps_vc709_i2c
build.sh
```

On a half decent PC (Ryzen 2400G) the VC709 build will take about 2
hours.

Setting up the VC709 hardware
=============================

The VC709 hardware must be installed in a PC which is used to power
and control the FPGA image.

I very strongly suggest that you start out by downloading the document
UG966 "Virtex-7 XT VC709 Connectivity Kit Getting Started":

  https://www.xilinx.com/support/documentation/boards_and_kits/virtex-7/v7xt_gsg/v1_0/ug966-v7-xt-connectivity-getting-started.pdf

and then following the instructions in chapter 2 on how to run the
"Connectivity System Setup with Targeted Reference Design".  This will
verify that the FPGA board works properly in your PC before you try to
run the FPGA_NTP_SERVER.

If the flash on your VC709 board does not contain the default demo applications, you can find the "VC709 Restoring Flash Contents Tutorial" and associated design files here:

  https://www.xilinx.com/support/documentation-navigation/design-hubs/dh0036-vc709-connectivity-kit-hub.html

The most important steps are to set SW11 correctly to and then connect
the PC power supply to the VC709 power connection using the adapter
cable supplied with the in the VC709 kit.

__WARNING!__ The 12V cables for a motherboard or graphics card will
fit in the power connector on the VC709 but has a different pinout.
You __will__ fry your $5k VC709 board if you do that, so please don't.
Use the short cable shown in the document with a 4 pin connector that
fits into the VC709 on one end and a 4 pin Molex connector (used on
old hard drives) on the other end.  If you don't have such a cable,
find one, you can't make the VC709 board work without one.

Power off the PC and power it on with the VC709 in the machine.  Loop
back the 10Gbit Ethernet SFP+ transceivers as described in the guide.
Verify that the LEDs light up or blink as described in the guide.

When Linux has booted on the PC, run "lspci -nn" and verify that the
VC709 board shows up as expected in the list of PCI devices.  You
should see a line such as this:

  01:00.0 Communication controller [0780]: Xilinx Corporation Device [10ee:7083]

When you have verified that the VC709 board itself works, you can
power off the system once more and continue with the NTP specific
parts:

* Connect the interface board to the FMC connector on the VC709 board.

* Connect your 10MHz clock source to connector X200 on the interface card.

* Connect your PPS source to connector X202 on the interface card.

* Connect the first SFP+ port of the VC709 card to a 10GBit capable
device.

Note that the interface board supports two sets of 10MHz and PPS
inputs.  The other inputs on X201 and X203 are not used by default but
can be activated from software.  See the Verilog source code and
libntsfpga.py for more information on that.

Running the NTP server
======================

If the FPGA board is installed in a different computer, copy the files
from the build to the computer with the FPGA board, keeping the same
directory structure:

- FPGA_NTP_SERVER/FPGA/targets/ntps_vc709_i2c/BUILDINFO.txt
- FPGA_NTP_SERVER/FPGA/targets/ntps_vc709_i2c/ntps_vc709_i2c.bit
- FPGA_NTP_SERVER/FPGA/targets/ntps_vc709_i2c/program_fpga.sh
- FPGA_NTP_SERVER/FPGA/targets/ntps_vc709_i2c/program_fpga.tcl
- FPGA_NTP_SERVER/FPGA/targets/ntps_vc709_i2c/reload_fpga.sh
- FPGA_NTP_SERVER/Linux_Driver/

go to the target directory and run the script to reload the FPGA:

```
cd FPGA_NTP_SERVER/FPGA/targets/ntps_vc709_i2c
./reload_fpga.sh
```

If your PC BIOS does not support PCI hotplug properly you may have to
reboot your system after loading the FPGA image.  You usually only
need to do this once after powering on the system.

Run the script to configure the NTP server:

```
cd FPGA_NTP_SERVER/Linux_Driver
./libntsfpga.py --setup --ntp_config=0xec --parser_ctrl_ntp=yes
```

You should see something like this:

```
FPGA build at 2022-01-13 12:29:27 (1642073367)
FPGA built with Vivado 2019.2 from git hash 7fff5526
...
FPGA Die temperature is 47.9C.
...
pll_status 0xc000017b 0x00000200
pll_status 0xc000017b 0x00000200
pll_status 0xc000017b 0x00000200
...
Setting up network path 0
PATH 0: gen_config 0x600003ff
XPHY 0 status: 0x00000017
```

The pll_status field above shows that the FPGA has a lock on both the
10MHz clock (bit 31 - 0x80000000) and PPS (bit 30 - 0x40000000)
signals for clock input A.  The lower bits (0x17b) show the offset
between the 10MHz clock and the PPS pulse.

An XPHY status of 0x00000017 means that the SFP+ port has detected a
link.  An XPY status of 0x00000009 means the SFP+ port has not
detected a link.

The configuration is currently hardcoded in the libntsfpga.py script.
It will set up the FPGA with the following addresses:

- 192.168.40.30 .. 192.168.40.37
- d75:502f:e221:ddcf::16 .. fd75:502f:e221:ddcf::23

The NTP server listens on the default NTP port 123 and on an alternate
port which is 4123.  The reason for using the alternate port is that
due to denial of service attacks using the NTP protocol a few years
ago many ISPs still filter NTP traffic.

Three NTS server keys are also hardcoded in the script:

- Keyid b01dface: 2323c3d99ba5c11d7c7acc6e14b8c5da0c4663475c2e5c3adef46f73bcdec043
- Keyid 12345678: 9b71d224bd62f3785d96d46ad3ea3d73319bfbc2890caadae2dff72519673ca7
- Keyid 13fe78e9: feb10c699c6435be5a9ee521e40e420cf665d8f7a969302a63b9385d353ae43e

Testing the NTP/NTS server
==========================

If the other end is a 10Gbit ethernet card in a Linux PC you should
now be able to configure it with an IP-address on the same network:

```
sudo ifconfig enp5s0f0 192.168.40.1
```

and use the ntpdate command to verify that the NTP server is up:

```
ntpdate -q 192.168.40.30
```

which should show something like this:

```
8 Jan 16:39:16 ntpdate[2874]: adjust time server 192.168.40.2 offset -0.459889 sec
```

NTS is a bit more complex since the server and client will have to
establish session keys which are stored in cookies that are then
passed to the NTS timestamping server.

Netnod has written a proof-of-concept NTS server and client which can
be used for testing the FPGA image.  The source code be found here:

    https://github.com/Netnod/nts-poc-python

Follow the instructions in README.md in the project on how to build
everything.

When you have built the project, you can create a client.ini files
with a cookie that till work with the server keys that are hardcoded
in the libntsfpga.py script.

```
cd nts-poc-python
cat >client.ini <<EOF
[ntpv4]
server = 192.168.40.30
port = 123

[keys]
c2s = 0994b8dca55d6704818b30b384fd745f7e98c046b8162a66c1ef60a828fc7acb
s2c = 77cd4aa7fb4cb180e7e38a46aca2e7681d7a4e0af2836a97d6de2d62c02f2d08

[cookies]
0 = b01dfaced3e1533fb0396392ead43868d26db946a4c6cb9922193b42bfd7dd3ed22237d36bf89af4e594c71f5b656efdd2626ec7c9952343de11b2f6e57bd428d9783852de133fe11436bc150f2fc5dafd5e7cdacc9e9fa29500aae2b48a298d3a679ba5
EOF
```

After that, use the NTS client to talk talk to the NTS server in the
FPGA:

```
/opt/python-nts/bin/python3 ntsts_client.py -d 192.168.40.30 123
```

To run NTS properly you need to set up a NTSKE server.

Create either a self signed certifcate or a get a proper certificate
and put the private key and certificate in the certs directory.

Create a server.ini file:

```
cat >server.ini <<EOF
[ntske]
port = 4460
server_cert = certs/cert.pem
server_key = certs/privkey.pem

[ntpv4]
server = 192.168.40.30
port = 123

[keys]
server_keys_dir = server_keys
EOF

```

And add the hardcoded server key from libntsfpga.py:

```
mkdir -p server_keys
echo "2323c3d99ba5c11d7c7acc6e14b8c5da0c4663475c2e5c3adef46f73bcdec043" >server_keys/b01dface.key
```

/opt/python-nts/bin/python3 ntske_server.py

Ther server should now say that the server key is active:

```
master keys [ b'b01dface' ]
```

Just to make sure that everything is working, remove any existing
client.ini:

```
rm client.ini
```

In a different terminal, connect to the NTSKE server:

```
/opt/python-nts/bin/python3 ntske_client.py -d -v localhost 4460
```

and then connect to the FPGA to make a NTS request:

```
/opt/python-nts/bin/python3 ntsts_client.py -d 192.168.40.30 123
```
