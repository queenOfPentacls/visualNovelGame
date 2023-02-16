function text_effect_vibrate(start, stop){
	for(i = start; i < stop; i++){
		//if(txtYVar[i] == 0){txtYVar[i] = random_range(-5,5)}
		txtYOff[i] = sin(system.time + txtYVar[i]) * 2;
	}
}
	