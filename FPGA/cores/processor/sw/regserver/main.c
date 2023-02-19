// #################################################################################################
// # << NEORV32 - Show all available hardware configuration information >>                         #
// # ********************************************************************************************* #
// # BSD 3-Clause License                                                                          #
// #                                                                                               #
// # Copyright (c) 2021, Stephan Nolting. All rights reserved.                                     #
// #                                                                                               #
// # Redistribution and use in source and binary forms, with or without modification, are          #
// # permitted provided that the following conditions are met:                                     #
// #                                                                                               #
// # 1. Redistributions of source code must retain the above copyright notice, this list of        #
// #    conditions and the following disclaimer.                                                   #
// #                                                                                               #
// # 2. Redistributions in binary form must reproduce the above copyright notice, this list of     #
// #    conditions and the following disclaimer in the documentation and/or other materials        #
// #    provided with the distribution.                                                            #
// #                                                                                               #
// # 3. Neither the name of the copyright holder nor the names of its contributors may be used to  #
// #    endorse or promote products derived from this software without specific prior written      #
// #    permission.                                                                                #
// #                                                                                               #
// # THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND ANY EXPRESS   #
// # OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF               #
// # MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE    #
// # COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL,     #
// # EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE #
// # GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED    #
// # AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING     #
// # NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED  #
// # OF THE POSSIBILITY OF SUCH DAMAGE.                                                            #
// # ********************************************************************************************* #
// # The NEORV32 Processor - https://github.com/stnolting/neorv32              (c) Stephan Nolting #
// #################################################################################################


/**********************************************************************/
/**
 * @file hardware_info/main.c
 * @author Stephan Nolting
 * @brief Show all available hardware configuration information.
 **************************************************************************/

#include <neorv32.h>
#include <stdint.h>
#include <stdio.h>
#include <stdbool.h>

/**********************************************************************/
/**
 * @name User configuration
 **************************************************************************/
/**@{*/
/** UART BAUD rate */
#define BAUD_RATE 115200
/**@}*/

/**********************************************************************/
/**
 * Main function
 *
 * @note This program requires the UART interface to be synthesized.
 *
 * @return 0 if execution was successful
 **************************************************************************/

static int verbose = 9;

#if 1
#define msg(level, ...)                         \
    do {                                        \
        if (level <= verbose)                   \
            neorv32_uart0_printf(__VA_ARGS__);  \
    } while (0)
#else
#define msg(...) do {} while (0)
#endif

#define WB_CYC (1<<0)
#define WB_STB (1<<1)
#define WB_WE  (1<<2)
#define WB_ACK (1<<3)
#define WB_ERR (1<<4)

#define USER_BASE			0x43000000

#define USER_BUILD_TIME				13
#define USER_BUILD_INFO				15
#define USER_GIT_HASH				16
#define USER_MAGIC				17

#define NETWORK_PATH_BASE(num)		(0x44000000 + 0x01000000 * (num))

/* Fake memory map

   0x4x000000 .. 0x4x000fff Default
   0x4x001000 .. 0x4x001fff API extension
   0x4x002000 .. 0x4x002fff PP API
   0x4x003000 .. 0x4x003fff Dispatcher
   0x4x004000 .. 0x4x004fff Extractor
   0x4x008000 .. 0x4x008fff Engine 0
   0x4x009000 .. 0x4x009fff Engine 1
   ...
   0x4xfff000 .. 0x4xffffff Broadcast to all engines

*/

#define NETWORK_PATH_API_COMMAND		70
#define NETWORK_PATH_API_STATUS			71
#define NETWORK_PATH_API_ADDRESS        	72
#define NETWORK_PATH_API_WRITE_DATA     	73
#define NETWORK_PATH_API_READ_DATA		74

#define NETWORK_PATH_MODULE_DEFAULT		0
#define NETWORK_PATH_MODULE_API_EXT		1
#define NETWORK_PATH_MODULE_PP_API		2
#define NETWORK_PATH_MODULE_DISPATCHER		3
#define NETWORK_PATH_MODULE_EXTRACTOR		4
#define NETWORK_PATH_MODULE_ENGINE(num)		(8+(num))
#define NETWORK_PATH_MODULE_ALL_ENGINES		0xfff

#define API_COMMAND_IDLE			0x00
#define API_COMMAND_READ			0x01
#define API_COMMAND_WRITE			0x03

#define API_STATUS_BUSY				0x0
#define API_STATUS_READY			0x1

#define API_DISPATCHER_ADDR_BUS_ID_CMD		80
#define API_DISPATCHER_ADDR_BUS_STATUS		81
#define API_DISPATCHER_ADDR_BUS_DATA            82

#define API_DISPATCHER_ADDR_NAME                0x000
#define API_DISPATCHER_ADDR_VERSION             0x002

#define EXPECTED_DISPATCHER_NAME		0x4e54532d44495350
#define EXPECTED_DISPATCHER_VERSION		0x302e3032

#define ENGINE_BUS_READ				0x55
#define ENGINE_BUS_WRITE			0xaa

#define API_ADDR_ENGINE_BASE			0x000
#define API_ADDR_ENGINE_NAME0			API_ADDR_ENGINE_BASE
#define API_ADDR_ENGINE_NAME1       		(API_ADDR_ENGINE_BASE + 1)
#define API_ADDR_ENGINE_VERSION     		(API_ADDR_ENGINE_BASE + 2)
#define API_ADDR_ENGINE_CTRL        		(API_ADDR_ENGINE_BASE + 8)

static int printable(int c)
{
    c &= 0xff;
    if (c >= 32 && c < 0x7f)
        return c;
    else
        return '.';
}

static const char *human(unsigned val0, unsigned val1)
{
    static char s[11];
    int i = 0;
    s[i++] = '"';
    s[i++] = printable(val0 >> 24);
    s[i++] = printable(val0 >> 16);
    s[i++] = printable(val0 >>  8);
    s[i++] = printable(val0 >>  0);
    s[i++] = printable(val1 >> 24);
    s[i++] = printable(val1 >> 16);
    s[i++] = printable(val1 >>  8);
    s[i++] = printable(val1 >>  0);
    s[i++] = '"';
    s[i++] = '\0';

    return s;
}

static bool special_addr(unsigned addr, unsigned *base, unsigned *module, unsigned *reg)
{
    *base = addr & 0xff000000;
    if (*base < NETWORK_PATH_BASE(0) || *base > NETWORK_PATH_BASE(3))
        return false;

    *module = (addr & 0x00fff000) >> 12;
    if (*module < 1)
        return false;

    *reg = addr & 0xfff;

    return true;
}

static void __write32(unsigned addr, unsigned val)
{
    msg(9, "%x <- %x\n", addr, val);
    *(volatile uint32_t *)addr = val;
}

static unsigned __read32(unsigned addr)
{
    unsigned val = *(volatile uint32_t *)addr;
    msg(9, "%x -> %x\n", addr, val);
    return val;
}

static unsigned make_api_address(unsigned module, unsigned reg)
{
    unsigned base;
    switch (module) {
    case NETWORK_PATH_MODULE_API_EXT:    base = 0x00000000; break;
    case NETWORK_PATH_MODULE_PP_API:     base = 0x10000000; break;
    case NETWORK_PATH_MODULE_DISPATCHER: base = 0x20000000; break;
    case NETWORK_PATH_MODULE_EXTRACTOR:  base = 0x20000400; break;
    default:
        msg(1, "invalid module %u\n", module);
        return 0xffffffff;
    }
    return base | reg;
}

static void api_write(unsigned base, unsigned module, unsigned reg, unsigned val)
{
    msg(8, "%s base 0x%x, module %u, reg %u, val 0x%x\n", __func__, base, module, reg, val);

    __write32(base + 4*NETWORK_PATH_API_ADDRESS, make_api_address(module, reg));
    __write32(base + 4*NETWORK_PATH_API_WRITE_DATA, val);
    __write32(base + 4*NETWORK_PATH_API_COMMAND, API_COMMAND_WRITE);

    unsigned status;
    for (int retry = 0; retry < 100; retry++) {
        status = __read32(base + 4*NETWORK_PATH_API_STATUS);
        if (status & API_STATUS_READY)
            break;
    }
    if (!(status & API_STATUS_READY)) {
        msg(5, "%s: timeout base 0x%x, module %u, reg %u\n", __func__, base, module, reg);
    }

    __write32(base + 4*NETWORK_PATH_API_COMMAND, API_COMMAND_IDLE);
}

static unsigned api_read(unsigned base, unsigned module, unsigned reg)
{
    msg(8, "%s base 0x%x, module %u, reg %u\n", __func__, base, module, reg);

    __write32(base + 4*NETWORK_PATH_API_ADDRESS, make_api_address(module, reg));
    __write32(base + 4*NETWORK_PATH_API_COMMAND, API_COMMAND_READ);

    unsigned status;
    for (int retry = 0; retry < 100; retry++) {
        status = __read32(base + 4*NETWORK_PATH_API_STATUS);
        if (status & API_STATUS_READY)
            break;
    }
    if (!(status & API_STATUS_READY)) {
        msg(5, "%s: timeout base 0x%x, module %u, reg %u\n", __func__, base, module, reg);
        return 0xffffffff;
    }

    unsigned val = __read32(base + 4*NETWORK_PATH_API_READ_DATA);

    __write32(base + 4*NETWORK_PATH_API_COMMAND, API_COMMAND_IDLE);

    return val;
}

static void engine_write(unsigned base, unsigned module, unsigned reg, unsigned val)
{
    unsigned engine = module - NETWORK_PATH_MODULE_ENGINE(0);
    unsigned cmd = (engine<<20) | (ENGINE_BUS_WRITE<<12) | reg;
    msg(7, "%s base 0x%x, engine %u, reg %u, val 0x%x, cmd 0x%x\n", __func__, base, engine, reg, val, cmd);
    api_write(base, NETWORK_PATH_MODULE_DISPATCHER, API_DISPATCHER_ADDR_BUS_ID_CMD, cmd);
    api_write(base, NETWORK_PATH_MODULE_DISPATCHER, API_DISPATCHER_ADDR_BUS_DATA, val);
    api_write(base, NETWORK_PATH_MODULE_DISPATCHER, API_DISPATCHER_ADDR_BUS_STATUS, 1);

    unsigned status;
    for (int retry = 0; retry < 100; retry++) {
        status = api_read(base, NETWORK_PATH_MODULE_DISPATCHER, API_DISPATCHER_ADDR_BUS_STATUS);
        if (!status)
            break;
    }
    if (status) {
        msg(5, "%s: timeout base 0x%x, module %u, reg %u\n", __func__, base, engine, reg);
        return;
    }
}

static unsigned engine_read(unsigned base, unsigned module, unsigned reg)
{
    unsigned engine = module - NETWORK_PATH_MODULE_ENGINE(0);
    unsigned cmd = (engine<<20) | (ENGINE_BUS_READ<<12) | reg;
    msg(7, "%s base 0x%x, engine %u, reg %u, cmd 0x%x\n", __func__, base, engine, reg, cmd);
    api_write(base, NETWORK_PATH_MODULE_DISPATCHER, API_DISPATCHER_ADDR_BUS_ID_CMD, cmd);
    api_write(base, NETWORK_PATH_MODULE_DISPATCHER, API_DISPATCHER_ADDR_BUS_STATUS, 1);

    unsigned status;
    for (int retry = 0; retry < 100; retry++) {
        status = api_read(base, NETWORK_PATH_MODULE_DISPATCHER, API_DISPATCHER_ADDR_BUS_STATUS);
        if (!status)
            break;
    }
    if (status) {
        msg(5, "%s: timeout base 0x%x, module %u, reg %u\n", __func__, base, engine, reg);
        return 0xffffffff;
    }

    unsigned val = api_read(base, NETWORK_PATH_MODULE_DISPATCHER, API_DISPATCHER_ADDR_BUS_DATA);
    return val;
}

static void write32(unsigned addr, unsigned val)
{
    unsigned base, module, reg;
    if (special_addr(addr, &base, &module, &reg)) {
        if (module < NETWORK_PATH_MODULE_ENGINE(0))
            api_write(base, module, reg >> 2, val);
        else if (module < NETWORK_PATH_MODULE_ALL_ENGINES)
            engine_write(base, module, reg >> 2, val);
        else {
            // TODO broadcast
            return;
        }
    } else
        __write32(addr, val);
}

static unsigned read32(unsigned addr)
{
    unsigned base, module, reg;

    if (special_addr(addr, &base, &module, &reg)) {
        if (module < NETWORK_PATH_MODULE_ENGINE(0))
            return api_read(base, module, reg >> 2);
        else if (module < NETWORK_PATH_MODULE_ALL_ENGINES)
            return engine_read(base, module, reg >> 2);
        else {
            // TODO broadcast
            return 0xffffffff;
        }
    } else
        return __read32(addr);
}

int main() {
    // capture all exceptions and give debug info via UART
    // this is not required, but keeps us safe
    neorv32_rte_setup();

    // abort if UART0 is not implemented
    if (neorv32_uart0_available() == 0) {
        return 1;
    }

    // init UART at default baud rate, no parity bits, ho hw flow control
    neorv32_uart0_setup(BAUD_RATE, PARITY_NONE, FLOW_CONTROL_NONE);

    // check available hardware extensions and compare with compiler flags
    neorv32_rte_check_isa(0); // silent = 0 -> show message if isa mismatch

    // reset i2c
    neorv32_gpio_pin_set(7);
    neorv32_gpio_pin_clr(7);
  
    if (1) {
        verbose = 5;

        __write32(NETWORK_PATH_BASE(0) + 4*NETWORK_PATH_API_COMMAND, API_COMMAND_IDLE);

        {
            neorv32_uart0_printf("USER (0x%x):\n", USER_BASE);
            neorv32_uart0_printf("BUILD_TIME    %u\n", read32(USER_BASE + 4*USER_BUILD_TIME));
            neorv32_uart0_printf("BUILD_INFO    0x%x\n", read32(USER_BASE + 4*USER_BUILD_INFO));
            neorv32_uart0_printf("GIT_HASH      0x%x\n", read32(USER_BASE + 4*USER_GIT_HASH));
            neorv32_uart0_printf("MAGIC         0x%x\n", read32(USER_BASE + 4*USER_MAGIC));
            neorv32_uart0_printf("\n");
        }

        for (int module = NETWORK_PATH_MODULE_API_EXT; module <= NETWORK_PATH_MODULE_EXTRACTOR; module++) {
            unsigned base = NETWORK_PATH_BASE(0) + (module<<12);

            neorv32_uart0_printf("MODULE %d (0x%x)\n", module, base);
            unsigned name0 = read32(base + 4*(API_DISPATCHER_ADDR_NAME+0));
            unsigned name1 = read32(base + 4*(API_DISPATCHER_ADDR_NAME+1));
            neorv32_uart0_printf("NAME          %s (%x %x)\n",
                                 human(name0, name1),
                                 name0, name1);
            neorv32_uart0_printf("\n");
        }

        for (int module = NETWORK_PATH_MODULE_ENGINE(0); module <= NETWORK_PATH_MODULE_ENGINE(0); module++) {
            unsigned base = NETWORK_PATH_BASE(0) + (module<<12);

            neorv32_uart0_printf("MODULE %d (0x%x)\n", module, base);
            unsigned name0 = read32(base + 4*API_ADDR_ENGINE_NAME0);
            unsigned name1 = read32(base + 4*API_ADDR_ENGINE_NAME1);
            neorv32_uart0_printf("NAME          %s (%x %x)\n",
                                 human(name0, name1),
                                 name0, name1);
            neorv32_uart0_printf("\n");
        }
    }
    
    verbose = 5;

    msg(0, "Waiting...\n");

    while (1) {
        unsigned status = NEORV32_CFS.REG[0];
        unsigned addr   = NEORV32_CFS.REG[1];
        unsigned idata  = NEORV32_CFS.REG[2];
        unsigned odata  = NEORV32_CFS.REG[3];

        if (status & WB_CYC && status & WB_STB) {
            msg(8, "%x %x %x %x\n", status, addr, idata, odata);
            if (status & WB_WE) {
                msg(7, "WR %x <- %x\n", addr, idata);
                write32(addr, idata);
            } else {
                msg(7, "RD %x <- ", addr);
                unsigned value = read32(addr);
                NEORV32_CFS.REG[3] = value;
                msg(7, "%x\n", value);
            }
            msg(7, "\n");
            NEORV32_CFS.REG[0] = WB_ACK;
        }
    }

    return 0;
}

/*  
    Local variables:
    compile-command: "PATH=/opt/riscv32/bin:$PATH; make clean_all exe && cat neorv32_exe.bin | ssh ticktock ./upload.sh "
    End:
*/
