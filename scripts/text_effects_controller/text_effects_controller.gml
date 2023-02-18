function text_effects_controller(){
	if(variable_global_exists("bannerDialogue")){
		var str = global.bannerDialogue;
		
		if(string_count("&", str)){
			str = text_effect_execute(str, "&", text_effect_creepy);
		}
		
		if(string_count("%", str)){
			str = text_effect_execute(str, "%", text_effect_wavy);
		}
		
		if(string_count("#", str)){
			str = text_effect_execute(str, "#", text_effect_vibrate);
		}
	}
}