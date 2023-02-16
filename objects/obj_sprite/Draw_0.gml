if(live_call()) return live_result;
if(global.drawSprite[side]){
	if(alarm[0] == -1){
		alarm[0] = 60;
	}

	visible = true;
	sprite_index = global.previousSprite[side];
    x = global.previousSpriteX[side];
    y = global.previousSpriteY[side];
	
	//set facing direction based on side
	image_xscale = side = L ? 1 : -1; 
	
	image_speed = global.spriteSPEED[side];
	image_alpha = global.spriteALPHA[side];
	
	animateFlicker(self, 4);
	
	gpu_set_fog(1, c_black, 0, 1);
	draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, image_angle, image_blend, 1);
	gpu_set_fog(0, c_white, 0, 0);
	
	
	trail_x[0] += (x - trail_x[0])*.4;
	trail_x[1] += (x - trail_x[1])*.2;
	shader_set(shdr_dynaDither);
	draw_sprite_ext(sprite_index, image_index, trail_x[0], y, image_xscale, image_yscale, image_angle, image_blend, .1);
	draw_sprite_ext(sprite_index, image_index, trail_x[1], y, image_xscale, image_yscale, image_angle, image_blend, .05);
	draw_self();
	shader_reset();
	
	//clamp x pos based on side
	switch side{
		case L: global.previousSpriteX[side] = 	clamp(global.previousSpriteX[side], -100, 100); break;
		case R: global.previousSpriteX[side] = 	clamp(global.previousSpriteX[side], room_width - 100, room_width + 100); break;
		default: break;
	}
	
	if(global.activeSpeaker = side || global.activeSpeaker = "kill" || global.activeSpeaker ="both"){
		animateActive(global.activeSpeaker, global.spriteSPEED[side])
	}
}else{
	with(obj_sprite){
		if(side != other.side){ visible = false; }
	}
}