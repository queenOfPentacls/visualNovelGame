if(variable_global_exists("choice2Dialogue") && global.activeBanner == "choice"){
	if(str2 != string_sanitize(global.choice2Dialogue)){
		str2 = string_sanitize(global.choice2Dialogue);
		strInit();
	}
	
text_effects_controller();
}
