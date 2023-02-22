/// @description Insert description here
// You can write your code in this editor
if(global.activeBanner == "choice"){
show_debug_message(image_xscale)
trailSpeed = clamp(trailSpeed, minSpeed, maxSpeed)
speedRate = clamp(speedRate, minSpeedRate, maxSpeedRate);
trailRate = clamp(trailRate, minTrailRate, maxTrailRate);
shader_set(shdr_dynaDither);
if (position_meeting(mouse_x, mouse_y, self)) {
	if(speedRate<maxSpeedRate){
	speedRate += 1;
	}
	if(trailRate<maxTrailRate){
	trailRate+=speedRate
	}
	image_angle += speedRate
	image_index=1;
    collide = true;
	image_alpha = 1;
	i++
	clamp(i, 0, 14);
	if(i == 14){
	i = 0;
	}
	if(trailSpeed>minSpeed){
	trailSpeed -= trailRate
	}
	draw_sprite_ext(question, 1, x, y, image_xscale, image_yscale, image_angle+trailSpeed,0, 0.5);
	draw_sprite_ext(question, 1, x, y, image_xscale, image_yscale, image_angle+trailSpeed+20,0, 0.75);
		draw_set_color(c_black)
	if(mouse_check_button_pressed(mb_left)){
	global.innerStep = iStep
	global.storyStep++
	}
}else{
	if(speedRate>minSpeedRate){
	speedRate -= 0.5;
	}
	if(trailRate>minTrailRate){
	trailRate-=speedRate
	}
	image_index = 0;
	image_angle += speedRate
	image_alpha = 1;
	collide = false;
	if(trailSpeed<maxSpeed){
	trailSpeed += trailRate
	}
	draw_sprite_ext(question, 0, x, y, image_xscale, image_yscale, image_angle+trailSpeed,c_white, 0.5);
}
draw_self();
}else{
shader_reset();
}