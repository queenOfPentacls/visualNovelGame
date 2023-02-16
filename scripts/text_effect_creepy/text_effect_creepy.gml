function text_effect_creepy(start, stop){
	for(i = start; i < stop; i++){
		txtXVar[i] += random_range(-0.25,0.25);
		txtYVar[i] += random_range(-0.25,0.25);
		
		if((random(60)>=59)){txtXVar[i] = 0; txtYVar[i] = 0;}
		
		txtXOff[i] += (txtXVar[i] - txtXOff[i])*.1;
		txtYOff[i] += (txtYVar[i] - txtYOff[i])*.1;
	}
}