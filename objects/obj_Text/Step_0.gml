if(variable_global_exists("bannerDialogue")){
	if(str != string_sanitize(global.bannerDialogue)){
		str = string_sanitize(global.bannerDialogue);
		strInit();
	}
}