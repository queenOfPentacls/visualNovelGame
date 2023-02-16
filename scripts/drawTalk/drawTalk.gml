// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function drawTalk(sprite, tX, tY, side, alpha, Sspeed){  
		if (side == "R" && sprite != "kill") {
			global.drawRSprite = true;
		}
		if (side == "L" && sprite != "kill") {
			global.drawLSprite = true;
		}
	if (sprite == "previous") {
		if (side == "L") {
			sprite = global.previousSpriteL;
		}
		else {
			sprite = global.previousSpriteR;
		}
	}
	else {
		if (side == "L") {
			global.previousSpriteL = sprite;
		}
		else {
			global.previousSpriteR = sprite;
		}
	}

	if (tX == "previous") {
		if (side == "L") {
			tX = global.previousSpriteLX;
		}
		else {
			tX = global.previousSpriteRX;
		}
	}
	else {
		if (side == "L") {
			global.previousSpriteLX = tX;
		}
		else {
			global.previousSpriteRX = tX;
		}
	}

	if (tY == "previous") {
		if (side == "L") {
			tY = global.previousSpriteLY;
		}
		else {
			tY = global.previousSpriteRY;
		}
	}
	else {
		if (side == "L") {
			global.previousSpriteLY = tY;
		}
		else {
			global.previousSpriteRY = tY;
		}
	}
	
	if (side == "L" && sprite == "kill") {
			global.drawLSprite = false;
		}
		
	if (side == "L") {
			global.spriteLA = alpha;
			global.spriteLSPEED = Sspeed;
		}
	if (side == "R" && sprite == "kill") {
			global.drawRSprite = false;
		}

		
	if (side == "R") {
			global.spriteRA = alpha;
			global.spriteRSPEED = Sspeed;
		}
			if (side == "R" && alpha == "flicker") {
							global.spriteRSPEED = Sspeed;
			}
			if (side == "L") {
			global.spriteLA = alpha;
			global.spriteLSPEED = Sspeed;
		}
					if (side == "L") {
								global.spriteLSPEED = Sspeed;
		}
}