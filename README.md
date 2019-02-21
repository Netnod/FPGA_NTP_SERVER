Introduction
============

This directory contains the source code for a NTP server running in a
Virtex 7 FPGA device on a Xilinx VC709 reference board.

This NTP server is used to run the Swedish Distributed Time Service.
More information can be found here:

http://www.ntp.se/

Requirements
============

- a Xilinx VC709 connectivity kit with the necessary cables such as a
     PC power supply adapter cable to power the board and a micro USB
     cable to be able to program the board.

- a PC running Linux to install the VC709 in which is used to power
     and control the VC709 board.

- a 10MHz clock and PPS source

- An interface board which converts 10MHz and PPS via SMA connectors
  to signals suitable for the FMC connector on the VC709 board.  The
  schematics for this interface board are available on request.  Send
  an e-mail to <info@netnod.se> to get in touch with us.

- You will need a PC running Xilinx Vivado to program the VC709 board.

- If you want to build the FPGA bitstream from source you will need a
decently powerful PC running Xilinx Vivado.  You will also need a
Vivado license, the free-to-use Vivado WebPACK Edition is device
limited and can not create bitstreams for the Virtex device on the
VC709 board.

The same PC can be used to power and control the VC07, to program the
VC709 and to build the FPGA image, or the different tasks can be run
on separate PCs.

The instructions below assume that you have a Linux machine running
CentOS 7.0 and will show how to install such a machine from scratch.
It is possible to run Xilinx Vivado and the NTP server software on
other Linux distributions, but if you do that you are on your own.

Limitations
===========

- The 10MHz clock and PPS must be very clean with low jitter for the
  FPGA image to be able to lock onto the signals.  Many GPS receivers
  output a 10MHz clock and/or PPS pulse which has too much jitter to
  be usable with the FPGA image.

- The optical ethernet ports only support 10Gbit speed with a
  10GBASE-SR, 10GBASE-LR or 10GBASE-ER transceiver.  1Gbit or 100MBit
  speed are not supported.

- There is no external gateway setting in the configuration for the
  FPGA_NTP_SERVER.  All replies are sent to the MAC address found in
  the response.  Normally this is not a problem, but if you have a
  network with asymmetric routing where packets are received from one
  router and should be sent out through a different router, this will
  not work.

Setting up a CentOS 7.x Linux machine
=====================================

Download a CentOS ISO from:

  https://www.centos.org/download/

Boot from the ISO, either copy it to a USB stick or boot a virtual
machine from it.

In the installer select the language:

    English - English (United States)

Partitioning:

- If you want to install Xilinx Vivado you will need about 10Gbytes of
     free space on the drive that holds /opt.

- If you want to build the FPGA bitstream, a build tree will use about
     1.5Gbytes of disk space.  The build process uses about 10GBytes of
     RAM, if you have less than 10Gbytes of RAM free the build process
     will probably be even more slow that normal.

- I'd suggest having a root file system which is at least 30GBytes.

- If you have less than 16GBytes of RAM in the machine you will most
     probably also need a swap partition.

- If you want to run Vivado on the console, choose "Server with GUI"
     or "GNOME Desktop".

You can use the defaults for all other settings.  Begin the
installation.

Set the root password and create a user account.

When the installation is finished and the machine has been rebooted,
log in as root.

_Note, if you installed CentOS 7 with a GUI of some kind it will start
libvirtd by default.  This will bring up a network interface virtbr0
with IP address 192.168.122.1.  If you installed CentOS in a KVM
virtual machine, eth0 will by default also be assigned an address on
the 192.168.122 network and nothing will work.  If that happens,
disable the libvirtd service on CentOS with "chkconfig libvirtd off"
and reboot the machine._

Update the machine:

    yum -y update

Install the following packages:

    yum -y install git unzip wget

On the PC that will power and control the VC709 board you will also
need to install the following packages:

    yum -y install kernel-devel gcc binutils python-netaddr
    yum -y install net-tools ntpdate

On the PCs where you want to be able to run Xilinx Vivado you will
need the X Window System:

    yum -y groupinstall "X Window System"

You should now have a CentOS 7.x system which is ready to use.

Installing Xilinx Vivado 2015.2
===============================

Our FPGA bitstream has been built using Xilinx Vivado 2015.2 and I
would suggest that you also use that version.  Newer versions of
Vivado might work, or they might not.

Download Xilinx_Vivado_SDK_Lin_2015.2_0626_1.tar.gz from the Xilinx
Vivado archive page:

  https://www.xilinx.com/support/download/index.html/content/xilinx/en/downloadNav/vivado-design-tools/archive.html

Unpack the installer:

    tar xvfz Xilinx_Vivado_SDK_Lin_2015.2_0626_1.tar.gz

If need the disk space, you can now delete the installer archive:

    rm -f Xilinx_Vivado_SDK_Lin_2015.2_0626_1.tar.gz

If you do not have write permissions to /opt, become root and create a
directory /opt/Xilinx with you as the yourself the owner of it:

    sudo mkdir -p /opt/Xilinx
    sudo chown $USER /opt/Xilinx
    sudo chgrp $USER /opt/Xilinx

Start the installer with:

    cd Xilinx_Vivado_SDK_Lin_2015.2_0626_1
    ./xsetup

Accept the license agreements.  Press "Next".

Select "Vivado Design Edition".  Press "Next".

The default options will work just fine.  If you want to save on disk
space you can uncheck support for all devices except for "Virtex-7".
Press "Next".

Use the default install directory of "/opt/Xilinx".  Press "Next".

Press "Install".  Wait until the installation finishes.

Close the license manager.

Become root and change the owner of the Xilinx directory to root.root
so that users can't mess it up:

    chown -R root.root /opt/Xilinx
    chmod -R go-w /opt/Xilinx

If need the disk space, you can now delete the installer directory:

    rm -rf Xilinx_Vivado_SDK_Lin_2015.2_0626_1

Vivado License
--------------

If you will only use Vivado to program the FPGA bitstream you can do
not need a license.

If you want to be able to build the FPGA bitstream from source you
will need a Vivado license.  Note that the free WebPACK license will
not allow you to create a bitstream for the Virtex 7 device.  If you
do not have a Vivado license, request a 30 day trial license.

When you have a license file "Xilinx.lic" you need to install it.

Start Xilinx Vivado:

    . /opt/Xilinx/Vivado/2015.2/settings64.sh
    vivado

Start the License Manager with the menu "Help -> Manage License".

Press "Load License".  Then press "Copy License" and point the file
selector at your "Xilinx.lic".

Press "View License Status" and verify that the license looks good.

Close the license manager.

You can actually do this in an even simpler way, create a .Xilinx
directory in your home direcory and copy the license file there:

    mkdir -p $HOME/.Xilinx
    cp Xilinx.lic $HOME/.Xilinx

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

Setting up the VC709 hardware for the NTP server
================================================

Connect the interface board to the FMC connector on the VC709 board.

Connect your 10MHz clock source to connector J? on the interface card.

Connect your PPS source to connector J? on the interface card.

Connect one or more of the SFP+ ports of the VC709 cards to a 10GBit
capable device.  Note that the FPGA_NTP_SERVER only supports 10GBit
ethernet, it can not do 1Gbit or 100Mbit.

Program the VC709 board with the FTP_NTP_SERVER bitstream
=========================================================

If you are going to program the VC709 with a different PC than you
used to build the FPGA bitstream you will have to install Xilinx
Vivado on that PC too.  The PC you use to program the VC709 can be the
same PC used to power and control the VC709 board.  See the
instructions above on how to install Vivado.

Also install the Xilinx cable drivers.  If you are using Linux,
download the document UG973 - "Vivado Design Suite User Guide":

  https://www.xilinx.com/support/documentation/sw_manuals/xilinx2018_3/ug973-vivado-release-notes-install-license.pdf

and follow the instructions in "Installing Linux Driver".

Connect a USB cable from the Micro USB programming connector on the
VC709 to a USB port on the PC you want to use for programming.

If you used a different machine to build the FPGA than the VC709 board
is installed in, copy the following files from the
FPGA_NTP_SERVER/FPGA/vivado directory:

    ntps_top.bit
    ntps_top.mcs
    ntps_top.prm

Programming the flash on the VC709 board
----------------------------------------

If you want to program the flash on the VC709 board so that the FPGA
will load the bitstream from flash the next time the VC709 board is
powered on, use the following command:

    . /opt/Xilinx/Vivado/2015.2/settings64.sh
    cd FPGA_NTP_SERVER/FPGA/vivado
    ./program_flash.sh

Power off and on the machine to load the FPGA bitstream from flash.

Programming the FPGA only
-------------------------

If you want to program the FPGA with the contents of ntps_top.bit, use
the following command:

    . /opt/Xilinx/Vivado/2015.2/settings64.sh
    cd FPGA_NTP_SERVER/FPGA/vivado
    ./program_fpga.sh

Reboot the PC.  Do not power off and on the machine.  The step above
only programs the FPGA itself, not the flash memory on the VC709, so
if you power off and on the machine the FPGA will reload the default
application from flash.

Programming the FPGA using hotplug
----------------------------------

If you feel adventurous you can try to use the hotplug support in the
Linux kernel instead of rebooting the machine.  It does not work on
all machines, but if it works it's a bit more convenient than having
to reboot after programming the FPGA.

Run the following commands as root with SLOT changed to match PCI
slot your VC709 boards is installed in:

    . /opt/Xilinx/Vivado/2015.2/settings64.sh
    cd FPGA_NTP_SERVER/FPGA/vivado
    SLOT="0000:01:00.0"
    lspci -nn -s $SLOT
    echo 1 >/sys/bus/pci/devices/$SLOT/remove
    lspci -nn -s $SLOT
    ./program_fpga.sh
    echo 1 >/sys/bus/pci/rescan
    lspci -nn -s $SLOT

The "echo 1 >../remove" tells the kernel forget about the PCI device
in the specified slot.  The FPGA is then reprogrammed and the kernel
is told to rescan the PCI bus looking for new devices.

When Linux boots it will probe the PCIe slot and see the new FPGA
image that has been loaded from the bitstream.

Verify that the FPGA_NTP_SERVER bitstream has been loaded
---------------------------------------------------------

Run "lspci -nn" and verify that the VC709 board shows up as expected
in the list of PCI devices.  You should see a line such as this:

    01:00.0 Memory controller [0580]: Xilinx Corporation Device [10ee:7028]

Note that this line is different from the default application as seen
before.  The FPGA_NTP_SERVER shows up as a "Memory controller" with ID
10ee:7028, whereas the default application shows up as a
"Communication controller" with ID 10ee:7083.

Configuring and starting the NTP server
=======================================

Check out the FPGA_NTP_SERVER project using git on the machine that
the VC709 board is installed in:

    git clone https://github.com/Netnod/FPGA_NTP_SERVER.git

The kernel module is called "xpcie" and is a modified version of the
default driver shipped by Xilinx.

Build the Linux kernel module with:

    cd FPGA_NTP_SERVER/Linux_Driver
    make

You should now have built a file called "xpcie.ko".

You will need to rebuild the Linux kernel module every time you have
rebooted your machine with a new kernel.

Load the kernel module and create a device node for it in /dev with:

    sudo ./setup_dev.sh

The script should tell you the major number for the new character
device that has been created:

    xpcie at major 238
    crw-rw-rw- 1 root root 238, 1 jan  8 16:26 /dev/xpcie

You will need to run this script on every time you have rebooted the
machine.

Configure and start the NTP server:

    python setup_server.py

You should see something like this:

    FPGA build at 2018-12-17 15:36:51
    FPGA Die temperature is 47.9C.
    pll_status 0xc000017b 0x00000200
    pll_status 0xc000017b 0x00000200
    pll_status 0xc000017b 0x00000200
    PATH 0: gen_config 0xa040803f
    PATH 1: gen_config 0xa040803f
    PATH 2: gen_config 0xa040803f
    PATH 3: gen_config 0xa040803f
    XPHY 0 status: 0x00000017
    XPHY 1 status: 0x00000017
    XPHY 2 status: 0x00000009
    XPHY 3 status: 0x00000009

The pll_status field above shows that the FPGA has a lock on both the
10MHz clock (bit 31 - 0x80000000) and PPS (bit 30 - 0x40000000)
signals for clock input A.  The lower bits (0x17b) show the offset
between the 10MHz clock and the PPS pulse.

An XPHY status of 0x00000017 means that the SFP+ port has detected a
link.  An XPY status of 0x00000009 means the SFP+ port has not
detected a link.  This is correct in this case since only port 0 and
port 1 of my VC709 board are connected.

By default the setup_server.py script will configure the ports for
10GB short range SFP+ transceivers (the ones that come with the VC709
connectivity kit).  The following addresses are used for the ports:

    Port 0 - IPv4 192.168.40.2/24 - IPv6 2001:6b0:123::10
    Port 1 - IPv4 192.168.41.2/24 - IPv6 2001:6b0:123::11
    Port 2 - IPv4 192.168.42.2/24 - IPv6 2001:6b0:123::12
    Port 3 - IPv4 192.168.43.2/24 - IPv6 2001:6b0:123::13

The NTP server is now up and running.

Testing the NTP server
======================

If the other end is a 10Gbit ethernet card in a Linux PC you should
now be able to configure it with an IP-address on the same network:

    sudo ifconfig enp5s0f0 192.168.40.1

and use the ntpdate command to verify that the NTP server is up:

    ntpdate -q 192.168.40.2

which should show something like this:

    8 Jan 16:39:16 ntpdate[2874]: adjust time server 192.168.40.2 offset -0.459889 sec

Building the FPGA bitstream
===========================

If you want to build the FPGA bitstream from source, set up a PC
running CentOS 7.0 and install Xilinx Vivado as described above.

Check out the FPGA_NTP_SERVER project using git:

    git clone https://github.com/Netnod/FPGA_NTP_SERVER.git

Source the settings file to be able to use Xilinx Vivado 2015.2:

    . /opt/Xilinx/Vivado/2015.2/settings64.sh

Download and unpack some files from Xilinx that the build needs:

    cd FPGA_NTP_SERVER/FPGA/xilinx/
    ./download-and-unpack.sh

Recreate the ntps vivado project using a TCL file:

    cd FPGA_NTP_SERVER/FPGA/vivado/
    vivado -mode batch -source ntps.tcl

Build the bitstream:

    cd FPGA_NTP_SERVER/FPGA/vivado/
    vivado -mode batch -source build.tcl

On a decent PC (Ryzen 2400G) the build will take about 2 hours.

The output from the build will be the following files:

    ntps_top.bit
    ntps_top.mcs
    ntps_top.prm

The .bit file is the FPGA bitstream which can be programmed directly
into the FPGA.  The .mcs and .prm files are used to program the flash
memory on the VC709 board.
