#ifndef __SW_UART_H
#define __SW_UART_H

/* PIC 18 Software UART library header
 *
 * The I/O pins must be specified for the software UART. The
 * corresponding TRIS bits must also be specified. The notation is:
 *     PORTx,y  where x is A,B,C etc. and y is the bit 0-7
 *     TRISx,y  where x is A,B,C etc. and y is the bit 0-7
 * This is in assembly language notation because assembly is
 * used to initialize the software UART.
 */

/* Function Prototypes */

/*#define PARAM_SCLASS auto*/

/* OpenUART
 * Configures the UART I/O pins
 */
void OpenUART(void);

/* ReadUART
 * Reads a byte from the UART
 */
char ReadUART(void);

/* WriteUART
 * Writes a byte to the UART
 */
void WriteUART(char);

/* getsUART
 * Reads a string from UART
 */
void getsUART(  char *,   unsigned char);

/* putsUART
 * Writes a string to the UART
 */
void putsUART(  char *);

/* getcUART
 * getc is really read
 */
#define getcUART ReadUART

/* putcUART
 * putc is really write
 */
#define putcUART WriteUART

#endif /* __SW_UART_H */
