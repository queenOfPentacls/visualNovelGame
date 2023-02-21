if(variable_global_exists("bannerDialogue") && global.activeBanner == "stretchBanner"){
	if(str != string_sanitize(global.bannerDialogue)){
		str = string_sanitize(global.bannerDialogue);
		strInit();
	}
}
if(variable_global_exists("choice1Dialogue") && global.activeBanner == "choice"){
	if(str != string_sanitize(global.choice1Dialogue)){
		str = string_sanitize(global.choice1Dialogue);
		strInit();
	}
}

text_effects_controller();