This is a simple test project used to test the NEORV32 RISC-V core on
the VC709 reference board.

First a block design is created with a PCIe to AXI bridge.  There are
two AXIL peripherals connected to the AXI bridge: a 16550 compatible
UART and a 32 bit GPIO register.

The AXIL UART is connected to the UART console on the NEORV32 and the
AXIL GPIO pins are used to reset the NEORV32 and to bitbang the I2C
protocol connected to an I2C slave.


