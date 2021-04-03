//////////////////////////////////////////////////////////////////////////////////
//	(c) 2020-2021, Cypress Semiconductor Corporation (an Infineon company) or an affiliate of Cypress Semiconductor Corporation.  All rights reserved.
//
//	This software, including source code, documentation and related materials ("Software") is owned by Cypress Semiconductor Corporation or one of its affiliates ("Cypress") and is protected by and subject to worldwide patent protection (United States and foreign), United States copyright laws and international treaty provisions.  Therefore, you may use this Software only as provided in the license agreement accompanying the software package from which you obtained this Software ("EULA").
//	If no EULA applies, Cypress hereby grants you a personal, non-exclusive, non-transferable license to copy, modify, and compile the Software source code solely for use in connection with Cypress's integrated circuit products.  Any reproduction, modification, translation, compilation, or representation of this Software except as specified above is prohibited without the express written permission of Cypress.
//
//	Disclaimer: THIS SOFTWARE IS PROVIDED AS-IS, WITH NO WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING, BUT NOT LIMITED TO, NONINFRINGEMENT, IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE. Cypress reserves the right to make changes to the Software without notice. Cypress does not assume any liability arising out of the application or use of the Software or any product or circuit described in the Software. Cypress does not authorize its products for use in any products where a malfunction or failure of the Cypress product may reasonably be expected to result in significant property damage, injury or death ("High Risk Product"). By including Cypress's product in a High Risk Product, the manufacturer of such system or application assumes all risk of such use and in doing so agrees to indemnify Cypress against all liability.
//
// Design Name:		Data Slave FIFO Example
// Module Name:		params
// Target Devices:	LFE5U-45F-6BG381I
// Tool Versions:
// Description: This file contains the parameters which control the Data Slave FIFO
//              operation. Based on these parameters, data width and the data transfer
//              direction will get changed.
//
// Dependencies:
//
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
//
//////////////////////////////////////////////////////////////////////////////////

// -------------------------------------------------
//
// Bus Width:
//
// Possible Values: 16 or 32 bits.
// Default  Value: 32 bits.
//
// For 16, Uncomment the macro 'GPIF_WDT_16'
// For 32, Uncomment the macro 'GPIF_WDT_32'
//
// Do not uncomment both of these macros at a time.
//
// -------------------------------------------------

  // For 32 bit data width
  `define GPIF_WDT_32

  // For 16 bit data width
  // `define GPIF_WDT_16


// -------------------------------------------------
//
// Data Transfer Direction:
//
// Possible Values: IN, OUT or Loopback.
// Default  Value: IN (FPGA to FX3).
//
// For IN, Uncomment the macro 'STREAM_IN_ONLY'
// For OUT, Uncomment the macro 'STREAM_OUT_ONLY'
// For Loopback, Uncomment the macro 'LOOPBACK'
//
// Uncomment only single macro at a time.
//
// -------------------------------------------------

  // For Streaming IN direction
  `define STREAM_IN_ONLY

  // For Streaming OUT direction
  // `define STREAM_OUT_ONLY

  // For Streaming in both directions, i.e. loopback.
  // The same data received in OUT endpoint will be sent through IN endpoint.
  // `define LOOPBACK
