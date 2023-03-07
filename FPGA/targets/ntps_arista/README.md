# NTPS, a NTP/NTS server in a FPGA

# Introduction

This is a project to build an RPM package with a NTPS FPGA image,
Linux drives and UI code for the Arista 7130-48LB switch.  It should
not be hard to make the same image work on any other switch in the
Arista 7130 series, but only the 48LB is supported so far.

The functionality is almost identical to the NTPS image on the VCU118
which uses the same Xilinx Virtex Ultrascale+ VU9P FPGA.  The big
difference between them is that the Arista switch has a "tscore" which
syncronises an internal OCXO to an external pps input.  The 10MHz
clock and internal PPS pulse from the "tscore" is then used as inputs
to the ntps_clock blocks inside the NTPS code.  On the VCU118 the two
ntp_clock blocks are driven directly from external 10MHz and PPS
inputs.  Note that for all this to work the Arista also needs some
kind of rough time source, either via PTP or NTP in addition to the
PPS input.  Another difference is that I2C present in the Arista is
used to configure the NTPS IP block instead of PCI Express as on the
VCU118.

This project is based on the Arista "tscore" example project which has
been renamed to "ntps" and extended with the NTPS functionality.  Read
documenation for the "tscore" example to learn more about how it
works.  The NTPS specific parts work just like on the VCU118.

Licensed under the ![BSD 3-clause license][LICENSE.md]

# Building and installing

Download the Arista FDK 2.0.0 beta1 from Arista's support web and copy
it to (or make a symlink to):

```
FPGA_NTP_SERVER/arista_fdk-2.0.0beta1
```

To build the Arista FPGA image and RPM:

```
. /opt/Xilinx/Vivado/2019.2/settings64.sh
cd FPGA_NTP_SERVER/FPGA/targets/ntps_arista
./build.sh
```

Copy the RPM to the Arista switch (if using the default admin account):

```
scp ntps-4.0.0.swix admin@arista:
```

Shut down and uninstall the any old applications that might collide,
load the new one and exit the CLI to reload the application CLI parts:

```
enable
config
app ntps
shutdown
app tscore
shutdown
config
remove app ntps
remove app tscore
install app ntps-4.0.0.swix
exit
exit
```

# NTP client configuration

First you have to configure the switch as a NTP client.  This is
needed because in addition to the PPS pulse the switch needs absolute
time which is aligned to within about 0.25 seconds from the PPS pulse.
The IP addresses below correspond to sth1.ntp.netnod.se and
sth2.ntp.netnod.se.

```
enable
config
no ntp server
ntp server 194.58.202.20 iburst
ntp server 194.58.202.148 iburst
```

Use the following command to check if the ntp client has synchronized
the local clock:

```
show ntp status
```

It can take some time until the NTP client considers the local clock
as synchronized with the NTP server.  Until then the output from the
above command will look like this:

```
unsynchronised
   polling server every 64 s
```

When synchronized it will look like this.  You can now continue.

```
synchronised to NTP server (194.58.202.148) at stratum 2
   time correct to within 6 ms
   polling server every 64 s
```

Verify that the NTP client is able to talk to the NTP servers:

```
show ntp associations
```

which should show something like this:

```
     remote           refid      st t when poll reach   delay   offset  jitter
==============================================================================
+194.58.202.20   .PPS.            1 u   49   64  377    0.291   -1.392   0.562
*194.58.202.148  .PPS.            1 u   39   64  377    0.276   -1.601   0.597
```

Also verify that the local clock is within 0.25 seconds from one of
the NTP servers:

```
bash ntpdate -q 194.58.202.20
server 194.58.202.20, stratum 1, offset -0.003113, delay 0.02576
```

# Configure the ntps application

```
enable
config
app ntps
    mac address 52:5a:2c:18:2c:f6
    ip address 0 192.168.40.50
    ip address 4 192.168.40.54
    ip address 5 192.168.40.55
    v6 address 0 fd75:502f:e221:ddcf::32
    nts key 0 12345678 9b71d224bd62f3785d96d46ad3ea3d73319bfbc2890caadae2dff72519673ca7
    nts key 1 b01dface 2323c3d99ba5c11d7c7acc6e14b8c5da0c4663475c2e5c3adef46f73bcdec043
    nts key 2 13fe78e9 feb10c699c6435be5a9ee521e40e420cf665d8f7a969302a63b9385d353ae43e
    nts key 3 87654321 7b71d224bd62f3785d96d46ad3ea3d73319bfbc2890caadae2dff72519673ca7
    active nts key 1
```

It may be a good idea to make the configuration up to here permanent
using "wr mem" so you don't have to redo it after a restart of the
switch.

Make sure local clock is synchronized and finally enable the FPGA.  If
the local clock is not synchronized you will get strange errors due to
the internal timestamping in the FPGA being off.

```
enable
config
app ntps
    shutdown
    no shutdown
```

Starting the ntps application takes quite some time to finish and will
output a lot of debug messages.

# Testing locally on the switch

Set up one of the local management interfaces (ma5) and connect it to
the first application port (ap1) on the FPGA through the L1 switch:

```
enable
config
interface ma5
    shutdown
    source ap1
    destination ap1
    ip address 192.168.40.10 255.255.255.0
    no shutdown
```

Check the  status of the management port:

```
show interface ma5
```

Verify that both Rx and Tx say "up (link)":

```
Port: ma5
Type: 100/1000/10G

 Description:
 Rx: up (link) Tx: up (link) Source: ap1 Speed: 10G Type: 100/1000/10G
 IP_Address: 192.168.40.10/24
```

You should now be able to ping the NTP server:

```
ping 192.168.40.50
```

```
PING 192.168.40.50 (192.168.40.50) 56(84) bytes of data.
64 bytes from 192.168.40.50: icmp_seq=1 ttl=255 time=0.117 ms

--- 192.168.40.50 ping statistics ---
1 packets transmitted, 1 received, 0% packet loss, time 0ms
rtt min/avg/max/mdev = 0.117/0.117/0.117/0.000 ms
```

NOTE that for the moment there is some issue with starting up the NTP
server and using a loopback to the management interfaces.  Sometimes
it just doesn't work and the ping command will report 100% packet
loss.  This might be the same issue as copper SFPs sometimes having
problems.  If that happens, try restarting the switch ("reload").

You can now ask the FPGA for time using the NTP protocol:

```
bash ntpdate -q 192.168.40.50
```

```
server 192.168.40.50, stratum 1, offset +0.003595, delay 0.02573
19 Jan 07:17:44 ntpdate[86739]: adjust time server 192.168.40.50 offset +0.003595 sec
```

# Production use using a SFP+ port

Set up the first ethernet port (et1) so that it is connected to the
first application port (ap1) of the FPGA through the L1 switch:

```
enable
config
interface et1
    no shutdown
    source ap1
    destination ap1
```

NOTE You must use a 10G SR/LR fiber SFP+, copper SFPs may or may not
work or be unstable with the current FPGA code.  This is probably due
to the ethernet MAC in the ntps FPAG code being rather hardcoded for
fiber.  In the future we might convert the NTPS FPGA to use the Arista
ethernet MAC which should be more stable.  But as for now the FPGA
uses the same ethernet MAC as the VC709 and VCU118 boards and may have
some issues with other SFP+ modules than the ones we have been using.

Configure a machine connected to port 1 with an IP address that can
talk to the FPGA and test using "ping" and "ntpdate" from that
machine.

The FGPA also supports the NTS protocol which is a lot more complex
and requires a NTS-KE server for key establishment and an NTS client.
See the [README for the VCU118 implementation](../ntps_vcu118/README.md)
for information on how to test the NTS parts.

# Random useful commands

Show ethernet interface statistics

```
show interface et1
```

Show the timesource used for the PPS pulse

```
enable
app ntps
show timesource
```

Check that the PPS pulse is properly received

```
enable
debug show pps 10
```

Show ntps (actually tscore) synchronisation status

```
show ntps synchronisation status
show ntps synchronisation status verbose
```

Show NTP client status

```
show ntp status
show ntp associations
```

If you are working on the Linux device driver or the Python
configuration scripts you can rebuild just the RPM, and not have to
rebuild the FPGA image, with the following command:

```
find . -name "*.rpm" | xargs rm -rfv ./build/rpmbuild/ ; nice make BOARDSTD=lb2
```
