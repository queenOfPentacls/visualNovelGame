// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function setActiveSpeaker(side){
	if(side != "trueKill"){
		obj_Lsprite.visible = true;
		obj_Rsprite.visible = true;
		global.activeSpeaker = side
	}else{
	  obj_Lsprite.visible = false;
	  obj_Rsprite.visible = false;
	}


}