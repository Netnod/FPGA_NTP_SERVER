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
#include <linux/uaccess.h>   /* copy_to_user */

#include "xpcie.h"

MODULE_LICENSE("Dual BSD/GPL");

#define HAVE_REGION 0x01               // I/O Memory region
#define HAVE_IRQ    0x02               // Interupt
#define HAVE_KREG   0x04               // Kernel registration

#define NET_PATH_AXI_BASE   0x2000
#define NET_PATH_OFS        0x1000

#define NTS_API_COMMAND     (70*4)
#define NTS_API_STATUS      (71*4)
#define NTS_API_ADDRESS     (72*4)
#define NTS_API_WRITE_DATA  (73*4)
#define NTS_API_READ_DATA   (74*4)

#define DISPATCHER_BASE 0x20000000

#define NTS_COMMAND_IDLE    0x0
#define NTS_COMMAND_READ    0x1
#define NTS_COMMAND_WRITE   0x3

#define NTS_STATUS_BUSY     0x0
#define NTS_STATUS_READY    0x1

#define API_DISPATCHER_ADDR_BUS_ID_CMD_ADDR    0x50
#define API_DISPATCHER_ADDR_BUS_STATUS         0x51
#define API_DISPATCHER_ADDR_BUS_DATA           0x52

#define ENGINE_BUS_READ     0x55
#define ENGINE_BUS_WRITE    0xAA

int             gDrvrMajor = 0;      // Major number not dynamic.
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
void           *pRegion;

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

struct xpcie_data {
  struct mutex mutex;
};

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
  struct xpcie_data *dev;

  dev = kzalloc(sizeof(struct xpcie_data), GFP_KERNEL);
  if (!dev)
    return -ENOMEM;
  mutex_init(&dev->mutex);

  filp->private_data = dev;

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
  kfree(filp->private_data);
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
#if 0
	printk("%s: XPCIe_Write: %d bytes have been written...\n",
	       gDrvrName, (int)count);
#endif
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
#if 0
	printk("%s: XPCIe_Read: %d bytes have been read...\n",
	       gDrvrName, (int)count);
#endif
	return (0);
}

static int XPCIe_Write_API(u32 port, u32 reg, u32 val)
{
  u32 offs = NET_PATH_AXI_BASE + port * NET_PATH_OFS;
  unsigned long timeout = jiffies + HZ / 10;
  int ret = 0;
  int n = 0;
  
  XPCIe_WriteReg(offs + NTS_API_ADDRESS, reg);
  XPCIe_WriteReg(offs + NTS_API_WRITE_DATA, val);
  XPCIe_WriteReg(offs + NTS_API_COMMAND, NTS_COMMAND_WRITE);
  while (1) {
    if (XPCIe_ReadReg(offs + NTS_API_STATUS) & NTS_STATUS_READY)
      break;
    n += 1;
    if (time_after(jiffies, timeout)) {
      ret = -EIO;
      break;
    }
    schedule();
  }
  XPCIe_WriteReg(offs + NTS_API_COMMAND, NTS_COMMAND_IDLE);
  // printk(KERN_INFO "XPCIe_Write_API: n=%d\n", n);

  return ret;
}

static int XPCIe_Read_API(u32 port, u32 reg, u32 *val)
{
      u32 offs = NET_PATH_AXI_BASE + port * NET_PATH_OFS;
      unsigned long timeout = jiffies + HZ / 10;
      int ret = 0;
      int n;

      XPCIe_WriteReg(offs + NTS_API_ADDRESS, reg);
      XPCIe_WriteReg(offs + NTS_API_COMMAND, NTS_COMMAND_READ);
      n = 0;
      while (1) {
	if (XPCIe_ReadReg(offs + NTS_API_STATUS) & NTS_STATUS_READY)
	  break;
	n += 1;
	if (time_after(jiffies, timeout)) {
	  ret = -EIO;
	  break;
	}
	schedule();
      }
      // printk(KERN_INFO "XPCIe_Read_API: n=%d\n", n);
      *val = XPCIe_ReadReg(offs + NTS_API_READ_DATA);  
      XPCIe_WriteReg(offs + NTS_API_COMMAND, NTS_COMMAND_IDLE);

      return ret;
}

static int XPCIe_Write_Engine(u32 port, u32 engine, u32 reg, u32 val)
{
  u32 cmd_addr = (engine << 20) | (ENGINE_BUS_WRITE<<12) | reg;
  unsigned long timeout = jiffies + HZ / 10;
  int ret = 0;

  ret = XPCIe_Write_API(port, DISPATCHER_BASE + API_DISPATCHER_ADDR_BUS_ID_CMD_ADDR, cmd_addr);
  if (ret)
    goto out;
  ret = XPCIe_Write_API(port, DISPATCHER_BASE + API_DISPATCHER_ADDR_BUS_DATA, val);
  if (ret)
    goto out;
  ret = XPCIe_Write_API(port, DISPATCHER_BASE + API_DISPATCHER_ADDR_BUS_STATUS, 1);
  if (ret)
    goto out;

  while (1) {
    u32 status;
    ret = XPCIe_Read_API(port, DISPATCHER_BASE + API_DISPATCHER_ADDR_BUS_STATUS, &status);
    if (ret)
      goto out;
    if (!status)
      break;
    if (time_after(jiffies, timeout)) {
      ret = -EIO;
      goto out;
    }
    schedule();
  }

 out:
  return ret;
}

static int XPCIe_Read_Engine(u32 port, u32 engine, u32 reg, u32 *val)
{
  u32 cmd_addr = (engine << 20) | (ENGINE_BUS_READ<<12) | reg;
  unsigned long timeout = jiffies + HZ / 10;
  int ret = 0;

  ret = XPCIe_Write_API(port, DISPATCHER_BASE + API_DISPATCHER_ADDR_BUS_ID_CMD_ADDR, cmd_addr);
  if (ret)
    goto out;
  ret = XPCIe_Write_API(port, DISPATCHER_BASE + API_DISPATCHER_ADDR_BUS_STATUS, 1);
  if (ret)
    goto out;

  while (1) {
    u32 status;
    ret = XPCIe_Read_API(port, DISPATCHER_BASE + API_DISPATCHER_ADDR_BUS_STATUS, &status);
    if (ret)
      goto out;
    if (!status)
      break;
    if (time_after(jiffies, timeout)) {
      ret = -EIO;
      goto out;
    }
    schedule();
  }

  ret = XPCIe_Read_API(port, DISPATCHER_BASE + API_DISPATCHER_ADDR_BUS_DATA, val);

 out:
  return ret;
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
    int ret = SUCCESS;
    int wr = cmd & PIOW;
    struct xpcie_data *dev = filp->private_data;
    
    if ((cmd & 0xff000000) == MAGIX) {
      u32 regx;
      u32 offs = cmd & (BUF_SIZE-1);

      if ((cmd & 0x003fffff) >= BUF_SIZE)
	return -EINVAL;

      if (wr) {
	// Write Port
	XPCIe_WriteReg(offs, arg);
      } else {
	// Read Port
	regx = XPCIe_ReadReg(offs);  
	if (copy_to_user((void *)arg, &regx, sizeof(regx)))
	  return -EFAULT ;
      }
    } else if ((cmd & 0xff000000) == MAGI0 ||
	       (cmd & 0xff000000) == MAGI1 ||
	       (cmd & 0xff000000) == MAGI2) {
      u32 port = (cmd >> 20) & 3;
      u32 reg = cmd & 0xfffff;

      if ((cmd & 0xff000000) == MAGI1)
	reg += 0x10000000;
      else if ((cmd & 0xff000000) == MAGI2)
	reg += 0x20000000;

      if (wr) {
	mutex_lock(&dev->mutex);
	ret = XPCIe_Write_API(port, reg, arg);
	mutex_unlock(&dev->mutex);
      } else {
	u32 regx;

	mutex_lock(&dev->mutex);
	ret = XPCIe_Read_API(port, reg, &regx);
	mutex_unlock(&dev->mutex);

	if (!ret && copy_to_user((void *)arg, &regx, sizeof(regx)))
	  return -EFAULT;
      }
    } else if ((cmd & 0xff000000) == MAGIE) {
      u32 port = (cmd >> 20) & 3;
      u32 engine = (cmd >> 12) & 0xff;
      u32 reg = cmd & 0xfff;

      if (wr) {
	mutex_lock(&dev->mutex);
	ret = XPCIe_Write_Engine(port, engine, reg, arg);
	mutex_unlock(&dev->mutex);
      } else {
	u32 regx;

	mutex_lock(&dev->mutex);
	ret = XPCIe_Read_Engine(port, engine, reg, &regx);
	mutex_unlock(&dev->mutex);

	if (!ret && copy_to_user((void *)arg, &regx, sizeof(regx)))
	  return -EFAULT;
      }
    }
    else {
      printk(KERN_INFO "invalid ioctl 0x%08x\n", cmd);
      return -EINVAL;
    }

    return ret;
}

struct file_operations XPCIe_Intf = {
    read:           XPCIe_Read,
    write:          XPCIe_Write,
    unlocked_ioctl: XPCIe_Ioctl,
    open:           XPCIe_Open,
    release:        XPCIe_Release,
};

static void XPCIe_exit(void)
{

  if (gStatFlags & HAVE_REGION) {
    //(void) release_mem_region(gBaseHdwr, FPGA_REGISTER_SIZE);}
     (void) release_mem_region(gBaseHdwr, gBaseLen);}

    // Release IRQ
    if (gStatFlags & HAVE_IRQ) {
        (void) free_irq(gIrq, gDev);
    }

    if (pRegion)
      release_mem_region(gBaseHdwr, gBaseLen);

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

static int XPCIe_init(void)
{
    int ret = -EIO;
    int i;

    if ((gDev = pci_get_device (0x10ee, 0x7028, gDev)) == NULL &&
        (gDev = pci_get_device (0x10ee, 0x9028, gDev)) == NULL &&
        (gDev = pci_get_device (0x10ee, 0x902f, gDev)) == NULL &&
        (gDev = pci_get_device (0x10ee, 0x9038, gDev)) == NULL) {
        printk(/*KERN_WARNING*/"%s: Init: Hardware not found.\n", gDrvrName);
	ret = -EIO;
	goto out;
    }

    if ((ret = pci_enable_device(gDev)) < 0) {
      printk(/*KERN_WARNING*/"%s: Init: Device not enabled (%d).\n", gDrvrName, ret);
	goto out;
    }

    // Get Base Address of registers from pci structure. Should come from pci_dev
    // structure, but that element seems to be missing on the development system.
    gBaseHdwr = pci_resource_start (gDev, 0);
    if (0 > gBaseHdwr) {
        printk(/*KERN_WARNING*/"%s: Init: Base Address not set.\n", gDrvrName);
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
	ret = -EIO;
	goto out;
    } 

    printk(/*KERN_WARNING*/"Virt hw val 0x%llX\n", (unsigned long long)gBaseVirt);

    // Get IRQ from pci_dev structure. It may have been remapped by the kernel,
    // and this value will be the correct one.

    gIrq = gDev->irq;
    printk("irq: %d\n",gIrq);

    //--- START: Initialize Hardware

    //request_mem_region(gBaseHdwr, FPGA_REGISTER_SIZE, "XPCIe");
    if (!(pRegion = request_mem_region(gBaseHdwr, gBaseLen, "XPCIe"))) {
      printk(/*KERN_WARNING*/"%s: Init: Memory in use (%d).\n", gDrvrName, ret);
      ret = -EIO;
      goto out;
    }
    gStatFlags = gStatFlags | HAVE_REGION;

    printk(/*KERN_WARNING*/"%s: Init:  Initialize Hardware Done..\n",gDrvrName);

    // Request IRQ from OS.
#if 0
    if (0 > request_irq(gIrq, &XPCIe_IRQHandler,/* SA_INTERRUPT |*/ SA_SHIRQ, gDrvrName, gDev)) {
        printk(/*KERN_WARNING*/"%s: Init: Unable to allocate IRQ",gDrvrName);
      ret = -EIO;
      goto out;
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
      ret = -EIO;
      goto out;
    }
                                                                                
    gWriteBuffer = kmalloc(BUF_SIZE, GFP_KERNEL);
    if (NULL == gWriteBuffer) {
        printk(KERN_CRIT"%s: Init: Unable to allocate gBuffer.\n",gDrvrName);
      ret = -EIO;
      goto out;
    }

    //--- END: Allocate Buffers

    //--- START: Register Driver
    // Register with the kernel as a character device.
    // Abort if it fails.
    if ((ret = register_chrdev(gDrvrMajor, gDrvrName, &XPCIe_Intf)) < 0) {
        printk(KERN_WARNING"%s: Init: will not register (%d)\n", gDrvrName, ret);
      ret = -EIO;
      goto out;
    }
    gDrvrMajor = ret;
    printk(KERN_INFO"%s: Init: module registered\n", gDrvrName);
    gStatFlags = gStatFlags | HAVE_KREG;

    printk("%s driver is loaded\n", gDrvrName);

    for (i = 0; i < 4; i++) {
      u32 offs = NET_PATH_AXI_BASE + i * NET_PATH_OFS;
      XPCIe_WriteReg(offs + NTS_API_COMMAND, NTS_COMMAND_IDLE);
    }

  return 0;

 out:
  XPCIe_exit();
  return ret;
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
    // printk(KERN_INFO"%s: XPCIe_RedReg: reg %d have been read with %08x ...\n", gDrvrName, dw_offset, ret);
    return ret; 
}

void XPCIe_WriteReg (u32 dw_offset, u32 val)
{
    writel(val, (gBaseVirt + (dw_offset)));
    // printk(KERN_INFO"%s: XPCIe_WriteReg: reg %d have been written with %08x ...\n", gDrvrName, dw_offset, val);
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



