XPCIE_HOME := $(shell pwd)

XPCIE_KVER := $(shell uname -r)

obj-m := xpcie.o xi2c.o

all:
	make -C /lib/modules/$(XPCIE_KVER)/build M=$(XPCIE_HOME) modules
clean:
	make -C /lib/modules/$(XPCIE_KVER)/build M=$(XPCIE_HOME) clean
