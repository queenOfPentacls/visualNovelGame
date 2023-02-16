function animateActive(side, talkSpeed){
    var advanceSpeed = 120;
	var retreatSpeed = 90;
	
	talkPos[L] = 100; //<-- move all this somewhere else probably
	restPos[L] = -100; 
	talkPos[R] = room_width - 100; 
	restPos[R] = room_width + 100; 
	
	var tweenSpeed = .2;
	var alphaTweenInSpeed = .5;
	var alphaTweenOutSpeed = .2;
	var alphaFaded = 0.5;
	
	switch side{
		case L: 
			global.spriteSPEED[L] = talkSpeed;
			global.spriteALPHA[L] += (1 - global.spriteALPHA[L]) * alphaTweenInSpeed;
			global.previousSpriteX[L] += (talkPos[L] - global.previousSpriteX[L]) * tweenSpeed;
			
			global.spriteSPEED[R] = 0;
			global.spriteALPHA[R] += (alphaFaded - global.spriteALPHA[R]) * alphaTweenOutSpeed;
			global.previousSpriteX[R] += (restPos[R] - global.previousSpriteX[R]) * tweenSpeed;
			//global.spriteSPEED[L] = talkSpeed;
			//global.previousSpriteX[L] += advanceSpeed * delta;
			//global.spriteSPEED[R] = 0;
			//global.previousSpriteX[R] += retreatSpeed * delta;
			break;
		
		case R: 
			global.spriteSPEED[R] = talkSpeed;
			global.spriteALPHA[R] += (1 - global.spriteALPHA[R]) * alphaTweenInSpeed;
			global.previousSpriteX[R] += (talkPos[R] - global.previousSpriteX[R]) * tweenSpeed;
			
			global.spriteSPEED[L] = 0;
			global.spriteALPHA[L] += (alphaFaded - global.spriteALPHA[L]) * alphaTweenOutSpeed;
			global.previousSpriteX[L] += (restPos[L] - global.previousSpriteX[L]) * tweenSpeed;
			break;
			
		case "kill": 
	        global.spriteSPEED[L] = 0;
			global.spriteALPHA[L] += (alphaFaded - global.spriteALPHA[L]) * alphaTweenOutSpeed;
	        global.previousSpriteX[L] += (restPos[L] - global.previousSpriteX[L]) * tweenSpeed;
			
			global.spriteSPEED[R] = 0;
			global.spriteALPHA[R] += (alphaFaded - global.spriteALPHA[R]) * alphaTweenOutSpeed;
	        global.previousSpriteX[R] += (restPos[R] - global.previousSpriteX[R]) * tweenSpeed;
			break;	
			
		case "both": 
	        global.spriteSPEED[L] = talkSpeed;
			global.spriteALPHA[L] += (1 - global.spriteALPHA[R]) * alphaTweenInSpeed;
	        global.previousSpriteX[L] += (talkPos[L] - global.previousSpriteX[L]) * tweenSpeed;
			
			global.spriteSPEED[R] = talkSpeed;
			global.spriteALPHA[R] += (1 - global.spriteALPHA[R]) * alphaTweenInSpeed;
	        global.previousSpriteX[R] += (talkPos[R] - global.previousSpriteX[R]) * tweenSpeed;
			break;	
			
		case "trueKill": 
			obj_sprite.visible = false;
			break;	
		
		default: break;
	}
}
