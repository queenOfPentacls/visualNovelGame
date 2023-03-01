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
	  global.bannerSound = "horn"
	  stopAlarm = true
	  global.audioTrack1 = true
	  global.audioTrack2 = true
	  audio_play_sound(rain, 0, 1, 1)
	  setBackground(black,0, 0)
	  obj_collisionBanner.nextFlicker = true;
      stageScript("kill","stretchBanner", "[CUT HERE]", empty, 0 - 100, 0,  0, 0.5, empty, room_width + 100, 0, 0, 0);

	  break;
    case 2:
	  global.bannerSound = "piano"
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
	  global.flickerTime = 80;
	  obj_collisionBanner.nextFlicker = true;
	  background.image_speed = 0.25;
	  setBackground(op, 10, 18);
      stageScript("trueKill","stretchBanner", "sulfur &fills my lungs&", "previous", "previous", "previous", 100, 1, "previous", "previous", "previous", 100, 0);
      break;
	case 6:
     setBackground(dogs, 0, 4);
      stageScript("kill","stretchBanner", "#GNASHING TEETH#", "previous", "previous", "previous", 100, 1, "previous", "previous", "previous", 100, 0);

	  break;
	 case 7:
	 obj_collisionBanner.nextFlicker = false;
	 setBackground(vulture, 0, 2);
      stageScript("kill","stretchBanner", "begging for death", "previous", "previous", "previous", 100, 1, "previous", "previous", "previous", 100, 0);

	  break;
	 	case 8:
	stageScript("trueKill","stretchbanner", "but your body persists", "kill", "previous", "previous", 1, 1, "kill", "previous", "previous", 100, 0.5);
	  break;
	 	 case 9:

     stageScript("trueKill","stretchBanner", "and just when it becomes routine...", "previous", "previous", "previous", 1, 1, "previous", "previous", "previous", 100, 0.5);
	  break;
	 	 case 10:
	 global.voxPitch = 0.40
     stageScript("trueKill","stretchBanner", "%It starts to hurt worse.%", "previous", "previous", "previous", 1, 1, "previous", "previous", "previous", 100, 0.5);
	  break;
	 	 case 11:
	 global.track1 = summer
	 global.track2 = electronicGate
	 strobeController.drawStrobe = false;
	 global.bannerSound = "kill"
     stageScript("trueKill","stretchBanner", "%I felt the same way.%", "previous", "previous", "previous", 1, 1, "previous", "previous", "previous", 100, 0.5);
	 break;
	  	 case 12:
	global.activeBanner="kill"
    background.image_speed = 0.02
    background.loop = 2;
    setBackground(gate, 0, 28);
    audio_stop_sound(rain)
    global.voxPitch = 1.5
    global.audioTrack2 = false
	audio_stop_sound(global.audioTrack2)
	 break;
	  	 case 13:
	  audio_stop_sound(global.audioTrack2)
	  background.loop = 0;
      obj_collisionBanner.nextFlicker = true;
	  global.flickerTime = 220;
	  stageScript("kill","stretchBanner", "But we're not in hell anymore.", empty, 0 - 100, 0,  0, 0.5, empty, room_width + 100, 0, 0, 0);
	  break;
	  	 case 14:
		
		global.voxPitch = 1.5
     stageScript("kill","stretchBanner", "..........", "previous", "previous", "previous", 1, 1, "previous", "previous", "previous", 100, 0.5);
	  break;
    default:
      break;
  }
}