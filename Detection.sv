//module Detection(
//	input [9:0] iR,
//	input [9:0] iG,
//	input [9:0] iB,
//	input [9:0] X,
//	input [9:0] Y,
////	input VGA_VS,
////	output isWhite,
////	output isRed,
////	output isOrange,
////	output isYellow,
////	output isGreen,
////	output isBlue
//	output logic [3:0] color1,
//	output logic [3:0] color2,
//	output logic [3:0] color3,
//	output logic [3:0] color4,
//	output logic [3:0] color5,
//	output logic [3:0] color6,
//	output logic [3:0] color7,
//	output logic [3:0] color8,
//	output logic [3:0] color9
//);
//
////if X and Y are certain value, and if iR, iG, and iB are within certain values, then at this coordinate the color is one of the 6 colors
////decide if use logic for each one, or assign numbers to colors (0 is white, 1 is red, etc.)
//
////((x > 10'd445 && x < 10'd455 && y > 10'd295 && y < 10'd305) /* middle */
////(x > 10'd395 && x < 10'd405 && y > 10'd295 && y < 10'd305) /* left */
////(x > 10'd395 && x < 10'd405 && y > 10'd245 && y < 10'd255) /* top left */
////||(x > 10'd445 && x < 10'd455 && y > 10'd245 && y < 10'd255) /* top */
////||(x > 10'd495 && x < 10'd505 && y > 10'd245 && y < 10'd255) /* top right */
////||(x > 10'd495 && x < 10'd505 && y > 10'd295 && y < 10'd305) /* right */
////||(x > 10'd495 && x < 10'd505 && y > 10'd345 && y < 10'd355) /* bot right */
////||(x > 10'd445 && x < 10'd455 && y > 10'd345 && y < 10'd355) /* bot */
////||(x > 10'd395 && x < 10'd405 && y > 10'd345 && y < 10'd355) /* bot left */
//
//
//
///*
//colors are in a hex represenation
//white = 0
//red = 1
//orange = 2
//yellow = 3
//green = 4
//blue = 5
//
//color1 is face1, color2 is face2, and so on
//*/
//
////determine color f1(.iR(iR), .iR(iR), .iR(iR), );
//
//
////always_comb
////begin
////	//top left
////	//(x > 10'd395 && x < 10'd405 && y > 10'd245 && y < 10'd255) /* top left */
////	if (X == 10'd400 && Y == 10'd250)
////	begin		
////		color1 = 4'h0;
////		color2 = color2;
////		color3 = color3;
////		color4 = color4;
////		color5 = color5;
////		color6 = color6;
////		color7 = color7;
////		color8 = color8;
////		color9 = color9;
////		//test white
////		if (iR > 10'b0110000000 && iG > 10'b0110000000 && iB > 10'b0110000000)
////		begin
////			color1 = 1'h0;
////		color2 = color2;
////		color3 = color3;
////		color4 = color4;
////		color5 = color5;
////		color6 = color6;
////		color7 = color7;
////		color8 = color8;
////		color9 = color9;
////		end
////		//test red
////		else if (iR > 10'b0110000000 && /*iG > 10'b0000000000 && iB > 10'b0000000000 && */iG < 10'b0011000000 && iB < 10'b0011000000)
////		begin
////			color1 = 1'h1;
////					color2 = color2;
////		color3 = color3;
////		color4 = color4;
////		color5 = color5;
////		color6 = color6;
////		color7 = color7;
////		color8 = color8;
////		color9 = color9;
////		end
////		//test orange
////		else if (iR > 10'b0110000000 && iG > 10'b0011000000 /*&& iB > 10'b0000000000 */ && iG < 10'b0110000000 && iB < 10'b0011000000)
////		begin
////			color1 = 1'h2;
////					color2 = color2;
////		color3 = color3;
////		color4 = color4;
////		color5 = color5;
////		color6 = color6;
////		color7 = color7;
////		color8 = color8;
////		color9 = color9;
////		end
////		//test yellow
////		else if (iR > 10'b0110000000 && iG > 10'b0110000000 /*&& iB > 10'b0000000000  && iG < 10'b0110000000 */ && iB < 10'b0110000000)
////		begin
////			color1 = 1'h3;		color2 = color2;
////		color3 = color3;
////		color4 = color4;
////		color5 = color5;
////		color6 = color6;
////		color7 = color7;
////		color8 = color8;
////		color9 = color9;
////		end
////		//test green
////		else if (iR < 10'b0011000000 && iG > 10'b0110000000 /*&& iB > 10'b0000000000  && iG < 10'b0110000000 */ && iB < 10'b0011000000)
////		begin
////			color1 = 1'h4;		color2 = color2;
////		color3 = color3;
////		color4 = color4;
////		color5 = color5;
////		color6 = color6;
////		color7 = color7;
////		color8 = color8;
////		color9 = color9;
////		end
////		//test blue
////		else if (iR < 10'b0011000000 && iG > 10'b0110000000 /*&& iB > 10'b0000000000  && iG < 10'b0110000000 */ && iB < 10'b0011000000)
////		begin
////			color1 = 1'h5;
////					color2 = color2;
////		color3 = color3;
////		color4 = color4;
////		color5 = color5;
////		color6 = color6;
////		color7 = color7;
////		color8 = color8;
////		color9 = color9;
////		end
////		else
////		begin
////			color1 = color1;
////					color2 = color2;
////		color3 = color3;
////		color4 = color4;
////		color5 = color5;
////		color6 = color6;
////		color7 = color7;
////		color8 = color8;
////		color9 = color9;
////		end
////	end
////	
////	//top
////	//||(x > 10'd445 && x < 10'd455 && y > 10'd245 && y < 10'd255) /* top */
////	else if (X == 10'd450 && Y == 10'd250)
////	begin
////		//test white
////		color1 = color1;
////		color3 = color3;
////		color4 = color4;
////		color5 = color5;
////		color6 = color6;
////		color7 = color7;
////		color8 = color8;
////		color9 = color9;
////		
////		//test white
////		if (iR > 10'b0110000000 && iG > 10'b0110000000 && iB > 10'b0110000000)
////		begin
////			color2 = 1'h0;
////		end
////		//test red
////		else if (iR > 10'b0110000000 && /*iG > 10'b0000000000 && iB > 10'b0000000000 && */iG < 10'b0011000000 && iB < 10'b0011000000)
////		begin
////			color2 = 1'h1;
////		end
////		//test orange
////		else if (iR > 10'b0110000000 && iG > 10'b0011000000 /*&& iB > 10'b0000000000 */ && iG < 10'b0110000000 && iB < 10'b0011000000)
////		begin
////			color2 = 1'h2;
////		end
////		//test yellow
////		else if (iR > 10'b0110000000 && iG > 10'b0110000000 /*&& iB > 10'b0000000000  && iG < 10'b0110000000 */ && iB < 10'b0110000000)
////		begin
////			color2 = 1'h3;
////		end
////		//test green
////		else if (iR < 10'b0011000000 && iG > 10'b0110000000 /*&& iB > 10'b0000000000  && iG < 10'b0110000000 */ && iB < 10'b0011000000)
////		begin
////			color2 = 1'h4;
////		end
////		//test blue
////		else if (iR < 10'b0011000000 && iG > 10'b0110000000 /*&& iB > 10'b0000000000  && iG < 10'b0110000000 */ && iB < 10'b0011000000)
////		begin
////			color2 = 1'h5;
////		end
////		else
////		begin
////			color2 = color2;
////		end
////	end
////	
////	//top right
////	//||(x > 10'd495 && x < 10'd505 && y > 10'd245 && y < 10'd255) /* top right */
////	else if  (X == 10'd500 && Y == 10'd250)
////	begin
////	
////		color1 = color1;
////		color2 = color2;
////		color4 = color4;
////		color5 = color5;
////		color6 = color6;
////		color7 = color7;
////		color8 = color8;
////		color9 = color9;
////		
////		//test white
////		if (iR > 10'b0110000000 && iG > 10'b0110000000 && iB > 10'b0110000000)
////		begin
////			color3 = 1'h0;
////		end
////		//test red
////		else if (iR > 10'b0110000000 && /*iG > 10'b0000000000 && iB > 10'b0000000000 && */iG < 10'b0011000000 && iB < 10'b0011000000)
////		begin
////			color3 = 1'h1;
////		end
////		//test orange
////		else if (iR > 10'b0110000000 && iG > 10'b0011000000 /*&& iB > 10'b0000000000 */ && iG < 10'b0110000000 && iB < 10'b0011000000)
////		begin
////			color3 = 1'h2;
////		end
////		//test yellow
////		else if (iR > 10'b0110000000 && iG > 10'b0110000000 /*&& iB > 10'b0000000000  && iG < 10'b0110000000 */ && iB < 10'b0110000000)
////		begin
////			color3 = 1'h3;
////		end
////		//test green
////		else if (iR < 10'b0011000000 && iG > 10'b0110000000 /*&& iB > 10'b0000000000  && iG < 10'b0110000000 */ && iB < 10'b0011000000)
////		begin
////			color3 = 1'h4;
////		end
////		//test blue
////		else if (iR < 10'b0011000000 && iG > 10'b0110000000 /*&& iB > 10'b0000000000  && iG < 10'b0110000000 */ && iB < 10'b0011000000)
////		begin
////			color3 = 1'h5;
////		end
////		else
////		begin
////			color3 = color3;
////		end
////	end
////	
////	//left
////	//(x > 10'd395 && x < 10'd405 && y > 10'd295 && y < 10'd305) /* left */
////	else if  (X == 10'd400 && Y == 10'd300)
////	begin
////		color1 = color1;
////		color2 = color2;
////		color3 = color3;
////		color5 = color5;
////		color6 = color6;
////		color7 = color7;
////		color8 = color8;
////		color9 = color9;
////	
////		//test white
////		if (iR > 10'b0110000000 && iG > 10'b0110000000 && iB > 10'b0110000000)
////		begin
////			color4 = 1'h0;
////		end
////		//test red
////		else if (iR > 10'b0110000000 && /*iG > 10'b0000000000 && iB > 10'b0000000000 && */iG < 10'b0011000000 && iB < 10'b0011000000)
////		begin
////			color4 = 1'h1;
////		end
////		//test orange
////		else if (iR > 10'b0110000000 && iG > 10'b0011000000 /*&& iB > 10'b0000000000 */ && iG < 10'b0110000000 && iB < 10'b0011000000)
////		begin
////			color4 = 1'h2;
////		end
////		//test yellow
////		else if (iR > 10'b0110000000 && iG > 10'b0110000000 /*&& iB > 10'b0000000000  && iG < 10'b0110000000 */ && iB < 10'b0110000000)
////		begin
////			color4 = 1'h3;
////		end
////		//test green
////		else if (iR < 10'b0011000000 && iG > 10'b0110000000 /*&& iB > 10'b0000000000  && iG < 10'b0110000000 */ && iB < 10'b0011000000)
////		begin
////			color4 = 1'h4;
////		end
////		//test blue
////		else if (iR < 10'b0011000000 && iG > 10'b0110000000 /*&& iB > 10'b0000000000  && iG < 10'b0110000000 */ && iB < 10'b0011000000)
////		begin
////			color4 = 1'h5;
////		end
////		else
////		begin
////			color4 = color4;
////		end
////	end
////	
////	//middle
////	//((x > 10'd445 && x < 10'd455 && y > 10'd295 && y < 10'd305) /* middle */
////	else if  (X == 10'd450 && Y == 10'd300)
////	begin
////		color1 = color1;
////		color2 = color2;
////		color3 = color3;
////		color4 = color4;
////		color6 = color6;
////		color7 = color7;
////		color8 = color8;
////		color9 = color9;
////		
////		//test white
////		if (iR > 10'b0110000000 && iG > 10'b0110000000 && iB > 10'b0110000000)
////		begin
////			color5 = 1'h0;
////		end
////		//test red
////		else if (iR > 10'b0110000000 && /*iG > 10'b0000000000 && iB > 10'b0000000000 && */iG < 10'b0011000000 && iB < 10'b0011000000)
////		begin
////			color5 = 1'h1;
////		end
////		//test orange
////		else if (iR > 10'b0110000000 && iG > 10'b0011000000 /*&& iB > 10'b0000000000 */ && iG < 10'b0110000000 && iB < 10'b0011000000)
////		begin
////			color5 = 1'h2;
////		end
////		//test yellow
////		else if (iR > 10'b0110000000 && iG > 10'b0110000000 /*&& iB > 10'b0000000000  && iG < 10'b0110000000 */ && iB < 10'b0110000000)
////		begin
////			color5 = 1'h3;
////		end
////		//test green
////		else if (iR < 10'b0011000000 && iG > 10'b0110000000 /*&& iB > 10'b0000000000  && iG < 10'b0110000000 */ && iB < 10'b0011000000)
////		begin
////			color5 = 1'h4;
////		end
////		//test blue
////		else if (iR < 10'b0011000000 && iG > 10'b0110000000 /*&& iB > 10'b0000000000  && iG < 10'b0110000000 */ && iB < 10'b0011000000)
////		begin
////			color5 = 1'h5;
////		end
////		else
////		begin
////			color5 = color5;
////		end
////	end
////	
////	//right
////	//||(x > 10'd495 && x < 10'd505 && y > 10'd295 && y < 10'd305) /* right */
////	else if  (X == 10'd500 && Y == 10'd300)
////	begin
////		color1 = color1;
////		color2 = color2;
////		color3 = color3;
////		color4 = color4;
////		color5 = color5;
////		color7 = color7;
////		color8 = color8;
////		color9 = color9;
////		
////		//test white
////		if (iR > 10'b0110000000 && iG > 10'b0110000000 && iB > 10'b0110000000)
////		begin
////			color6 = 1'h0;
////		end
////		//test red
////		else if (iR > 10'b0110000000 && /*iG > 10'b0000000000 && iB > 10'b0000000000 && */iG < 10'b0011000000 && iB < 10'b0011000000)
////		begin
////			color6 = 1'h1;
////		end
////		//test orange
////		else if (iR > 10'b0110000000 && iG > 10'b0011000000 /*&& iB > 10'b0000000000 */ && iG < 10'b0110000000 && iB < 10'b0011000000)
////		begin
////			color6 = 1'h2;
////		end
////		//test yellow
////		else if (iR > 10'b0110000000 && iG > 10'b0110000000 /*&& iB > 10'b0000000000  && iG < 10'b0110000000 */ && iB < 10'b0110000000)
////		begin
////			color6 = 1'h3;
////		end
////		//test green
////		else if (iR < 10'b0011000000 && iG > 10'b0110000000 /*&& iB > 10'b0000000000  && iG < 10'b0110000000 */ && iB < 10'b0011000000)
////		begin
////			color6 = 1'h4;
////		end
////		//test blue
////		else if (iR < 10'b0011000000 && iG > 10'b0110000000 /*&& iB > 10'b0000000000  && iG < 10'b0110000000 */ && iB < 10'b0011000000)
////		begin
////			color6 = 1'h5;
////		end
////		else
////		begin
////			color6 = color6;
////		end
////	end
////	
////	//bot left
////	//||(x > 10'd395 && x < 10'd405 && y > 10'd345 && y < 10'd355) /* bot left */
////	else if  (X == 10'd400 && Y == 10'd350)
////	begin
////		color1 = color1;
////		color2 = color2;
////		color3 = color3;
////		color4 = color4;
////		color5 = color5;
////		color6 = color6;
////		color8 = color8;
////		color9 = color9;
////		
////		//test white
////		if (iR > 10'b0110000000 && iG > 10'b0110000000 && iB > 10'b0110000000)
////		begin
////			color7 = 1'h0;
////		end
////		//test red
////		else if (iR > 10'b0110000000 && /*iG > 10'b0000000000 && iB > 10'b0000000000 && */iG < 10'b0011000000 && iB < 10'b0011000000)
////		begin
////			color7 = 1'h1;
////		end
////		//test orange
////		else if (iR > 10'b0110000000 && iG > 10'b0011000000 /*&& iB > 10'b0000000000 */ && iG < 10'b0110000000 && iB < 10'b0011000000)
////		begin
////			color7 = 1'h2;
////		end
////		//test yellow
////		else if (iR > 10'b0110000000 && iG > 10'b0110000000 /*&& iB > 10'b0000000000  && iG < 10'b0110000000 */ && iB < 10'b0110000000)
////		begin
////			color7 = 1'h3;
////		end
////		//test green
////		else if (iR < 10'b0011000000 && iG > 10'b0110000000 /*&& iB > 10'b0000000000  && iG < 10'b0110000000 */ && iB < 10'b0011000000)
////		begin
////			color7 = 1'h4;
////		end
////		//test blue
////		else if (iR < 10'b0011000000 && iG > 10'b0110000000 /*&& iB > 10'b0000000000  && iG < 10'b0110000000 */ && iB < 10'b0011000000)
////		begin
////			color7 = 1'h5;
////		end
////		else
////		begin
////			color7 = color7;
////		end
////	end
////	
////	//bot
////	//||(x > 10'd445 && x < 10'd455 && y > 10'd345 && y < 10'd355) /* bot */
////	else if  (X == 10'd450 && Y == 10'd350)
////	begin
////		color1 = color1;
////		color2 = color2;
////		color3 = color3;
////		color4 = color4;
////		color5 = color5;
////		color6 = color6;
////		color7 = color7;
////		color9 = color9;
////	
////		//test white
////		if (iR > 10'b0110000000 && iG > 10'b0110000000 && iB > 10'b0110000000)
////		begin
////			color8 = 1'h0;
////		end
////		//test red
////		else if (iR > 10'b0110000000 && /*iG > 10'b0000000000 && iB > 10'b0000000000 && */iG < 10'b0011000000 && iB < 10'b0011000000)
////		begin
////			color8 = 1'h1;
////		end
////		//test orange
////		else if (iR > 10'b0110000000 && iG > 10'b0011000000 /*&& iB > 10'b0000000000 */ && iG < 10'b0110000000 && iB < 10'b0011000000)
////		begin
////			color8 = 1'h2;
////		end
////		//test yellow
////		else if (iR > 10'b0110000000 && iG > 10'b0110000000 /*&& iB > 10'b0000000000  && iG < 10'b0110000000 */ && iB < 10'b0110000000)
////		begin
////			color8 = 1'h3;
////		end
////		//test green
////		else if (iR < 10'b0011000000 && iG > 10'b0110000000 /*&& iB > 10'b0000000000  && iG < 10'b0110000000 */ && iB < 10'b0011000000)
////		begin
////			color8 = 1'h4;
////		end
////		//test blue
////		else if (iR < 10'b0011000000 && iG > 10'b0110000000 /*&& iB > 10'b0000000000  && iG < 10'b0110000000 */ && iB < 10'b0011000000)
////		begin
////			color8 = 1'h5;
////		end
////		else
////		begin
////			color8 = color8;
////		end
////	end
////	
////	//bot right
////	//||(x > 10'd495 && x < 10'd505 && y > 10'd345 && y < 10'd355) /* bot right */
////	else if  (X == 10'd500 && Y == 10'd350)
////	begin
////		color1 = color1;
////		color2 = color2;
////		color3 = color3;
////		color4 = color4;
////		color5 = color5;
////		color6 = color6;
////		color7 = color7;
////		color8 = color8;
////		
////		//test white
////		if (iR > 10'b0110000000 && iG > 10'b0110000000 && iB > 10'b0110000000)
////		begin
////			color9 = 1'h0;
////		end
////		//test red
////		else if (iR > 10'b0110000000 && /*iG > 10'b0000000000 && iB > 10'b0000000000 && */iG < 10'b0011000000 && iB < 10'b0011000000)
////		begin
////			color9 = 1'h1;
////		end
////		//test orange
////		else if (iR > 10'b0110000000 && iG > 10'b0011000000 /*&& iB > 10'b0000000000 */ && iG < 10'b0110000000 && iB < 10'b0011000000)
////		begin
////			color9 = 1'h2;
////		end
////		//test yellow
////		else if (iR > 10'b0110000000 && iG > 10'b0110000000 /*&& iB > 10'b0000000000  && iG < 10'b0110000000 */ && iB < 10'b0110000000)
////		begin
////			color9 = 1'h3;
////		end
////		//test green
////		else if (iR < 10'b0011000000 && iG > 10'b0110000000 /*&& iB > 10'b0000000000  && iG < 10'b0110000000 */ && iB < 10'b0011000000)
////		begin
////			color9 = 1'h4;
////		end
////		//test blue
////		else if (iR < 10'b0011000000 && iG > 10'b0110000000 /*&& iB > 10'b0000000000  && iG < 10'b0110000000 */ && iB < 10'b0011000000)
////		begin
////			color9 = 1'h5;
////		end
////		else
////		begin
////			color9 = color9;
////		end
////	end
//
//
//always_comb
//begin
//	if (X == 10'd400 && Y == 10'd250)
//	begin
//		color2 = color2;
//		color3 = color3;
//		color4 = color4;
//		color5 = color5;
//		color6 = color6;
//		color7 = color7;
//		color8 = color8;
//		color9 = color9;
//		//test white
//		if (iR > 10'b0110000000 && iG > 10'b0110000000 && iB > 10'b0110000000)
//		begin
//			color1 = 4'h0;
//		end
//		//test red
//		else if (iR > 10'b0110000000 && /*iG > 10'b0000000000 && iB > 10'b0000000000 && */iG < 10'b0011000000 && iB < 10'b0011000000)
//		begin
//			color1 = 4'h1;
//		end
//		//test orange
//		else if (iR > 10'b0110000000 && iG > 10'b0011000000 /*&& iB > 10'b0000000000 */ && iG < 10'b0110000000 && iB < 10'b0011000000)
//		begin
//			color1 = 4'h2;
//		end
//		//test yellow
//		else if (iR > 10'b0110000000 && iG > 10'b0110000000 /*&& iB > 10'b0000000000  && iG < 10'b0110000000 */ && iB < 10'b0110000000)
//		begin
//			color1 = 4'h3;
//		end
//		//test green
//		else if (iR < 10'b0011000000 && iG > 10'b0110000000 /*&& iB > 10'b0000000000  && iG < 10'b0110000000 */ && iB < 10'b0011000000)
//		begin
//			color1 = 4'h4;
//		end
//		//test blue
//		else if (iR < 10'b0011000000 && iG > 10'b0110000000 /*&& iB > 10'b0000000000  && iG < 10'b0110000000 */ && iB < 10'b0011000000)
//		begin
//			color1 = 4'h5;
//		end
//		else
//		begin
//			color1 = 4'h6;
//			
//		end
//	end
//	else
//	begin
//		color1 = 4'h5;
//		color2 = 4'h5;
//		color3 = 4'h5;
//		color4 = 4'h5;
//		color5 = 4'h5;
//		color6 = 4'h5;
//		color7 = 4'h5;
//		color8 = 4'h5;
//		color9 = 4'h5;
//	end
//end
//
//endmodule
