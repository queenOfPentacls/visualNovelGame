/// @description Insert description here
// You can write your code in this editor
if(global.drawLSprite){
	obj_Lsprite.visible = true;
	sprite_index = global.previousSpriteL;
    x = global.previousSpriteLX;
    y = global.previousSpriteLY;
    image_alpha = global.spriteLA;
	image_speed = 1;
	image_speed = global.spriteLSPEED;
	      show_debug_message(global.previousSpriteLX)
	global.previousSpriteLX = 	clamp(global.previousSpriteLX, -100, 100);
	if(global.activeSpeaker = "L" ||global.activeSpeaker = "kill" ||global.activeSpeaker = "both"){
		animateActive(global.activeSpeaker, global.spriteLSPEED)
	}else{
		obj_Lsprite.visible = false;
	}
}