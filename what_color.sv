module what_color(
//input CLK,
					input [9:0] iR, iG, iB,
					input [9:0] X, Y,
					output [3:0] topleft,
					output [3:0] top,
					output [3:0] topright,
					output [3:0] left,
					output [3:0] middle,
					output [3:0] right,
					output [3:0] botleft,
					output [3:0] bot,
					output [3:0] botright,
					output [9:0] oR, oG, oB
					);
					
					
logic [3:0] temp;	
/*
debug functionality:
changes the perceived color to display:
white -> red
red -> yellow
orange -> green
yellow -> blue
green -> turquoise
blue -> white
*/					

/*
color codes:
white:	1
red:		2
orange:	3
yellow:	4
green:	5
blue:		6
else:		0
*/

//output color topleft
always_ff @ (posedge X == 10'd400 && Y == 10'd250)
begin
	//test white
	if(iR > 10'b0001100000 && iG > 10'b0001100000 && iB > 10'b0001100000)
	begin
		topleft = 4'h1;
	end
	//test red
	else if (iR > 10'b0001100000 && /*iG > 10'b0000000000 && iB > 10'b0000000000 && */iG < 10'b0001010000 && iB < 10'b0001100000)
	begin
		topleft = 4'h2;
	end
	//test orange
	else if (iR > 10'b0001100000 && iG > 10'b0001010000 /*&& iB > 10'b0000000000 */ && iG < 10'b0001100000 && iB < 10'b0001100000)
	begin
		topleft = 4'h3;
	end
	//test yellow
	else if (iR > 10'b0001100000 && iG > 10'b0001100000 /*&& iB > 10'b0000000000  && iG < 10'b0110000000 */ && iB < 10'b0001100000)
	begin
		topleft = 4'h4;
	end
	//test green
	else if (iB > 10'b0001000000 && iG > 10'b0001000000)
	// iB > b0000110000, iB < b0001010000
	begin
		topleft = 4'h5;
	end
	//test blue
	else if (iB > 10'b0001000000)
	begin
		topleft = 4'h6;
	end
	else
	begin
		topleft = 4'h0;
	end
end
					

//output color top
always_ff @ (posedge X == 10'd450 && Y == 10'd250)
begin
	//test white
	if(iR > 10'b0001100000 && iG > 10'b0001100000 && iB > 10'b0001100000)
	begin
		top = 4'h1;
	end
	//test red
	else if (iR > 10'b0001100000 && /*iG > 10'b0000000000 && iB > 10'b0000000000 && */iG < 10'b0001010000 && iB < 10'b0001100000)
	begin
		top = 4'h2;
	end
	//test orange
	else if (iR > 10'b0001100000 && iG > 10'b0001010000 /*&& iB > 10'b0000000000 */ && iG < 10'b0001100000 && iB < 10'b0001100000)
	begin
		top = 4'h3;
	end
	//test yellow
	else if (iR > 10'b0001100000 && iG > 10'b0001100000 /*&& iB > 10'b0000000000  && iG < 10'b0110000000 */ && iB < 10'b0001100000)
	begin
		top = 4'h4;
	end
	//test green
	else if (iB > 10'b0001000000 && iG > 10'b0001000000)
	// iB > b0000110000, iB < b0001010000
	begin
		top = 4'h5;
	end
	//test blue
	else if (iB > 10'b0001000000)
	begin
		top = 4'h6;
	end
	else
	begin
		top = 4'h0;
	end
end
					
//output color topright
always_ff @ (posedge X == 10'd500 && Y == 10'd250)
begin
	//test white
	if(iR > 10'b0001100000 && iG > 10'b0001100000 && iB > 10'b0001100000)
	begin
		topright = 4'h1;
	end
	//test red
	else if (iR > 10'b0001100000 && /*iG > 10'b0000000000 && iB > 10'b0000000000 && */iG < 10'b0001010000 && iB < 10'b0001100000)
	begin
		topright = 4'h2;
	end
	//test orange
	else if (iR > 10'b0001100000 && iG > 10'b0001010000 /*&& iB > 10'b0000000000 */ && iG < 10'b0001100000 && iB < 10'b0001100000)
	begin
		topright = 4'h3;
	end
	//test yellow
	else if (iR > 10'b0001100000 && iG > 10'b0001100000 /*&& iB > 10'b0000000000  && iG < 10'b0110000000 */ && iB < 10'b0001100000)
	begin
		topright = 4'h4;
	end
	//test green
	else if (iB > 10'b0001000000 && iG > 10'b0001000000)
	// iB > b0000110000, iB < b0001010000
	begin
		topright = 4'h5;
	end
	//test blue
	else if (iB > 10'b0001000000)
	begin
		topright = 4'h6;
	end
	else
	begin
		topright = 4'h0;
	end
end

//output color left
always_ff @ (posedge X == 10'd400 && Y == 10'd300)
begin
	//test white
	if(iR > 10'b0001100000 && iG > 10'b0001100000 && iB > 10'b0001100000)
	begin
		left = 4'h1;
	end
	//test red
	else if (iR > 10'b0001100000 && /*iG > 10'b0000000000 && iB > 10'b0000000000 && */iG < 10'b0001010000 && iB < 10'b0001100000)
	begin
		left = 4'h2;
	end
	//test orange
	else if (iR > 10'b0001100000 && iG > 10'b0001010000 /*&& iB > 10'b0000000000 */ && iG < 10'b0001100000 && iB < 10'b0001100000)
	begin
		left = 4'h3;
	end
	//test yellow
	else if (iR > 10'b0001100000 && iG > 10'b0001100000 /*&& iB > 10'b0000000000  && iG < 10'b0110000000 */ && iB < 10'b0001100000)
	begin
		left = 4'h4;
	end
	//test green
	else if (iB > 10'b0001000000 && iG > 10'b0001000000)
	// iB > b0000110000, iB < b0001010000
	begin
		left = 4'h5;
	end
	//test blue
	else if (iB > 10'b0001000000)
	begin
		left = 4'h6;
	end
	else
	begin
		left = 4'h0;
	end
end

//output color middle
always_ff @ (posedge X == 10'd450 && Y == 10'd300)
begin
	//test white
	if(iR > 10'b0001100000 && iG > 10'b0001100000 && iB > 10'b0001100000)
	begin
		middle = 4'h1;
	end
	//test red
	else if (iR > 10'b0001100000 && /*iG > 10'b0000000000 && iB > 10'b0000000000 && */iG < 10'b0001010000 && iB < 10'b0001100000)
	begin
		middle = 4'h2;
	end
	//test orange
	else if (iR > 10'b0001100000 && iG > 10'b0001010000 /*&& iB > 10'b0000000000 */ && iG < 10'b0001100000 && iB < 10'b0001100000)
	begin
		middle = 4'h3;
	end
	//test yellow
	else if (iR > 10'b0001100000 && iG > 10'b0001100000 /*&& iB > 10'b0000000000  && iG < 10'b0110000000 */ && iB < 10'b0001100000)
	begin
		middle = 4'h4;
	end
	//test green
	else if (iB > 10'b0001000000 && iG > 10'b0001000000)
	// iB > b0000110000, iB < b0001010000
	begin
		middle = 4'h5;
	end
	//test blue
	else if (iB > 10'b0001000000)
	begin
		middle = 4'h6;
	end
	else
	begin
		middle = 4'h0;
	end
end					
	
//output color right
always_ff @ (posedge X == 10'd500 && Y == 10'd300)
begin
	//test white
	if(iR > 10'b0001100000 && iG > 10'b0001100000 && iB > 10'b0001100000)
	begin
		right = 4'h1;
	end
	//test red
	else if (iR > 10'b0001100000 && /*iG > 10'b0000000000 && iB > 10'b0000000000 && */iG < 10'b0001010000 && iB < 10'b0001100000)
	begin
		right = 4'h2;
	end
	//test orange
	else if (iR > 10'b0001100000 && iG > 10'b0001010000 /*&& iB > 10'b0000000000 */ && iG < 10'b0001100000 && iB < 10'b0001100000)
	begin
		right = 4'h3;
	end
	//test yellow
	else if (iR > 10'b0001100000 && iG > 10'b0001100000 /*&& iB > 10'b0000000000  && iG < 10'b0110000000 */ && iB < 10'b0001100000)
	begin
		right = 4'h4;
	end
	//test green
	else if (iB > 10'b0001000000 && iG > 10'b0001000000)
	// iB > b0000110000, iB < b0001010000
	begin
		right = 4'h5;
	end
	//test blue
	else if (iB > 10'b0001000000)
	begin
		right = 4'h6;
	end
	else
	begin
		right = 4'h0;
	end
end		

//output color botleft
always_ff @ (posedge X == 10'd400 && Y == 10'd350)
begin
	//test white
	if(iR > 10'b0001100000 && iG > 10'b0001100000 && iB > 10'b0001100000)
	begin
		botleft = 4'h1;
	end
	//test red
	else if (iR > 10'b0001100000 && /*iG > 10'b0000000000 && iB > 10'b0000000000 && */iG < 10'b0001010000 && iB < 10'b0001100000)
	begin
		botleft = 4'h2;
	end
	//test orange
	else if (iR > 10'b0001100000 && iG > 10'b0001010000 /*&& iB > 10'b0000000000 */ && iG < 10'b0001100000 && iB < 10'b0001100000)
	begin
		botleft = 4'h3;
	end
	//test yellow
	else if (iR > 10'b0001100000 && iG > 10'b0001100000 /*&& iB > 10'b0000000000  && iG < 10'b0110000000 */ && iB < 10'b0001100000)
	begin
		botleft = 4'h4;
	end
	//test green
	else if (iB > 10'b0001000000 && iG > 10'b0001000000)
	// iB > b0000110000, iB < b0001010000
	begin
		botleft = 4'h5;
	end
	//test blue
	else if (iB > 10'b0001000000)
	begin
		botleft = 4'h6;
	end
	else
	begin
		botleft = 4'h0;
	end
end

//output color bot
always_ff @ (posedge X == 10'd450 && Y == 10'd350)
begin
	//test white
	if(iR > 10'b0001100000 && iG > 10'b0001100000 && iB > 10'b0001100000)
	begin
		bot = 4'h1;
	end
	//test red
	else if (iR > 10'b0001100000 && /*iG > 10'b0000000000 && iB > 10'b0000000000 && */iG < 10'b0001010000 && iB < 10'b0001100000)
	begin
		bot = 4'h2;
	end
	//test orange
	else if (iR > 10'b0001100000 && iG > 10'b0001010000 /*&& iB > 10'b0000000000 */ && iG < 10'b0001100000 && iB < 10'b0001100000)
	begin
		bot = 4'h3;
	end
	//test yellow
	else if (iR > 10'b0001100000 && iG > 10'b0001100000 /*&& iB > 10'b0000000000  && iG < 10'b0110000000 */ && iB < 10'b0001100000)
	begin
		bot = 4'h4;
	end
	//test green
	else if (iB > 10'b0001000000 && iG > 10'b0001000000)
	// iB > b0000110000, iB < b0001010000
	begin
		bot = 4'h5;
	end
	//test blue
	else if (iB > 10'b0001000000)
	begin
		bot = 4'h6;
	end
	else
	begin
		bot = 4'h0;
	end
end					
	
//output color botright
always_ff @ (posedge X == 10'd500 && Y == 10'd300)
begin
	//test white
	if(iR > 10'b0001100000 && iG > 10'b0001100000 && iB > 10'b0001100000)
	begin
		botright = 4'h1;
	end
	//test red
	else if (iR > 10'b0001100000 && /*iG > 10'b0000000000 && iB > 10'b0000000000 && */iG < 10'b0001010000 && iB < 10'b0001100000)
	begin
		botright = 4'h2;
	end
	//test orange
	else if (iR > 10'b0001100000 && iG > 10'b0001010000 /*&& iB > 10'b0000000000 */ && iG < 10'b0001100000 && iB < 10'b0001100000)
	begin
		botright = 4'h3;
	end
	//test yellow
	else if (iR > 10'b0001100000 && iG > 10'b0001100000 /*&& iB > 10'b0000000000  && iG < 10'b0110000000 */ && iB < 10'b0001100000)
	begin
		botright = 4'h4;
	end
	//test green
	else if (iB > 10'b0001000000 && iG > 10'b0001000000)
	// iB > b0000110000, iB < b0001010000
	begin
		botright = 4'h5;
	end
	//test blue
	else if (iB > 10'b0001000000)
	begin
		botright = 4'h6;
	end
	else
	begin
		botright = 4'h0;
	end
end		
	
//color changing display
always_comb
begin
	//test white
	if (iR > 10'b0001100000 && iG > 10'b0001100000 && iB > 10'b0001100000)
	begin
//		color = 4'h0;
		oR = 10'h3ff;
		oG = 10'h0;
		oB = 10'h0;
	end
	//test red
	else if (iR > 10'b0001100000 && /*iG > 10'b0000000000 && iB > 10'b0000000000 && */iG < 10'b0001010000 && iB < 10'b0001100000)
	//
	begin
//		color = 4'h1;
		oR = 10'h3ff;
		oG = 10'h3ff;
		oB = 10'h0;
	end
	//test orange
	else if (iR > 10'b0001100000 && iG > 10'b0001010000 /*&& iB > 10'b0000000000 */ && iG < 10'b0001100000 && iB < 10'b0001100000)
	begin
//		color = 4'h2;
		oR = 10'h0;
		oG = 10'h3ff;
		oB = 10'h0;
	end
	//test yellow
	else if (iR > 10'b0001100000 && iG > 10'b0001100000 /*&& iB > 10'b0000000000  && iG < 10'b0110000000 */ && iB < 10'b0001100000)
	begin
//		
		
		oR = 10'h0;
		oG = 10'h0;
		oB = 10'h3ff;
	end
	//test green
	else if (iB > 10'b0001000000 && iG > 10'b0001000000)
	// iB > b0000110000, iB < b0001010000
	begin
//		color = 4'h4;
		oR = 10'h0;
		oG = 10'h3ff;
		oB = 10'h3ff;
	end
	//test blue
	else if (iB > 10'b0001000000)
	begin
//		color = 4'h5;
		oR = 10'h3ff;
		oG = 10'h3ff;
		oB = 10'h3ff;
	end
	else
	begin
		//topleft = temp;
		oR = iR;
		oG = iG;
		oB = iB;
	end
end
					
endmodule
