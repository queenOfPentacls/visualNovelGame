function text_effect_wavy(start, stop){
	for(i = start; i < stop; i++){
		txtYOff[i] = sin((system.time + (i * 2))/4) * 3;
	}
}