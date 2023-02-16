// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function animateActive(side, talkSpeed){
    var advanceSpeed = 120;
	var retreatSpeed = 90;
    if(side == L){
        global.spriteSPEED[L] = talkSpeed;
        global.previousSpriteX[L] += advanceSpeed * delta;
    }else{
        global.spriteSPEED[L] = 0;
        global.previousSpriteX[L] -= retreatSpeed * delta;
    }
    
    if(side == R){
        global.spriteSPEED[R] = talkSpeed;
        global.previousSpriteX[R] -= advanceSpeed * delta;
    }else{
        global.spriteSPEED[R] = 0;
        global.previousSpriteX[R] += retreatSpeed * delta;
    }
    
    if(side == "kill"){
        global.spriteSPEED[R] = 0;
        global.spriteSPEED[L] = 0;
        global.previousSpriteX[R] += retreatSpeed * delta;
        global.previousSpriteX[L] -= retreatSpeed * delta;
    }
    
    if(side == "both"){
        global.spriteSPEED[R] = talkSpeed;
        global.spriteSPEED[L] = talkSpeed;
        global.previousSpriteX[L] += advanceSpeed * delta;
        global.previousSpriteX[R] -= advanceSpeed * delta;
    }
	
	if(side == "trueKill"){
     obj_Lsprite.visible = false;
	 obj_Rsprite.visible = false;
    }
}
