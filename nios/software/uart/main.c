#include "alt_types.h"
#include "altera_avalon_pio_regs.h"
#include "altera_avalon_sgdma.h"
#include "altera_avalon_sgdma_regs.h"
#include "sys/alt_irq.h"
#include "system.h"
#include <stdio.h>
#include <unistd.h>

#define NUMBER_OF_BUFFERS 4
#define MINIMUM_BUFFER_LENGTH 64
#define MAXIMUM_BUFFER_LENGTH 1024

volatile alt_u8 tx_done = 0;

void transmit_callback_function(void * context) {
	tx_done++; /* main will be polling for this value being 1 */
}

alt_u32 transmit(alt_sgdma_dev *transmit_dma,
		alt_sgdma_descriptor * transmit_descriptors, alt_u32 *transmit_ptr,
		alt_u32 temp_length) {
	int buffer_counter = 0;
	alt_avalon_sgdma_construct_mem_to_stream_desc(
			&transmit_descriptors[buffer_counter],  // descriptor
			&transmit_descriptors[buffer_counter + 1], // next descriptor
			transmit_ptr,  // read buffer location
			(alt_u16) temp_length,  // length of the buffer
			0, // reads are not from a fixed location
			0, // start of packet is enabled for the Avalon-ST interfaces
			0, // end of packet is enabled for the Avalon-ST interfaces,
			0);  // there is only one channel

	alt_dcache_flush_all();
	/* Prime the SGDMA engines with the descriptor lists (first one, it's a linked list) */
	if (alt_avalon_sgdma_do_async_transfer(transmit_dma,
			&transmit_descriptors[0]) != 0) {
		printf(
				"Writing the head of the transmit descriptor list to the DMA failed\n");
		return 1;
	}
	return 0;
}

alt_u32 descriptor_allocation(alt_sgdma_descriptor ** transmit_descriptors,
		alt_sgdma_descriptor ** transmit_descriptors_copy,
		alt_u32 number_of_buffers) {
	/* Allocate some big buffers to hold all descriptors which will slide until
	 * the first 32 byte boundary is found */
	void * temp_ptr_1;

	/**************************************************************
	 * Allocation of the transmit descriptors                   *
	 * - First allocate a large buffer to the temporary pointer *
	 * - Second check for sucessful memory allocation           *
	 * - Third put this memory location into the pointer copy   *
	 *   to be freed before the program exits                   *
	 * - Forth slide the tempory pointer until it lies on a 32  *
	 *   byte boundary (descriptor master is 256 bits wide)     *
	 ************************************************************/
	temp_ptr_1 = malloc(
			(number_of_buffers + 2) * ALTERA_AVALON_SGDMA_DESCRIPTOR_SIZE);
	if (temp_ptr_1 == NULL) {
		printf("Failed to allocate memory for the transmit descriptors\n");
		return 1;
	}
	*transmit_descriptors_copy = (alt_sgdma_descriptor *) temp_ptr_1;

	while ((((alt_u32) temp_ptr_1) % ALTERA_AVALON_SGDMA_DESCRIPTOR_SIZE) != 0) {
		temp_ptr_1++;  // slide the pointer until 32 byte boundary is found
	}
	*transmit_descriptors = (alt_sgdma_descriptor *) temp_ptr_1;
	/**************************************************************/

	/* Clear out the null descriptor owned by hardware bit.  These locations
	 * came from the heap so we don't know what state the bytes are in (owned bit could be high).*/
	transmit_descriptors[number_of_buffers]->control = 0;

	return 0;  // no failures in allocation
}

int main(int argc, char **argv) {

	char c;
	alt_sgdma_dev *transmit_dma = alt_avalon_sgdma_open("/dev/sgdma_0");
	alt_sgdma_descriptor *transmit_descriptors[2],
			*transmit_descriptors_copy[2];
	alt_u32 *transmit_ptr;
	if (transmit_dma == NULL) {
		printf("Could not open transmit SG-DMA");
		return 1;
	}
	alt_u32 return_code = descriptor_allocation(&transmit_descriptors[0],
			&transmit_descriptors_copy[0],
			NUMBER_OF_BUFFERS);

	if (return_code == 1) {
		printf("Allocating the descriptor memory failed... exiting\n");
		return 1;
	}

	return_code = descriptor_allocation(&transmit_descriptors[1],
			&transmit_descriptors_copy[1],
			NUMBER_OF_BUFFERS);

	if (return_code == 1) {
		printf("Allocating the descriptor memory failed... exiting\n");
		return 1;
	}

	printf("Transmit descriptor: 0x%08x\n", transmit_descriptors[0]);

	/*
	 return_code = create_test_data(transmit_descriptors,
	 NUMBER_OF_BUFFERS,
	 MINIMUM_BUFFER_LENGTH,
	 MAXIMUM_BUFFER_LENGTH);
	 if (return_code == 1) {
	 printf("Allocating the data buffers failed... exiting\n");
	 return 1;
	 }
	 */

	alt_avalon_sgdma_register_callback(transmit_dma,
			&transmit_callback_function,
			(ALTERA_AVALON_SGDMA_CONTROL_IE_GLOBAL_MSK
					| ALTERA_AVALON_SGDMA_CONTROL_IE_CHAIN_COMPLETED_MSK),
			NULL);

	printf("Starting up the SGDMA engines\n");

	alt_u32* transmit_ptrs[2][NUMBER_OF_BUFFERS];
	int i, j;
	for (j = 0; j < 2; j++) {
		for (i = 0; i < NUMBER_OF_BUFFERS; i++) {
			transmit_ptr = (alt_u32 *) malloc(MAXIMUM_BUFFER_LENGTH); // this descriptor will point at a buffer of length (temp_length)
			if (transmit_ptr == NULL) {
				printf("Allocating a transmit buffer region failed\n");
				return 1;
			}
			transmit_ptrs[j][i] = transmit_ptr;
		}
	}
	int char_count = 0;
	int txing=0;

	int buffer_counter = 0;
	int dbuf = 0;
	transmit_ptr = transmit_ptrs[dbuf][buffer_counter];
	char *trp = (char*) transmit_ptr;
	while (1) {
		while (!(IORD(UART_BASE,2) & 0x80))
			;
		c = IORD(UART_BASE, 0);
		*trp++ = c;
		char_count++;
		if (char_count >= MAXIMUM_BUFFER_LENGTH) {

			alt_avalon_sgdma_construct_mem_to_stream_desc(
					&transmit_descriptors[dbuf][buffer_counter],  // descriptor
					&transmit_descriptors[dbuf][buffer_counter + 1], // next descriptor
					transmit_ptr,  // read buffer location
					(alt_u16) char_count,  // length of the buffer
					0, // reads are not from a fixed location
					0, // start of packet is enabled for the Avalon-ST interfaces
					0, // end of packet is enabled for the Avalon-ST interfaces,
					0);  // there is only one channel
			buffer_counter++;
			if (buffer_counter >= NUMBER_OF_BUFFERS-1) {
				buffer_counter = 0;
				alt_dcache_flush_all();
				if(txing==1) {
					while(tx_done==0);
					tx_done=0;
				}
				/* Prime the SGDMA engines with the descriptor lists (first one, it's a linked list) */
				if (alt_avalon_sgdma_do_async_transfer(transmit_dma,
						&transmit_descriptors[dbuf][0]) != 0) {
					printf(
							"Writing the head of the transmit descriptor list to the DMA failed\n");
					return 1;
				}
				txing=1;
				dbuf++;
				if(dbuf > 1)
					dbuf = 0;
//				while (tx_done == 0)
//					;
//				tx_done = 0;
			}
//			transmit(transmit_dma, transmit_descriptors, transmit_ptr, i);
			transmit_ptr = transmit_ptrs[dbuf][buffer_counter];
			trp = (char*) transmit_ptr;
			char_count = 0;
		}
//		while (!(IORD(UART_BASE,2) & 0x40))
//			;
//		IOWR(UART_BASE, 1, c);
	}

	return 0;
}
