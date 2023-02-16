function animateFlicker(object){
		if(object.alarm[0] == 0){
	show_debug_message("uhmm");
	object.alphaToBe += 0.25

	image_alpha = object.alphaToBe;
		show_debug_message(image_alpha)
		object.alarm[0] = 5;
	}
	if(object.alarm[0] =! 0 && image_alpha != 1){
	image_alpha = 0;
	}
		if(object.alarm[0] =! 0 && image_alpha == 1){
		object.alarm[0] = -1;
		image_alpha = 1;
		object.hasFlickered = true;
	}
}