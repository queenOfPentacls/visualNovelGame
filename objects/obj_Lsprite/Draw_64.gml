/// @description Insert description here
// You can write your code in this editor
if(global.drawLSprite){
	if(alarm[0] == -1){
alarm[0] = 60;
}

	obj_Lsprite.visible = true;
	sprite_index = global.previousSpriteL;
    x = global.previousSpriteLX;
    y = global.previousSpriteLY;
	animateFlicker(self);
	image_speed = global.spriteLSPEED;
	global.previousSpriteLX = 	clamp(global.previousSpriteLX, -100, 100);
	if(global.activeSpeaker = "L" || global.activeSpeaker = "kill" || global.activeSpeaker ="both"){
		animateActive(global.activeSpeaker, global.spriteLSPEED)
	}
}else{
	obj_Rsprite.visible = false;
}