module display_dots(
	input [9:0] x, y,
//	input VGA_Clk, Clk, fastClock,
//	input reset,
	output isDot
);

always_comb
begin
//	if ((x >= 10'd495 && x <= 10'd505 && y >= 10'd215 && y <= 10'd225) || /* middle */
//			(x >= 10'd445 && x <= 10'd455 && y >= 10'd215 && y <= 10'd225)|| /* left */
//			(x >= 10'd445 && x <= 10'd455 && y >= 10'd165 && y <= 10'd175) || /* top left */
//			(x >= 10'd495 && x <= 10'd505 && y >= 10'd165 && y <= 10'd175) || /* top */
//			(x >= 10'd495 && x <= 10'd505 && y >= 10'd165 && y <= 10'd175) || /* top right */
//			(x >= 10'd545 && x <= 10'd555 && y >= 10'd215 && y <= 10'd225) || /* right */
//			(x >= 10'd545 && x <= 10'd555 && y >= 10'd265 && y <= 10'd275) || /* bot right */
//			(x >= 10'd495 && x <= 10'd505 && y >= 10'd265 && y <= 10'd275) || /* bot */
//			(x >= 10'd445 && x <= 10'd455 && y >= 10'd265 && y <= 10'd275) /* bot left */
//			) 

	if ((x > 10'd445 && x < 10'd455 && y > 10'd295 && y < 10'd305) /* middle */
		||(x > 10'd395 && x < 10'd405 && y > 10'd295 && y < 10'd305) /* left */
		||(x > 10'd395 && x < 10'd405 && y > 10'd245 && y < 10'd255) /* top left */
		||(x > 10'd445 && x < 10'd455 && y > 10'd245 && y < 10'd255) /* top */
		||(x > 10'd495 && x < 10'd505 && y > 10'd245 && y < 10'd255) /* top right */
		||(x > 10'd495 && x < 10'd505 && y > 10'd295 && y < 10'd305) /* right */
		||(x > 10'd495 && x < 10'd505 && y > 10'd345 && y < 10'd355) /* bot right */
		||(x > 10'd445 && x < 10'd455 && y > 10'd345 && y < 10'd355) /* bot */
		||(x > 10'd395 && x < 10'd405 && y > 10'd345 && y < 10'd355) /* bot left */
		)
	begin
		isDot = 1'b1;
	end
	else
	begin
		isDot = 1'b0;
	end
	
end

endmodule
