// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function animateActive(side, talkSpeed){
    var delta = delta_time / 1000000; // Convert delta time to seconds
    var advanceSpeed = 120;
	var retreatSpeed = 90;
    if(side == "L"){
        global.spriteLSPEED = talkSpeed;
        global.previousSpriteLX += advanceSpeed * delta;
    }else{
        global.spriteLSPEED = 0;
        global.previousSpriteLX -= retreatSpeed * delta;
    }
    
    if(side == "R"){
        global.spriteRSPEED = talkSpeed;
        global.previousSpriteRX -= advanceSpeed * delta;
    }else{
        global.spriteRSPEED = 0;
        global.previousSpriteRX += retreatSpeed * delta;
    }
    
    if(side == "kill"){
        global.spriteRSPEED = 0;
        global.spriteLSPEED = 0;
        global.previousSpriteRX += retreatSpeed * delta;
        global.previousSpriteLX -= retreatSpeed * delta;
    }
    
    if(side == "both"){
        global.spriteRSPEED = talkSpeed;
        global.spriteLSPEED = talkSpeed;
        global.previousSpriteLX += advanceSpeed * delta;
        global.previousSpriteRX -= advanceSpeed * delta;
    }
	
	if(side == "trueKill"){
     obj_Lsprite.visible = false;
	 obj_Rsprite.visible = false;
    }
}
