function text_effects_controller(){
	if(variable_global_exists("bannerDialogue")){
		var start = 0;
		var stop  = 0;
		
		if(string_count("&", global.bannerDialogue)){
			start = string_pos("&", global.bannerDialogue) - 1;
			stop  = string_last_pos("&", global.bannerDialogue) - 2;
		
			text_effect_creepy(start, stop);
		}
		
		if(string_count("%", global.bannerDialogue)){
			start = string_pos("%", global.bannerDialogue) - 1;
			stop  = string_last_pos("%", global.bannerDialogue) - 2;
		
			text_effect_wavy(start, stop);
		}
		
		if(string_count("#", global.bannerDialogue)){
			start = string_pos("#", global.bannerDialogue) - 1;
			stop  = string_last_pos("#", global.bannerDialogue) - 2;
		
			text_effect_vibrate(start, stop);
		}
	}
}