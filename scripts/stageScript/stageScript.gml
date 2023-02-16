// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function stageScript(side, banner, str, spriteL, spriteLX, spriteLY, lAlpha, LSPEED, spriteR, spriteRX, spriteRY, rAlpha, RSPEED){
	drawTalk(spriteR, spriteRX, spriteRY, "R", rAlpha, RSPEED);
	drawTalk(spriteL, spriteLX, spriteLY, "L", lAlpha, LSPEED);
	setActiveSpeaker(side)
	setActiveStoryBanner(banner);
	drawBannerText(str);
}