	//test white
//		if (iR > 10'b0110000000 && iG > 10'b0110000000 && iB > 10'b0110000000)
//		begin
//			color1 = 1'h0;
//		color2 = color2;
//		color3 = color3;
//		color4 = color4;
//		color5 = color5;
//		color6 = color6;
//		color7 = color7;
//		color8 = color8;
//		color9 = color9;
//		end
//		//test red
//		else if (iR > 10'b0110000000 && /*iG > 10'b0000000000 && iB > 10'b0000000000 && */iG < 10'b0011000000 && iB < 10'b0011000000)
//		begin
//			color1 = 1'h1;
//					color2 = color2;
//		color3 = color3;
//		color4 = color4;
//		color5 = color5;
//		color6 = color6;
//		color7 = color7;
//		color8 = color8;
//		color9 = color9;
//		end
//		//test orange
//		else if (iR > 10'b0110000000 && iG > 10'b0011000000 /*&& iB > 10'b0000000000 */ && iG < 10'b0110000000 && iB < 10'b0011000000)
//		begin
//			color1 = 1'h2;
//					color2 = color2;
//		color3 = color3;
//		color4 = color4;
//		color5 = color5;
//		color6 = color6;
//		color7 = color7;
//		color8 = color8;
//		color9 = color9;
//		end
//		//test yellow
//		else if (iR > 10'b0110000000 && iG > 10'b0110000000 /*&& iB > 10'b0000000000  && iG < 10'b0110000000 */ && iB < 10'b0110000000)
//		begin
//			color1 = 1'h3;		color2 = color2;
//		color3 = color3;
//		color4 = color4;
//		color5 = color5;
//		color6 = color6;
//		color7 = color7;
//		color8 = color8;
//		color9 = color9;
//		end
//		//test green
//		else if (iR < 10'b0011000000 && iG > 10'b0110000000 /*&& iB > 10'b0000000000  && iG < 10'b0110000000 */ && iB < 10'b0011000000)
//		begin
//			color1 = 1'h4;		color2 = color2;
//		color3 = color3;
//		color4 = color4;
//		color5 = color5;
//		color6 = color6;
//		color7 = color7;
//		color8 = color8;
//		color9 = color9;
//		end
//		//test blue
//		else if (iR < 10'b0011000000 && iG > 10'b0110000000 /*&& iB > 10'b0000000000  && iG < 10'b0110000000 */ && iB < 10'b0011000000)
//		begin
//			color1 = 1'h5;
//					color2 = color2;
//		color3 = color3;
//		color4 = color4;
//		color5 = color5;
//		color6 = color6;
//		color7 = color7;
//		color8 = color8;
//		color9 = color9;
//		end
//		else
//		begin
//			color1 = color1;
//					color2 = color2;
//		color3 = color3;
//		color4 = color4;
//		color5 = color5;
//		color6 = color6;
//		color7 = color7;
//		color8 = color8;
//		color9 = color9;
//		end