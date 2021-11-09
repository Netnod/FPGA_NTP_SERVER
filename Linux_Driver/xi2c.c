#define  DEBUG 1

#include <linux/init.h>
#include <linux/module.h>
#include <linux/pci.h>
#include <linux/interrupt.h>
#include <linux/fs.h>
#include <linux/delay.h>
#include <linux/i2c.h>
#include <linux/i2c-algo-bit.h>

MODULE_LICENSE("GPL");

static const char DRIVER_NAME[] = "xi2c";

struct xi2c_regs {
	u32 io;
	u32 tristate;
};

struct xi2c_data {
	unsigned long phys_start;
	unsigned long phys_len;
	void *region;
	void *iomem;
	void *reg_io;
	void *reg_tristate;
};

int xi2c_getscl(void *data)
{
	struct xi2c_data *pdata = data;
	u8 v = readb(pdata->reg_io);
	return !!(v & 1);
}

static void xi2c_setscl(void *data, int state)
{
	struct xi2c_data *pdata = data;
	u8 v = readb(pdata->reg_tristate);
	if (state)
		v |= 1;
	else
		v &= ~1;
	writeb(v, pdata->reg_tristate);
}

int xi2c_getsda(void *data)
{
	struct xi2c_data *pdata = data;
	u8 v = readb(pdata->reg_io);
	return !!(v & 2);
}

static void xi2c_setsda(void *data, int state)
{
	struct xi2c_data *pdata = data;
	u8 v = readb(pdata->reg_tristate);
	if (state)
		v |= 2;
	else
		v &= ~2;
	writeb(v, pdata->reg_tristate);
}

static void xi2c_free(struct pci_dev *pdev, struct i2c_adapter *adapter)
{
	printk(KERN_INFO "%s:\n", __func__);

	if (adapter) {
		struct i2c_algo_bit_data *bit_data = adapter->algo_data;
		adapter->algo_data = NULL;

		printk("%s: freeing adapter\n", __func__);

		if (bit_data) {
			struct xi2c_data *pdata = bit_data->data;
			bit_data->data = NULL;

			printk("%s: freeing bit_dataa\n", __func__);

			if (pdata) {
				printk("%s: freeing pdata\n", __func__);

				if (pdata->iomem)
					iounmap(pdata->iomem);
				if (pdata->region)
					release_mem_region(pdata->phys_start, pdata->phys_len);

				devm_kfree(&pdev->dev, pdata);
			}

			devm_kfree(&pdev->dev, bit_data);
		}

		devm_kfree(&pdev->dev, adapter);
	}

	pci_disable_device(pdev);
}

static void xi2c_remove(struct pci_dev *pdev)
{
	struct i2c_adapter *adapter = pci_get_drvdata(pdev);

	printk(KERN_INFO "%s:\n", __func__);

	if (adapter) {
		i2c_del_adapter(adapter);
		xi2c_free(pdev, adapter);
	}
}

static int xi2c_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
{
	struct i2c_adapter *adapter;
	struct i2c_algo_bit_data *bit_data;
	struct xi2c_data *pdata;
	int ret;

	printk(KERN_INFO "%s:\n", __func__);

	if ((ret = pci_enable_device(pdev)) < 0) {
		printk(KERN_WARNING "%s: pci_enable_device failed\n", __func__);
		return ret;
	}

	adapter = devm_kzalloc(&pdev->dev, sizeof(*adapter), GFP_KERNEL);
	if (!adapter) {
		printk(KERN_WARNING "%s: adapter alloc failed\n", __func__);
		ret = -ENOMEM;
		goto out;
	}

	pci_set_drvdata(pdev, adapter);

	bit_data = devm_kzalloc(&pdev->dev, sizeof(*bit_data), GFP_KERNEL);
	if (!bit_data) {
		printk(KERN_WARNING "%s: bit_data alloc failed\n", __func__);
		ret = -ENOMEM;
		goto out;
	}

	bit_data->getscl = xi2c_getscl;
	bit_data->setscl = xi2c_setscl;
	bit_data->getsda = xi2c_getsda;
	bit_data->setsda = xi2c_setsda;
	bit_data->udelay = 1;
	bit_data->timeout = HZ / 10;

	adapter->algo_data = bit_data;

	pdata = devm_kzalloc(&pdev->dev, sizeof(*pdata), GFP_KERNEL);
	if (!pdata) {
		printk(KERN_WARNING "%s: pdata alloc failed\n", __func__);
		ret = -ENOMEM;
		goto out;
	}

	bit_data->data = pdata;

	pdata->phys_start = pci_resource_start(pdev, 0);
	if (!pdata->phys_start || (pdata->phys_start & 3)) {
		printk(KERN_WARNING "%s: bad pci resource start\n", __func__);
		return -EIO;
	}

	pdata->phys_len = pci_resource_len(pdev, 0);
	if (!pdata->phys_len || (pdata->phys_len & 3)) {
		printk(KERN_WARNING "%s: bad pci resource length\n", __func__);
		return -EIO;
	}

	printk(KERN_INFO "%s: memory at 0x%08lx..0x%08lx\n", __func__,
	       pdata->phys_start,
	       pdata->phys_start + pdata->phys_len - 1);

	pdata->region = request_mem_region(pdata->phys_start, pdata->phys_len, DRIVER_NAME);
	if (!pdata->region) {
		printk(KERN_WARNING "%s: request_mem_region failed\n", __func__);
		ret = -EIO;
		goto out;
	}

	pdata->iomem = ioremap(pdata->phys_start, pdata->phys_len);
	if (!pdata->iomem) {
		printk(KERN_WARNING "%s: ioremap failed\n", __func__);
		ret = -EIO;
		goto out;
	}

	pdata->reg_io = pdata->iomem + 0x08;
	pdata->reg_tristate = pdata->iomem + 0x0c;

	writeb(0x03, pdata->reg_tristate);
	writeb(0x00, pdata->reg_io);

	snprintf(adapter->name, I2C_NAME_SIZE, "%s", DRIVER_NAME);
	adapter->owner = THIS_MODULE;
	adapter->dev.parent = &pdev->dev;

	ret = i2c_bit_add_bus(adapter);
	if (ret) {
		printk(KERN_WARNING "%s: i2c_bit_add_bus failed\n", __func__);
		ret = -EIO;
		goto out;
	}

	printk(KERN_INFO "%s: ready\n", __func__);

	return 0;

out:
	xi2c_free(pdev, adapter);
	return ret;
}

static const struct pci_device_id xi2c_pci_id_table[] = {
	{ PCI_DEVICE(0x10ee, 0x7011) },
	{ 0, }
};

MODULE_DEVICE_TABLE(pci, xi2c_pci_id_table);

static struct pci_driver xi2c_driver = {
	.name     = DRIVER_NAME,
	.id_table = xi2c_pci_id_table,
	.probe    = xi2c_probe,
	.remove   = xi2c_remove,
};

static int __init xi2c_init(void)
{
	return pci_register_driver(&xi2c_driver);
}

static void __exit xi2c_exit(void)
{
	pci_unregister_driver(&xi2c_driver);
}

module_init(xi2c_init);
module_exit(xi2c_exit);
