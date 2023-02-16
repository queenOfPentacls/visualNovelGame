

function setActiveSpeaker(side){
	if(side != "trueKill"){
		obj_sprite.visible = true;
		global.activeSpeaker = side;
	}else{
	  obj_sprite.visible = false;
	}


}