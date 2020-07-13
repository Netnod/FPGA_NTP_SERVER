//--------------------------------------------------------------------------------
//-- Filename: xpcie.h
//--
//-- Description: Main header file for kernel driver
//--
//-- XPCIE is an example Red Hat device driver which exercises FPGA design
//-- Device driver has been tested on Red Hat Fedora FC9 2.6.15.
//--------------------------------------------------------------------------------

// Define Result values
#define SUCCESS                    0
#define CRIT_ERR                  -1

// Debug - define will output more info
#define Verbose 1

// Max DMA Buffer Size
#define BUF_SIZE                  (1024 * 1024)   // Must match PCI & AXI BARs and

#define PCI_VENDOR_ID_XILINX      0x10ee
#define PCI_DEVICE_ID_XILINX_PCIE 0x7028      // 8 => 8 pcie lanes
//#define PCI_DEVICE_ID_XILINX_PCIE 0x7031    // 1 => 1 pcie lanes

//#define FPGA_REGISTER_SIZE           (4*8)    // There are eight registers, and each is 4 bytes wide.

#define MAGIX 'X' << 24  // Create unique IOTCL number sequence
#define MAGI0 '0' << 24  // Create unique IOTCL number sequence
#define MAGI1 '1' << 24  // Create unique IOTCL number sequence
#define MAGI2 '2' << 24  // Create unique IOTCL number sequence
#define MAGIE 'E' << 24  // Create unique IOTCL number sequence
#define PIOW   1  << 23  // Port Write

