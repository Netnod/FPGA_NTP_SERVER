/*
//--------------------------------------------------------------------------------
//--
//-- This file is owned and controlled by Xilinx and must be used solely
//-- for design, simulation, implementation and creation of design files
//-- limited to Xilinx devices or technologies. Use with non-Xilinx
//-- devices or technologies is expressly prohibited and immediately
//-- terminates your license.
//--
//-- Xilinx products are not intended for use in life support
//-- appliances, devices, or systems. Use in such applications is
//-- expressly prohibited.
//--
//--            **************************************
//--            ** Copyright (C) 2006, Xilinx, Inc. **
//--            ** All Rights Reserved.             **
//--            **************************************
//--
//--------------------------------------------------------------------------------
//-- Filename: xpcie.c
//--
//-- Description: XPCIE device driver.
//--
//-- XPCIE is an example Red Hat device driver for the PCI Express Memory
//-- Endpoint Reference design. Device driver has been tested on fedora
//-- 2.6.18.
//--
//--
//-- Cleaned up and modified for the FPGA NTP server project and tested on Centos 7
//-- Mechanical Men Sweden AB / RA
//--
//--------------------------------------------------------------------------------
*/

#include <linux/init.h>
#include <linux/module.h>
#include <linux/pci.h>
#include <linux/interrupt.h>
#include <linux/fs.h>
#include <asm/uaccess.h>   /* copy_to_user */

#include "xpcie.h"

MODULE_LICENSE("Dual BSD/GPL");

#define HAVE_REGION 0x01               // I/O Memory region
#define HAVE_IRQ    0x02               // Interupt
#define HAVE_KREG   0x04               // Kernel registration

int             gDrvrMajor = 240;      // Major number not dynamic.
unsigned int    gStatFlags = 0x00;     // Status flags used for cleanup.
unsigned long   gBaseHdwr;             // Base register address (Hardware address)
unsigned long   gBaseLen;              // Base register address Length
void           *gBaseVirt = NULL;      // Base register address (Virtual address, for I/O).
char            gDrvrName[]= "xpcie";   // Name of driver in proc.
struct pci_dev *gDev = NULL;           // PCI device structure.
int             gIrq;                  // IRQ assigned by PCI system.
char           *gBufferUnaligned = NULL;   // Pointer to Unaligned DMA buffer.
char           *gReadBuffer      = NULL;   // Pointer to dword aligned DMA buffer.
char           *gWriteBuffer     = NULL;   // Pointer to dword aligned DMA buffer.



// Struct Used for Writing Register.  Holds value and register to be written
typedef struct regwrite {
	int reg;
	int value;
} regwr;

// Struct Used for Writing CFG Register.  Holds value and register to be written
typedef struct cfgwrite {
	int reg;
	int value;
} cfgwr;

//-----------------------------------------------------------------------------
// Prototypes
//-----------------------------------------------------------------------------
void XPCIe_IRQHandler (int irq, void *dev_id, struct pt_regs *regs);
void initcode(void);
u32  XPCIe_ReadReg (u32 dw_offset);
void XPCIe_WriteReg (u32 dw_offset, u32 val);
u32  XPCIe_ReadCfgReg (u32 byte);
u32  XPCIe_WriteCfgReg (u32 byte, u32 value);


/*****************************************************************************
 * Name:        XPCIe_Open
 *
 * Description: Book keeping routine invoked each time the device is opened.
 *
 * Arguments: inode :
 *            filp  :
 *
 * Returns: 0 on success, error code on failure.
 *
 * Modification log:
 * Date      Who  Description
 * --------  ---  ----------------------------------------------------------
 *
 ****************************************************************************/
int XPCIe_Open(struct inode *inode, struct file *filp)
{
    //MOD_INC_USE_COUNT;
    printk("%s: Open: module opened\n",gDrvrName);
    return SUCCESS;
}

/*****************************************************************************
 * Name:        XPCIe_Release
 *
 * Description: Book keeping routine invoked each time the device is closed.
 *
 * Arguments: inode :
 *            filp  :
 *
 * Returns: 0 on success, error code on failure.
 *
 * Modification log:
 * Date      Who  Description
 * --------  ---  ----------------------------------------------------------
 *
 ****************************************************************************/
int XPCIe_Release(struct inode *inode, struct file *filp)
{
    //MOD_DEC_USE_COUNT;
    printk("%s: Release: module released\n",gDrvrName);
    return(SUCCESS);
}

/***************************************************************************
 * Name:        XPCIe_Write
 *
 * Description: This routine is invoked from user space to write data to
 *              the 3GIO device.
 *
 * Arguments: filp  : file pointer to opened device.
 *            buf   : pointer to location in users space, where data is to
 *                    be acquired.
 *            count : Amount of data in bytes user wishes to send.
 *
 * Returns: SUCCESS  = Success
 *          CRIT_ERR = Critical failure
 *          TIME_ERR = Timeout
 *          LINK_ERR = Link Failure
 *
 * Modification log:
 * Date      Who  Description
 * --------  ---  ----------------------------------------------------------
 *
 ****************************************************************************/
ssize_t XPCIe_Write(struct file *filp, const char *buf, size_t count,
                       loff_t *f_pos)
{
	int ret = SUCCESS;
	memcpy((char *)gBaseVirt, buf, count);
	printk("%s: XPCIe_Write: %d bytes have been written...\n", gDrvrName, count);
	return (ret);
}

/***************************************************************************
 * Name:        XPCIe_Read
 *
 * Description: This routine is invoked from user space to read data from
 *              the 3GIO device. ***NOTE: This routine returns the entire
 *              buffer, (BUF_SIZE), count is ignored!. The user App must
 *              do any needed processing on the buffer.
 *
 * Arguments: filp  : file pointer to opened device.
 *            buf   : pointer to location in users space, where data is to
 *                    be placed.
 *            count : Amount of data in bytes user wishes to read.
 *
 * Returns: SUCCESS  = Success
 *          CRIT_ERR = Critical failure
 *          TIME_ERR = Timeout
 *          LINK_ERR = Link Failure
 *
 *
 * Modification log:
 * Date      Who  Description
 * --------  ---  ----------------------------------------------------------
 *
 ****************************************************************************/
ssize_t XPCIe_Read(struct file *filp, char *buf, size_t count, loff_t *f_pos)
{
	memcpy(buf, (char *)gBaseVirt, count);
	printk("%s: XPCIe_Read: %d bytes have been read...\n", gDrvrName, count);
	return (0);
}

/***************************************************************************
 * Name:        XPCIe_Ioctl
 *
 * Description: This routine is invoked from user space to configure the
 *              running driver.
 *
 * Arguments: inode :
 *            filp  : File pointer to opened device.
 *            cmd   : Ioctl command to execute.
 *            arg   : Argument to Ioctl command.
 *
 * Returns: 0 on success, error code on failure.
 *
 * Modification log:
 * Date      Who  Description
 * --------  ---  ----------------------------------------------------------
 *
 ****************************************************************************/
long XPCIe_Ioctl(struct file *filp, unsigned int cmd, unsigned long arg)
{
    u32 regx;
    int ret = SUCCESS;

    if ((cmd & 0xff000000) != MAGIX)    return -EINVAL;
    if ((cmd & 0x003fffff) >= BUF_SIZE) return -EINVAL;
    int wr = cmd & PIOW;

    int offs = cmd & (BUF_SIZE-1);

    if (wr) {
      // Write Port
      if (!access_ok(VERIFY_READ, (void __user *)arg, sizeof(arg))) return -EFAULT;
      XPCIe_WriteReg(offs, arg);
    } else {
      // Read Port
      regx = XPCIe_ReadReg(offs);
      if (copy_to_user((void *)arg, &regx, sizeof(regx))) return -EFAULT ;
    }

      /*    // Note dangerous stuff below
    } else if (cmd == RDREG) {                 // Read: Any FPGA Reg.  Added generic functionality so all register can be read
      regx = XPCIe_ReadReg(*(u32 *)arg);
      *((u32 *)arg) = regx;
    } else if (cmd == RDCFGREG) {              // Read: Any CFG Reg.  Added generic functionality so all register can be read
      regx = XPCIe_ReadCfgReg(*(u32 *)arg);
      *((u32 *)arg) = regx;
    } else if (cmd == WRREG) {                 // Write: Any FPGA Reg.  Added generic functionality so all register can be read
      	XPCIe_WriteReg((*(regwr *)arg).reg,(*(regwr *)arg).value);
	printk(KERN_WARNING"%d: Write Register.\n", (*(regwr *)arg).reg);
	printk(KERN_WARNING"%d: Write Value\n", (*(regwr *)arg).value);
    } else if (cmd == WRCFGREG) {                 // Write: Any CFG Reg.  Added generic functionality so all register can be read
      	regx = XPCIe_WriteCfgReg((*(cfgwr *)arg).reg,(*(cfgwr *)arg).value);
	printk(KERN_WARNING"%d: Write Register.\n", (*(cfgwr *)arg).reg);
	printk(KERN_WARNING"%d: Write Value\n", (*(cfgwr *)arg).value);
      */

    return ret;
}
struct file_operations XPCIe_Intf = {
    read:           XPCIe_Read,
    write:          XPCIe_Write,
    unlocked_ioctl: XPCIe_Ioctl,
    open:           XPCIe_Open,
    release:        XPCIe_Release,
};

static int XPCIe_init(void)
{
    gDev = pci_get_device (PCI_VENDOR_ID_XILINX, PCI_DEVICE_ID_XILINX_PCIE, gDev);
    if (NULL == gDev) {
        printk(/*KERN_WARNING*/"%s: Init: Hardware not found.\n", gDrvrName);
        //return (CRIT_ERR);
        return (-1);
    }

    if (0 > pci_enable_device(gDev)) {
        printk(/*KERN_WARNING*/"%s: Init: Device not enabled.\n", gDrvrName);
        //return (CRIT_ERR);
        return (-1);
    }

    // Get Base Address of registers from pci structure. Should come from pci_dev
    // structure, but that element seems to be missing on the development system.
    gBaseHdwr = pci_resource_start (gDev, 0);
    if (0 > gBaseHdwr) {
        printk(/*KERN_WARNING*/"%s: Init: Base Address not set.\n", gDrvrName);
        //return (CRIT_ERR);
        return (-1);
    }
    printk(/*KERN_WARNING*/"Base hw val %X\n", (unsigned int)gBaseHdwr);

    gBaseLen = pci_resource_len (gDev, 0);
    printk(/*KERN_WARNING*/"Base hw len %d\n", (unsigned int)gBaseLen);

    // Remap the I/O register block so that it can be safely accessed.
    // I/O register block starts at gBaseHdwr and is 32 bytes long.
    // It is cast to char because that is the way Linus does it.
    // Reference "/usr/src/Linux-2.4/Documentation/IO-mapping.txt".

    gBaseVirt = ioremap(gBaseHdwr, gBaseLen);
    if (!gBaseVirt) {
        printk(/*KERN_WARNING*/"%s: Init: Could not remap memory.\n", gDrvrName);
        //return (CRIT_ERR);
        return (-1);
    }

    printk(/*KERN_WARNING*/"Virt hw val %X\n", (unsigned int)gBaseVirt);

    // Get IRQ from pci_dev structure. It may have been remapped by the kernel,
    // and this value will be the correct one.

    gIrq = gDev->irq;
    printk("irq: %d\n",gIrq);

    //--- START: Initialize Hardware

    // Try to gain exclusive control of memory for demo hardware.
    //if (0 > check_mem_region(gBaseHdwr, FPGA_REGISTER_SIZE)) {
    if (0 > check_mem_region(gBaseHdwr, gBaseLen)) {
        printk(/*KERN_WARNING*/"%s: Init: Memory in use.\n", gDrvrName);
        //return (CRIT_ERR);
        return (-1);
    }

    //request_mem_region(gBaseHdwr, FPGA_REGISTER_SIZE, "XPCIe");
    request_mem_region(gBaseHdwr, gBaseLen, "XPCIe");
    gStatFlags = gStatFlags | HAVE_REGION;

    printk(/*KERN_WARNING*/"%s: Init:  Initialize Hardware Done..\n",gDrvrName);

    // Request IRQ from OS.
#if 0
    if (0 > request_irq(gIrq, &XPCIe_IRQHandler,/* SA_INTERRUPT |*/ SA_SHIRQ, gDrvrName, gDev)) {
        printk(/*KERN_WARNING*/"%s: Init: Unable to allocate IRQ",gDrvrName);
        return (-1);
    }
    gStatFlags = gStatFlags | HAVE_IRQ;
#endif

    initcode();

    //--- END: Initialize Hardware

    //--- START: Allocate Buffers

    gBufferUnaligned = kmalloc(BUF_SIZE, GFP_KERNEL);

    gReadBuffer = gBufferUnaligned;
    if (NULL == gBufferUnaligned) {
        printk(KERN_CRIT"%s: Init: Unable to allocate gBuffer.\n",gDrvrName);
        return (-1);
    }

    gWriteBuffer = kmalloc(BUF_SIZE, GFP_KERNEL);
    if (NULL == gWriteBuffer) {
        printk(KERN_CRIT"%s: Init: Unable to allocate gBuffer.\n",gDrvrName);
        return (-1);
    }

    //--- END: Allocate Buffers

    //--- START: Register Driver
    // Register with the kernel as a character device.
    // Abort if it fails.
    if (0 > register_chrdev(gDrvrMajor, gDrvrName, &XPCIe_Intf)) {
        printk(KERN_WARNING"%s: Init: will not register\n", gDrvrName);
        return (CRIT_ERR);
    }
    printk(KERN_INFO"%s: Init: module registered\n", gDrvrName);
    gStatFlags = gStatFlags | HAVE_KREG;

    printk("%s driver is loaded\n", gDrvrName);

  return 0;
}

static void XPCIe_exit(void)
{

  if (gStatFlags & HAVE_REGION) {
    //(void) release_mem_region(gBaseHdwr, FPGA_REGISTER_SIZE);}
     (void) release_mem_region(gBaseHdwr, gBaseLen);}

    // Release IRQ
    if (gStatFlags & HAVE_IRQ) {
        (void) free_irq(gIrq, gDev);
    }


    // Free buffer
    if (NULL != gReadBuffer)
        (void) kfree(gReadBuffer);
    if (NULL != gWriteBuffer)
        (void) kfree(gWriteBuffer);

    gReadBuffer = NULL;
    gWriteBuffer = NULL;


    if (gBaseVirt != NULL) {
        iounmap(gBaseVirt);
     }

    gBaseVirt = NULL;


    // Unregister Device Driver
    if (gStatFlags & HAVE_KREG) {
	unregister_chrdev(gDrvrMajor, gDrvrName);
//        if (unregister_chrdev(gDrvrMajor, gDrvrName) > 0) {
//            printk(KERN_WARNING"%s: Cleanup: unregister_chrdev failed\n",
//                   gDrvrName);
//        }
    }

    gStatFlags = 0;

  printk(/*KERN_ALERT*/ "%s driver is unloaded\n", gDrvrName);
}

module_init(XPCIe_init);
module_exit(XPCIe_exit);

void XPCIe_IRQHandler(int irq, void *dev_id, struct pt_regs *regs)
{
}

void initcode(void)
{
}

u32 XPCIe_ReadReg (u32 dw_offset)
{
    u32 ret = 0;
    ret = readl(gBaseVirt + (dw_offset));
    printk(KERN_INFO"%s: XPCIe_RedReg: reg %d have been read with %08x ...\n", gDrvrName, dw_offset, ret);
    return ret;
}

void XPCIe_WriteReg (u32 dw_offset, u32 val)
{
    writel(val, (gBaseVirt + (dw_offset)));
    printk(KERN_INFO"%s: XPCIe_WriteReg: reg %d have been written with %08x ...\n", gDrvrName, dw_offset, val);
}

u32 XPCIe_ReadCfgReg (u32 byte)
{
    u32 pciReg;
    if (pci_read_config_dword(gDev, byte, &pciReg) < 0) {
        printk("%s: XPCIe_ReadCfgReg: Reading PCI interface failed.",gDrvrName);
        return (-1);
    }
    return (pciReg);
}

u32 XPCIe_WriteCfgReg (u32 byte, u32 val) {
    if (pci_write_config_dword(gDev, byte, val) < 0) {
        printk("%s: XPCIe_Read Device Control: Reading PCI interface failed.",gDrvrName);
        return (-1);
    }
    return 1;
}



