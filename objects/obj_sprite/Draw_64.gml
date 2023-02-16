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
	
	animateFlicker(self);
	image_speed = global.spriteSPEED[side];
	
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