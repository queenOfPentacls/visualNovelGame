/// @description Insert description here
// You can write your code in this editor

if(live_call()) return live_result;

sprite_index = scissor;
image_xscale = 0.15;
image_yscale = 0.15;
image_speed = 0;

if((global.bannerCollide || global.collide1 || global.collide2) && !clicked){
 hover = true	
}else{
 hover = false
}

if(hover && !loopone){
	if(image_index == 4){
	image_index = 4;	
	}else{
	image_index--
	}
}
if(!hover && !loopone){
	if(image_index == 7){
	image_index = 7;	
	}else{
	image_index++
	}
}
if(!hover && loopone){
	if(image_index == 9){
	image_index = 7;
	loopone = false
	}else{
	image_index++
	}
}
if(hover && loopone){
	if(image_index == 5){
	image_index = 4;
	loopone = false
	}else{
	image_index++
	}
}

if(surface_exists(am_surface)){
	shader_set(shdr_dynaDither);
	draw_surface_general(am_surface, 0, 0, camW, camH, camera_get_view_x(view_camera[0]), camera_get_view_y(view_camera[0]), 1, 1, 0, c_white, c_white, c_white, c_white, 0.5)
	shader_reset();
}
else am_surface = surface_create(camW, camH);

draw_after_image(2, 0, 0.5, c_white, true); // super subtle
//draw_after_image(3, 0, 0.05, c_white, true); // subtle
//draw_after_image(5, 1, 0.05, c_white, true); // not subtle
//draw_after_image(10, 1, 0.00001, c_white, true); // ermm this guys must have been on acid xD
draw_self();