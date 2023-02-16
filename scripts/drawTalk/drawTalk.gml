function drawTalk(sprite, tX, tY, side, alpha, Sspeed){  
		if (side == R && sprite != "kill") {
			global.drawSprite[R] = true;
		}
		if (side == L && sprite != "kill") {
			global.drawSprite[L] = true;
		}
	if (sprite == "previous") {
		sprite = global.previousSprite[side];
	}
	else {
		global.previousSprite[side] = sprite;
	}

	if (tX == "previous") {
		tX = global.previousSpriteX[side];
	}
	else {
		global.previousSpriteX[side] = tX;
	}

	if (tY == "previous") {
		tY = global.previousSpriteY[side];
	}
	else {
		global.previousSpriteY[side] = tY;
	}
	
	if (side == L && sprite == "kill") {
		global.drawSprite[L] = false;
	}
		
	if (side == L) {
		global.spriteLA = alpha;
		global.spriteSPEED[L] = Sspeed;
	}
	
	if (side == R && sprite == "kill") {
		global.drawSprite[R] = false;
	}
		
	if (side == R) {
		global.spriteRA = alpha;
		global.spriteSPEED[R] = Sspeed;
	}
	
	if (side == R && alpha == "flicker") {
		global.spriteSPEED[R] = Sspeed;
	}
			
	if (side == L) {
		global.spriteLA = alpha;
		global.spriteSPEED[L] = Sspeed;
	}
	if (side == L) {
		global.spriteSPEED[L] = Sspeed;
	}
}