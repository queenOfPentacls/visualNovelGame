/// @description animateFlicker(object, freq);
/// @param object
/// @param freq
function animateFlicker(){
	var object = argument[0];
	var freq   = argument[1];
	
	if(flicker){
		if(flicker % freq == 0){
			object.image_alpha = 0;
		}
		else{
			object.image_alpha += 0.25;
		}
		
		//set alpha back to 1 on last frame of flicker
		if(flicker - 1 <= 0){
			image_alpha = 1;
		}
		
		flicker--;
	}
}