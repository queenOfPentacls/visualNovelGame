if(live_call()) return live_result;

str = "";
typeSpd = 0.5;

strInit = function()
{
	len = string_length(str);
	t = 0;

	for(i = 0; i < len; i++){
		char[i] = string_char_at(str, i + 1);
	}
}

strInit();