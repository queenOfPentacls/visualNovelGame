/// @description Insert description here
// You can write your code in this editor
if(global.drawLSprite){
	obj_Lsprite.visible = true;
	sprite_index = global.previousSpriteL;
    x = global.previousSpriteLX;
    y = global.previousSpriteLY;
	show_debug_message(image_alpha)
	animateFlicker(self);
	image_speed = global.spriteLSPEED;
	global.previousSpriteLX = 	clamp(global.previousSpriteLX, -100, 100);
	if(global.activeSpeaker = "L" || global.activeSpeaker = "kill" || global.activeSpeaker ="both"){
		animateActive(global.activeSpeaker, global.spriteLSPEED)
	}
}else{
	obj_Rsprite.visible = false;
}