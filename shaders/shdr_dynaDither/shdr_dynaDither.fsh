//If you want more details on this method of dithering read up on "Ordered dithering"
//Fragment shader variable initialization.
varying vec2 v_vTexcoord;
varying vec4 v_vColour;
varying vec2 v_vPosition;

//This function calculates a 4x4 pattern based on the opacity parameter.
//The opacity parameter works on a 0.0 - 1.0 range.
int patCalc(float opacity, int xPos, int yPos)
{
	opacity *= 16.0;
	//4x4 dither lookup table
    mat4 lookup = mat4(
		vec4(1.0 ,12.0,3.0 ,10.0),
        vec4(14.0,5.0 ,16.0,7.0 ),
        vec4(4.0 ,9.0 ,2.0 ,11.0 ),
        vec4(15.0,8.0 ,13.0,6.0 )
        );
	//Subtract the opacity from the lookup table's value, then add one make a 0 into a 1
	//int retval = int((opacity - lookup[xPos][yPos]) + 1.0);
	
	//this is a nightmare band-aid fix for the line above bc it wont work in html5
	//I have no clue what the fuck I'm doing I don't know GLSL and have literally
	//never written it other than changing a few variables god help us all here we go
	float fuck = 0.0;
	if(xPos == 0){
		if(yPos == 0){ 
			fuck = 1.0; 
		}
		else if(yPos == 1){ fuck = 12.0; }
		else if(yPos == 2){ fuck = 3.0; }
		else if(yPos == 3){ fuck = 10.0; }
	}						
	else if(xPos == 1){		
			 if(yPos == 0){ fuck = 14.0; }
		else if(yPos == 1){ fuck = 5.0; }
		else if(yPos == 2){ fuck = 16.0; }
		else if(yPos == 3){ fuck = 7.0; }
	}						
	else if(xPos == 2){		
			 if(yPos == 0){ fuck = 4.0; }
		else if(yPos == 1){ fuck = 9.0; }
		else if(yPos == 2){ fuck = 2.0; }
		else if(yPos == 3){ fuck = 11.0; }
	}						
	else if(xPos == 3){		
			 if(yPos == 0){ fuck = 15.0; }
		else if(yPos == 1){ fuck = 8.0; }
		else if(yPos == 2){ fuck = 13.0; }
		else if(yPos == 3){ fuck = 6.0; }
	}
	
	int retval = int((opacity - fuck) + 1.0);
	
	//Add the absolute value of retval so that negative values cancel out and end up being 0
	retval += int(abs(float(retval)));
	//Take the sign so that we end up with either 0 or 1
	retval  = int(sign(float(retval)));
    return retval;
}

void main()
{
    gl_FragColor = v_vColour * texture2D( gm_BaseTexture, v_vTexcoord );
	//Loop our screen position between 0 and 3
    int xPos = int(mod(v_vPosition.x,4.0));
	int yPos = int(mod(v_vPosition.y,4.0));
	
	int dith = patCalc(gl_FragColor.a, xPos, yPos);
	
    gl_FragColor.a = float(dith) * sign(gl_FragColor.a);
}