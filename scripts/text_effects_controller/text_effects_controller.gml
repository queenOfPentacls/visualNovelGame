function text_effects_controller(){
	if(variable_global_exists("bannerDialogue") && global.activeBanner == "stretchBanner"){
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
 	if(variable_global_exists("choice1Dialogue") && global.activeBanner == "choice"){
		var str = global.choice1Dialogue;
		var str2 = global.choice2Dialogue;
		
		if(string_count("&", str)){
			str = text_effect_execute(str, "&", text_effect_creepy);
		}
		
		if(string_count("&", str2)){
			str2 = text_effect_execute(str2, "&", text_effect_creepy);
		}
		
		if(string_count("%", str)){
			str = text_effect_execute(str, "%", text_effect_wavy);
		}
		
		if(string_count("%", str2)){
			str2 = text_effect_execute(str2, "%", text_effect_wavy);
		}
		
		if(string_count("#", str)){
			str = text_effect_execute(str, "#", text_effect_vibrate);
		}
	
		if(string_count("#", str2)){
			str2 = text_effect_execute(str2, "#", text_effect_vibrate);
		}
	}
}