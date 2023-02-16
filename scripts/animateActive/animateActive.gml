function animateActive(side, talkSpeed){
    var advanceSpeed = 120;
	var retreatSpeed = 90;
	
	talkPos[L] = 100; //<-- move all this somewhere else probably
	restPos[L] = -100; 
	talkPos[R] = room_width - 100; 
	restPos[R] = room_width + 100; 
	
	var tweenSpeed = .2;
	
	switch side{
		case L: 
			global.spriteSPEED[L] = talkSpeed;
			global.previousSpriteX[L] += (talkPos[L] - global.previousSpriteX[L]) * tweenSpeed;
			global.spriteSPEED[R] = 0;
			global.previousSpriteX[R] += (restPos[R] - global.previousSpriteX[R]) * tweenSpeed;
			//global.spriteSPEED[L] = talkSpeed;
			//global.previousSpriteX[L] += advanceSpeed * delta;
			//global.spriteSPEED[R] = 0;
			//global.previousSpriteX[R] += retreatSpeed * delta;
			break;
		
		case R: 
			global.spriteSPEED[R] = talkSpeed;
			global.previousSpriteX[R] += (talkPos[R] - global.previousSpriteX[R]) * tweenSpeed;
			global.spriteSPEED[L] = 0;
			global.previousSpriteX[L] += (restPos[L] - global.previousSpriteX[L]) * tweenSpeed;
			break;
			
		case "kill": 
			global.spriteSPEED[R] = 0;
	        global.spriteSPEED[L] = 0;
	        global.previousSpriteX[R] += (restPos[R] - global.previousSpriteX[R]) * tweenSpeed;
	        global.previousSpriteX[L] += (restPos[L] - global.previousSpriteX[L]) * tweenSpeed;
			break;	
			
		case "both": 
			global.spriteSPEED[R] = talkSpeed;
	        global.spriteSPEED[L] = talkSpeed;
	        global.previousSpriteX[L] += (talkPos[L] - global.previousSpriteX[L]) * tweenSpeed;
	        global.previousSpriteX[R] += (talkPos[R] - global.previousSpriteX[R]) * tweenSpeed;
			break;	
			
		case "trueKill": 
			obj_sprite.visible = false;
			break;	
		
		default: break;
	}
}
