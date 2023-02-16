// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function setActiveSpeaker(side){
	if(side != "trueKill"){
		obj_sprite.visible = true;
		global.activeSpeaker = side;
	}else{
	  obj_sprite.visible = false;
	}


}