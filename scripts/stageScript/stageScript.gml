

function stageScript(side, banner, str, spriteL, spriteLX, spriteLY, lAlpha, LSPEED, spriteR, spriteRX, spriteRY, rAlpha, RSPEED){
	drawTalk(spriteR, spriteRX, spriteRY, R, rAlpha, RSPEED);
	drawTalk(spriteL, spriteLX, spriteLY, L, lAlpha, LSPEED);
	setActiveSpeaker(side)
	setActiveStoryBanner(banner);
	drawBannerText(str);
}