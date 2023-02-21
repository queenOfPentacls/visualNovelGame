if(live_call()) return live_result;
str2 = "";
typeSpd = 0.5;
iStep = 2;
kerningFuck = 5;

strInit = function()
{
	while(string_count("&", str2)){ str2 = string_delete(str2, string_pos("&", str2), 1);}
	
	len = string_length(str2);
	t = 0;

	for(i = 0; i < len; i++){
		char[i] = string_char_at(str2, i + 1);
		txtXVar[i] = 0;
		txtYVar[i] = 0;
		txtXOff[i]  = random_range(kerningFuck,-kerningFuck);
		txtYOff[i]  = 0;
		alpha[i] = 0;
	}
}

strInit();