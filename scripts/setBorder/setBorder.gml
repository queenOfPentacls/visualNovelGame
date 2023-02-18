// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function setBorder(image){
	if(image != "kill"){
		global.drawBorder = true;
		global.setBorder = image;
	}else{
		global.drawBorder = false;
	}
}