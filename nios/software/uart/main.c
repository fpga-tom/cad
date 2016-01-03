#include "alt_types.h"
#include "altera_avalon_pio_regs.h"
#include "altera_avalon_sgdma.h"
#include "altera_avalon_sgdma_regs.h"
#include "sys/alt_irq.h"
#include "sys/fcntl.h"
#include "system.h"
#include <stdio.h>
#include <unistd.h>

#define NUMBER_OF_BUFFERS 4
#define MINIMUM_BUFFER_LENGTH 64
#define MAXIMUM_BUFFER_LENGTH 1024

volatile alt_u8 tx_done = 1;
volatile alt_u8 rx_done = 0;

alt_u32* receive_ptrs[2][NUMBER_OF_BUFFERS];
alt_sgdma_descriptor *receive_descriptors[2], *receive_descriptors_copy[2];
int dbufr = 0;
alt_sgdma_dev *receive_dma;
char *rx_buf_ptr = 0;
int rx_char_count = 0;
int rx_buffer_counter = 0;

void transmit_callback_function(void * context) {
	tx_done++; /* main will be polling for this value being 1 */
}

void receive_callback_function(void * context) {
	rx_done++; /* main will be polling for this value being 1 */

	rx_buf_ptr = (char*) &receive_ptrs[dbufr][0];
	rx_char_count = 0;
	rx_buffer_counter = 0;

	dbufr++;
	if (dbufr > 1) {
		dbufr = 0;
	}
	int i = 0;
	for (i = 0; i < NUMBER_OF_BUFFERS; i++)
		alt_avalon_sgdma_construct_stream_to_mem_desc(
				&receive_descriptors[dbufr][i],  // descriptor
				&receive_descriptors[dbufr][i + 1], // next descriptor
				receive_ptrs[dbufr][i],  // read buffer location
				(alt_u16) MAXIMUM_BUFFER_LENGTH,  // length of the buffer
				0);  // there is only one channel

	if (alt_avalon_sgdma_do_async_transfer(receive_dma,
			&receive_descriptors[dbufr][0]) != 0) {
		printf(
				"Writing the head of the receive descriptor list to the DMA failed\n");
	}

}

/**********************************************************************************
 * This function is called with double pointers so that it can modify (allocate)  *
 * the regions in memory to be pointed at. The easiest way to call this function  *
 * is to pass in single pointers by reference (thereby creating double pointers). *
 *                                                                                *
 * Since the descriptor masters are 256 bits wide (32 bytes) we must ensure that  *
 * all descriptors are located on 32 byte boundaries. This function will allocate *
 * enough space for one additional descriptor and slide the pointer from the      *
 * beginning until it is on a 32 byte boundary. Malloc can only provide 8 byte    *
 * alignment so without a custom memory allocation library this step is necessary *
 *                                                                                *
 * Returns 0 for sucess, 1 for failure.                                           *
 **********************************************************************************/
alt_u32 descriptor_allocation(alt_sgdma_descriptor ** transmit_descriptors,
		alt_sgdma_descriptor ** transmit_descriptors_copy,
		alt_sgdma_descriptor ** receive_descriptors,
		alt_sgdma_descriptor ** receive_descriptors_copy,
		alt_u32 number_of_buffers) {
	/* Allocate some big buffers to hold all descriptors which will slide until
	 * the first 32 byte boundary is found */
	void * temp_ptr_1, *temp_ptr_2;

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

	/**************************************************************
	 * Allocation of the receive descriptors                    *
	 * - First allocate a large buffer to the temporary pointer *
	 * - Second check for sucessful memory allocation           *
	 * - Third put this memory location into the pointer copy   *
	 *   to be freed before the program exits                   *
	 * - Forth slide the tempory pointer until it lies on a 32  *
	 *   byte boundary (descriptor master is 256 bits wide)     *
	 ************************************************************/
	temp_ptr_2 = malloc(
			(number_of_buffers + 2) * ALTERA_AVALON_SGDMA_DESCRIPTOR_SIZE);
	if (temp_ptr_2 == NULL) {
		printf("Failed to allocate memory for the receive descriptors\n");
		return 1;
	}
	*receive_descriptors_copy = (alt_sgdma_descriptor *) temp_ptr_2;

	while ((((alt_u32) temp_ptr_2) % ALTERA_AVALON_SGDMA_DESCRIPTOR_SIZE) != 0) {
		temp_ptr_2++;  // slide the pointer until 32 byte boundary is found
	}
	*receive_descriptors = (alt_sgdma_descriptor *) temp_ptr_2;
	/**************************************************************/

	/* Clear out the null descriptor owned by hardware bit.  These locations
	 * came from the heap so we don't know what state the bytes are in (owned bit could be high).*/
	receive_descriptors[number_of_buffers]->control = 0;

	return 0;  // no failures in allocation
}

ssize_t readall(int fd, void * data, size_t count) {

	ssize_t bytesRead;

	char * dataPtr = data;

	size_t total = 0;

	while (count) {

		bytesRead = read(fd, dataPtr, count);

		/* we should check bytesRead for < 0 to return errors

		 properly, but this is just sample code! */

		dataPtr += bytesRead;

		count -= bytesRead;

		total += bytesRead;

	}

	return total;

}

int main(int argc, char **argv) {

	char c;
	int uart_fd = open("/dev/uart", O_RDWR);
	if (uart_fd == NULL) {
		printf("Error opening uart\n");
		return 1;
	}
	alt_sgdma_dev *transmit_dma = alt_avalon_sgdma_open("/dev/sgdma_0");
	receive_dma = alt_avalon_sgdma_open("/dev/sgdma_1");
	alt_sgdma_descriptor *transmit_descriptors[2],
			*transmit_descriptors_copy[2];
//	alt_sgdma_descriptor *receive_descriptors[2], *receive_descriptors_copy[2];

	alt_u32 *transmit_ptr, *receive_ptr;
	if (transmit_dma == NULL) {
		printf("Could not open transmit SG-DMA");
		return 1;
	}
	if (receive_dma == NULL) {
		printf("Could not open the receive SG-DMA\n");
		return 1;
	}

	alt_u32 return_code = descriptor_allocation(&transmit_descriptors[0],
			&transmit_descriptors_copy[0], &receive_descriptors[0],
			&receive_descriptors_copy[0],
			NUMBER_OF_BUFFERS);

	if (return_code == 1) {
		printf("Allocating the descriptor memory failed... exiting\n");
		return 1;
	}

	return_code = descriptor_allocation(&transmit_descriptors[1],
			&transmit_descriptors_copy[1], &receive_descriptors[1],
			&receive_descriptors_copy[1],
			NUMBER_OF_BUFFERS);

	if (return_code == 1) {
		printf("Allocating the descriptor memory failed... exiting\n");
		return 1;
	}

	printf("Transmit descriptor: 0x%08x\n", transmit_descriptors[0]);
	printf("Receive descriptor: 0x%08x\n", receive_descriptors[0]);

	alt_avalon_sgdma_register_callback(transmit_dma,
			&transmit_callback_function,
			(ALTERA_AVALON_SGDMA_CONTROL_IE_GLOBAL_MSK
					| ALTERA_AVALON_SGDMA_CONTROL_IE_CHAIN_COMPLETED_MSK),
			NULL);

	alt_avalon_sgdma_register_callback(receive_dma, &receive_callback_function,
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
		for (i = 0; i < NUMBER_OF_BUFFERS; i++) {
			alt_avalon_sgdma_construct_mem_to_stream_desc(
					&transmit_descriptors[j][i],  // descriptor
					&transmit_descriptors[j][i + 1], // next descriptor
					transmit_ptrs[j][i],  // read buffer location
					(alt_u16) MAXIMUM_BUFFER_LENGTH,  // length of the buffer
					0, // reads are not from a fixed location
					0, // start of packet is enabled for the Avalon-ST interfaces
					0, // end of packet is enabled for the Avalon-ST interfaces,
					0);  // there is only one channel
		}
	}
//	alt_u32* receive_ptrs[2][NUMBER_OF_BUFFERS];
	for (j = 0; j < 2; j++) {
		for (i = 0; i < NUMBER_OF_BUFFERS; i++) {
			receive_ptr = (alt_u32 *) malloc(MAXIMUM_BUFFER_LENGTH); // this descriptor will point at a buffer of length (temp_length)
			if (receive_ptr == NULL) {
				printf("Allocating a receive buffer region failed\n");
				return 1;
			}
			receive_ptrs[j][i] = receive_ptr;
		}
		for (i = 0; i < NUMBER_OF_BUFFERS; i++) {
			alt_avalon_sgdma_construct_stream_to_mem_desc(
					&receive_descriptors[j][i],  // descriptor
					&receive_descriptors[j][i + 1], // next descriptor
					receive_ptrs[j][i],  // read buffer location
					(alt_u16) MAXIMUM_BUFFER_LENGTH,  // length of the buffer
					0);  // there is only one channel
		}
	}

	if (alt_avalon_sgdma_do_async_transfer(receive_dma,
			&receive_descriptors[dbufr][0]) != 0) {
		printf(
				"Writing the head of the receive descriptor list to the DMA failed\n");
		return 1;
	}

	int buffer_counter = 0;
	int dbuft = 0;

	int char_count = 0;

	while (1) {
		int num_read = readall(uart_fd, transmit_ptrs[dbuft][buffer_counter],
		MAXIMUM_BUFFER_LENGTH);
		if (num_read > 0) {
			alt_avalon_sgdma_construct_mem_to_stream_desc(
					&transmit_descriptors[dbuft][buffer_counter], // descriptor
					&transmit_descriptors[dbuft][buffer_counter + 1], // next descriptor
					transmit_ptrs[dbuft][buffer_counter], // read buffer location
					(alt_u16) num_read, // length of the buffer
					0, // reads are not from a fixed location
					0, // start of packet is enabled for the Avalon-ST interfaces
					0, // end of packet is enabled for the Avalon-ST interfaces,
					0);  // there is only one channel
			buffer_counter++;
			if (buffer_counter >= NUMBER_OF_BUFFERS) {
				buffer_counter = 0;
				dbuft++;
				if (dbuft > 1) {
					dbuft = 0;
				}
				if (tx_done) {
					if (alt_avalon_sgdma_do_async_transfer(transmit_dma,
							&transmit_descriptors[dbuft][0]) != 0) {
						printf(
								"Writing the head of the transmit descriptor list to the DMA failed\n");
						return 1;
					}
					tx_done = 0;
				}
			}
		}
		/*
		 if ((IORD(UART_BASE,2) & 0x80)) {
		 c = IORD(UART_BASE, 0);
		 *transmit_ptr++ = c;
		 char_count++;
		 if (char_count >= MAXIMUM_BUFFER_LENGTH) {
		 char_count = 0;
		 transmit_ptr = transmit_ptrs[dbuft][buffer_counter];
		 alt_avalon_sgdma_construct_mem_to_stream_desc(
		 &transmit_descriptors[dbuft][buffer_counter], // descriptor
		 &transmit_descriptors[dbuft][buffer_counter + 1], // next descriptor
		 transmit_ptrs[dbuft][buffer_counter], // read buffer location
		 (alt_u16) MAXIMUM_BUFFER_LENGTH, // length of the buffer
		 0, // reads are not from a fixed location
		 0, // start of packet is enabled for the Avalon-ST interfaces
		 0, // end of packet is enabled for the Avalon-ST interfaces,
		 0);  // there is only one channel
		 buffer_counter++;
		 if (buffer_counter >= NUMBER_OF_BUFFERS) {
		 buffer_counter = 0;
		 dbuft++;
		 if (dbuft > 1) {
		 dbuft = 0;
		 }
		 if (tx_done) {
		 if (alt_avalon_sgdma_do_async_transfer(transmit_dma,
		 &transmit_descriptors[dbuft][0]) != 0) {
		 printf(
		 "Writing the head of the transmit descriptor list to the DMA failed\n");
		 return 1;
		 }
		 tx_done = 0;
		 }
		 }
		 }
		 }
		 */
		if (rx_done) {
			for (i = 0; i < NUMBER_OF_BUFFERS; i++) {
				write(uart_fd, receive_ptrs[dbufr][i],
				MAXIMUM_BUFFER_LENGTH);
			}
			rx_done = 0;
		}
	}

	return 0;
}
