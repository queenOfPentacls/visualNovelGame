function animateFlicker(object){
		if(alarm[0] == 0){
	show_debug_message("uhmm");
	object.alphaToBe += 0.25
	object.hasFlickered = false;
	image_alpha = object.alphaToBe;
		show_debug_message(image_alpha)
		alarm[0] = 5;
	}
	if(alarm[0] =! 0 && image_alpha != 1){
	image_alpha = 0;
	}
		if(alarm[0] =! 0 && image_alpha == 1){
		alarm[0] = -1;
		image_alpha = 1;
		object.hasFlickered = true;
	}
}