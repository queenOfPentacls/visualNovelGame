if(live_call()) return live_result;

str = "";
typeSpd = 0.5;

kerningFuck = 5;

strInit = function()
{
	while(string_count("&", str)){ str = string_delete(str, string_pos("&", str), 1);}
	
	len = string_length(str);
	t = 0;

	for(i = 0; i < len; i++){
		char[i] = string_char_at(str, i + 1);
		txtXVar[i] = 0;
		txtYVar[i] = 0;
		txtXOff[i]  = random_range(kerningFuck,-kerningFuck);
		txtYOff[i]  = 0;
	}
}

strInit();