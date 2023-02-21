function text_effect_execute(str, tag, effect_script){
	
	str           = argument[0];
	tag           = argument[1];
	effect_script = argument[2];
	
	var start = 0;
	var stop  = 0;
	var count = string_count(tag, str);
			
	//find each set of tags, remove them and apply effect and in steps
	for(i = 0; i < count; i += 2){
		start = string_pos(tag, str) - 1; 
		str = string_delete(str, string_pos(tag, str), 1);
		stop  = string_pos(tag, str) - 1;
		str = string_delete(str, string_pos(tag, str), 1);
		
		script_execute(effect_script, start, stop);
	}
	
	return str; //returns string with used tag removed
}