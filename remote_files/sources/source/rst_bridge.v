//////////////////////////////////////////////////////////////////////////////////
//	(c) 2020-2021, Cypress Semiconductor Corporation (an Infineon company) or an affiliate of Cypress Semiconductor Corporation.  All rights reserved.
//
//	This software, including source code, documentation and related materials ("Software") is owned by Cypress Semiconductor Corporation or one of its affiliates ("Cypress") and is protected by and subject to worldwide patent protection (United States and foreign), United States copyright laws and international treaty provisions.  Therefore, you may use this Software only as provided in the license agreement accompanying the software package from which you obtained this Software ("EULA").
//	If no EULA applies, Cypress hereby grants you a personal, non-exclusive, non-transferable license to copy, modify, and compile the Software source code solely for use in connection with Cypress's integrated circuit products.  Any reproduction, modification, translation, compilation, or representation of this Software except as specified above is prohibited without the express written permission of Cypress.
//
//	Disclaimer: THIS SOFTWARE IS PROVIDED AS-IS, WITH NO WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING, BUT NOT LIMITED TO, NONINFRINGEMENT, IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE. Cypress reserves the right to make changes to the Software without notice. Cypress does not assume any liability arising out of the application or use of the Software or any product or circuit described in the Software. Cypress does not authorize its products for use in any products where a malfunction or failure of the Cypress product may reasonably be expected to result in significant property damage, injury or death ("High Risk Product"). By including Cypress's product in a High Risk Product, the manufacturer of such system or application assumes all risk of such use and in doing so agrees to indemnify Cypress against all liability.
//
// Design Name:		Data Slave FIFO Example
// Module Name:		rstn_bridge
// Target Devices:	LFE5U-45F-6BG381I
// Tool Versions:
// Description: This module synchronises the de-assertion of the active high
//              input reset with the clock. The output reset is the active low.
//
// Dependencies:
//
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
//
//////////////////////////////////////////////////////////////////////////////////

module rstn_bridge
  (
   // Input Ports
  	input	rstn_i,
  	input	clk_i,  // Active High Reset

   // Output Port
  	output	rstn_o // Active Low Reset
  );

  // --------------------------------
  //
  // Local Variables
  //
  // --------------------------------

  reg rst_r1_m = 'd0;
  reg rst_r2   = 'd0;

  // 2 Flop Synchronizer
  always @ ( posedge clk_i or posedge rstn_i )
    begin
  	   if ( rstn_i )
        begin
  	   	   rst_r1_m <= 1'b0;
  	   	   rst_r2   <= 1'b0;
  	     end
      else
        begin
  		      rst_r1_m <= 1'b1;
  		      rst_r2   <= rst_r1_m;
  	     end
    end

  // --------------------------------
  //
  // Assignment
  //
  // --------------------------------

  // Active Low Reset
  assign rstn_o = rst_r2;

endmodule