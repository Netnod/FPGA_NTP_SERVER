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


/**********************************************************************//**
 * @file hardware_info/main.c
 * @author Stephan Nolting
 * @brief Show all available hardware configuration information.
 **************************************************************************/

#include <neorv32.h>
#include <stdint.h>
#include <stdio.h>

/**********************************************************************//**
 * @name User configuration
 **************************************************************************/
/**@{*/
/** UART BAUD rate */
#define BAUD_RATE 115200
/**@}*/



/**********************************************************************//**
 * Main function
 *
 * @note This program requires the UART interface to be synthesized.
 *
 * @return 0 if execution was successful
 **************************************************************************/

static const char hexdigits[16] = "0123456789abcdef";

char *hex8(char *s, unsigned v) {
  *s++ = hexdigits[(v >> 4) & 0xf];
  *s++ = hexdigits[(v >> 0) & 0xf];
  *s = '\0';
  return s;
}

char *hex32(char *s, unsigned v)
{
  *s++ = hexdigits[(v >> 28) & 0xf];
  *s++ = hexdigits[(v >> 24) & 0xf];
  *s++ = hexdigits[(v >> 20) & 0xf];
  *s++ = hexdigits[(v >> 16) & 0xf];
  *s++ = hexdigits[(v >> 12) & 0xf];
  *s++ = hexdigits[(v >> 8) & 0xf];
  *s++ = hexdigits[(v >> 4) & 0xf];
  *s++ = hexdigits[(v >> 0) & 0xf];
  *s = '\0';
  return s;
}  

int main() {
  uint32_t addr;
  static char s[64];

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

  unsigned base = 0x43000000;

  base = NEORV32_CFS_BASE;

  if (1) {
      base = NEORV32_CFS_BASE;
      *(volatile uint32_t *)(base+12) = 0xdeadbeef;
  }

  neorv32_uart0_printf("\nBase %x\n", base);

  for (addr = base; addr < base + 0x80; addr += 4) {
    if ((addr & 0x0f) == 00) {
      neorv32_uart0_printf("\n");
      hex32(s, addr);
      neorv32_uart0_printf(s);
      neorv32_uart0_printf(" ");
    }
    neorv32_uart0_printf(" ");
    hex32(s, *(volatile uint32_t *)addr);
    neorv32_uart0_printf(s);
  }
  neorv32_uart0_printf("\n");

  neorv32_uart0_printf("\nExecution completed.\n");

  return 0;
}

/*  
    Local variables:
        compile-command: "PATH=/opt/riscv32/bin:$PATH; make clean_all exe && cat neorv32_exe.bin | ssh ticktock ./upload.sh "
    End:
*/
