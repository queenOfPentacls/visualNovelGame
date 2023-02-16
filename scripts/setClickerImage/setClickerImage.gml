function setClickerImage(image, cX, cY, sX, sY) {
if(image == ghost){
	global.drawClicker = false;
	obj_clickerImage.visible = false;
}
if(image != ghost){
    obj_clickerImage.visible = true;
	global.drawClicker = true;
	global.clickerImage = image;
	global.clickerX = cX;
	global.clickerY = cY;
	global.clickerXSCALE = sX;
	global.clickerYSCALE = sY;
}
}
