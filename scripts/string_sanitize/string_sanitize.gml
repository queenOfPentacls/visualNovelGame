function string_sanitize(str){
	while(string_count("&", str)){ str = string_delete(str, string_pos("&", str), 1);}
	while(string_count("#", str)){ str = string_delete(str, string_pos("#", str), 1);}
	while(string_count("%", str)){ str = string_delete(str, string_pos("%", str), 1);}
	return str;
}