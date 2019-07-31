//module determine_color(
//							input [9:0] iR,
//							input [9:0] iG,
//							input [9:0] iB,
//							output [3:0] color
//							);
//							
//always_comb
//begin
//		if (iR > 10'b0110000000 && iG > 10'b0110000000 && iB > 10'b0110000000)
//		begin
//			color = 1'h0;
//		end
//		//test red
//		if (iR > 10'b0110000000 && /*iG > 10'b0000000000 && iB > 10'b0000000000 && */iG < 10'b0011000000 && iB < 10'b0011000000)
//		begin
//			color = 1'h1;
//		end
//		//test orange
//		if (iR > 10'b0110000000 && iG > 10'b0011000000 /*&& iB > 10'b0000000000 */ && iG < 10'b0110000000 && iB < 10'b0011000000)
//		begin
//			color = 1'h2;
//		end
//		//test yellow
//		if (iR > 10'b0110000000 && iG > 10'b0110000000 /*&& iB > 10'b0000000000  && iG < 10'b0110000000 */ && iB < 10'b0110000000)
//		begin
//			color = 1'h3;
//		end
//		//test green
//		if (iR < 10'b0011000000 && iG > 10'b0110000000 /*&& iB > 10'b0000000000  && iG < 10'b0110000000 */ && iB < 10'b0011000000)
//		begin
//			color = 1'h4;
//		end
//		//test blue
//		if (iR < 10'b0011000000 && iG > 10'b0110000000 /*&& iB > 10'b0000000000  && iG < 10'b0110000000 */ && iB < 10'b0011000000)
//		begin
//			color = 1'h4;
//	end
//end
//
//endmodule
