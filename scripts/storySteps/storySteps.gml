function storySteps() {
  if(live_call()) return live_result;
  switch (global.storyStep) {
	case -2:
	  setBackground(opcredits, 0, 4)
	  global.drawSprite[R] = false;
	  global.drawSprite[L] = false;
	  global.drawBorder = false;
      break;
    case -1:
	  setBackground(opcredits, 4, 5)
      break;
    case 0:
	  setBackground(opcredits, 6, 8)
      break;
    case 1:
	  stopAlarm = true
	  audio_play_sound(rain, 0, 1, 1)
	  setBackground(black,0, 0)
	  obj_collisionBanner.nextFlicker = true;
      stageScript("kill","stretchBanner", "[CUT HERE]", empty, 0 - 100, 0,  0, 0.5, empty, room_width + 100, 0, 0, 0);

	  break;
    case 2:
	  show_debug_message(obj_sprite.flicker)
	  obj_collisionBanner.nextFlicker = false;
	  background.image_speed = 0.15
	  strobeController.drawStrobe = true;
	  setBackground(op, 0, 9);
      stageScript("kill","stretchBanner", "&...I...Live...!....&", "previous", "previous", "previous", "flicker", 0.5, "previous", "previous", "previous", 100, 0);
      break;
	case 3:
	  strobeController.drawStrobe = false;
      stageScript("trueKill","stretchBanner", "&...33 years&", "previous", "previous", "previous", "flicker", 0, "previous", "previous", "previous", "flicker", 1);
      break;
	case 4:
      stageScript("trueKill","stretchBanner", "&..clutching brimstone walls&", "previous", "previous", "previous", 100, 0.25, "previous", "previous", "previous", 100, 1);
      break;
    case 5:
	  strobeController.drawStrobe = true;
	  background.image_speed = 0.25;
	  setBackground(op, 10, 18);
      stageScript("trueKill","stretchBanner", "%sulfur% fills my &lungs&", "previous", "previous", "previous", 100, 1, "previous", "previous", "previous", 100, 0);
      break;
	case 6:
	  setBorder("kill");
      stageScript("both","stretchBanner", "thats all &folks......&", "previous", "previous", "previous", 1, 1, "previous", "previous", "previous", 100, 0.5);

	  break;
	 case 7:
     stageScript("trueKill","choice", "thats all &folks......&", "kill", "previous", "previous", 1, 1, "kill", "previous", "previous", 100, 0.5);
	 createChoice("HELTER", 150, 200, 1,1, "SKELTER", room_width-150, 200, 1, 1) 
	  break;
	 	case 8:
	 	 if(global.innerStep ==  1){
	 stageScript("trueKill","stretchBanner", "beatles", "previous", "previous", "previous", 1, 1, "previous", "previous", "previous", 100, 0.5);
	 }
	 if(global.innerStep ==  2){
	 stageScript("trueKill","stretchBanner", "beach boys", "previous", "previous", "previous", 1, 1, "previous", "previous", "previous", 100, 0.5);
	 }
	  break;
	 	 case 9:
     stageScript("trueKill","stretchBanner", "getting this to work [in html5]", "previous", "previous", "previous", 1, 1, "previous", "previous", "previous", 100, 0.5);
	  break;
	 	 case 10:
     stageScript("trueKill","stretchBanner", "was a #fucking#", "previous", "previous", "previous", 1, 1, "previous", "previous", "previous", 100, 0.5);
	  break;
	 	 case 11:
     stageScript("trueKill","stretchBanner", "%nightmare%", "previous", "previous", "previous", 1, 1, "previous", "previous", "previous", 100, 0.5);
	  break;
    default:
      break;
  }
}