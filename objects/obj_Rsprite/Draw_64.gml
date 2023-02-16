/// @description Insert description here
// You can write your code in this editor
if(global.drawRSprite){
	obj_Rsprite.visible = true;
	sprite_index = global.previousSpriteR;
    x = global.previousSpriteRX;
    y = global.previousSpriteRY;
    image_alpha = global.spriteRA;
	image_speed = global.spriteRSPEED;
	image_xscale = -1;
	global.previousSpriteRX = 	clamp(global.previousSpriteRX, room_width-100, room_width + 100);
	if(global.activeSpeaker = "R" || global.activeSpeaker = "kill" || global.activeSpeaker ="both"){
		animateActive(global.activeSpeaker, global.spriteRSPEED)
	}
}else{
	obj_Rsprite.visible = false;
}