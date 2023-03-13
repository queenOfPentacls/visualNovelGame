function storySteps() {
  if(live_call()) return live_result;
  switch (global.storyStep) {
	case -2:
	  setBackground(opcredits, 0, 4)
      break;
    case -1:
	  setBackground(opcredits, 4, 5)
      break;
    case 0:
	  setBackground(opcredits, 5, 7)
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
    background.image_speed = 0.05
    background.loop = 2;
    setBackground(gate, 0, 24);
    global.voxPitch = 1.5
    global.audioTrack2 = false
	audio_stop_sound(global.audioTrack2)
	audio_stop_sound(rain)
	 break;
	  	 case 13:
	  audio_stop_sound(global.audioTrack2)
	  audio_stop_sound(electronicGate)
      setBackground(gateOpen, 0, 0);
	  background.loop = 0;
      obj_collisionBanner.nextFlicker = true;
	  global.flickerTime = 220;
	  global.spin = 1;
	  stageScript("kill","stretchBanner", "But we're not in #hell# anymore.", empty, 0 - 100, 0,  0, 0.5, empty, room_width + 100, 0, 0, 0);
	  break;
	  	 case 14:
		global.spin++
		global.voxPitch = 1.5
		shader_set(shdr_dynaDither);
		draw_sprite_ext(flower, -1, room_width/2, room_height/2, 5, 5, global.spin, c_white, 0.5)
		 global.track2 = river
		 global.audioTrack2 = true
     stageScript("kill","stretchBanner", "...", "previous", "previous", "previous", 1, 1, "previous", "previous", "previous", 100, 0.5);
	  break;
	  	 case 15:
		 shader_reset();
		background.image_speed = 0.25
		background.loop = 1;
		setBackground(tree, 0, 6);
		global.audioTrack2 = false
     stageScript("kill","stretchBanner", "....", "previous", "previous", "previous", 1, 1, "previous", "previous", "previous", 100, 0.5);
	  break;
	  	 case 16:
		background.image_speed = 0.25;
		setBackground(gun, 0, 3);
     stageScript("kill","stretchBanner", ".......", "previous", "previous", "previous", 1, 1, "previous", "previous", "previous", 100, 0.5);
	  break;
	  	 case 17:
	 global.voxPitch = 0.40;
	 global.track2 = opmix1;
	 global.audioTrack2 = true
     stageScript("kill","stretchBanner", "............yet it still #burns#", "previous", "previous", "previous", 1, 1, "previous", "previous", "previous", 100, 0.5);
	  break;
	  	 case 18:
	 global.voxPitch = 1.5;
	 global.audioPause = true;
     stageScript("kill","stretchBanner", "I can feel the sun,", "previous", "previous", "previous", 1, 1, "previous", "previous", "previous", 100, 0.5);
	  break;
	  	 case 19:
	 global.track2 = opmixcrazy;
	 global.audioPause = false;
     stageScript("kill","stretchBanner", "and the wet grass under my feet.", "previous", "previous", "previous", 1, 1, "previous", "previous", "previous", 100, 0.5);
	  break;
	  	 case 20:
	 	 global.voxPitch = 0.40
		 audio_stop_sound(opmix1)
		 global.track2 = opmix2;
		 setBackground(butterfly, 0, 6);
		 background.image_speed = 0.5;
     stageScript("kill","stretchBanner", "#THE AGONY REMAINS.#", "previous", "previous", "previous", 1, 1, "previous", "previous", "previous", 100, 0.5);
	  break;
	  	 case 21:
	 	 global.voxPitch = 1.5
		 audio_stop_sound(opmixcrazy)
		setBackground(gun, 0, 3);
		global.audioPause = true;
		background.image_speed = 0.25;
     stageScript("kill","stretchBanner", "&standing under a cloudless sky,&", "previous", "previous", "previous", 1, 1, "previous", "previous", "previous", 100, 0.5);
	  break;
	  	 case 22:
	 	 global.voxPitch = 1.5
		 audio_stop_sound(opmixcrazy)
		 global.track2 = opmixcrazy
		 global.audioPause = false;
     stageScript("kill","stretchBanner", "&and there is a light breeze&", "previous", "previous", "previous", 1, 1, "previous", "previous", "previous", 100, 0.5);
	  break;
	  	 case 23:
	 	 global.voxPitch = 0.4
		 audio_stop_sound(opmix2)
		 setBackground(butterfly, 0, 6);
		 global.audioPause = true;
		 obj_collisionBanner.nextFlicker = false;
		 background.image_speed = 0.5;
     stageScript("kill","stretchBanner", "%even here i am in hell.%", "previous", "previous", "previous", 1, 1, "previous", "previous", "previous", 100, 0.5);
	  break;
	  	 case 24:
		 global.track2 = opmix2
		 global.audioPause = false;
         stageScript("kill","stretchBanner", "%where ever i go is hell.%", "previous", "previous", "previous", 1, 1, "previous", "previous", "previous", 100, 0.5);
	     obj_collisionBanner.nextFlicker = true;
		 global.flickerTime = 100;
	  break;
	  	 case 25:
	 	 global.voxPitch = 1.5
		 audio_stop_sound(opmixcrazy)
		setBackground(gun, 0, 3);
		global.audioPause = true;
		obj_collisionBanner.nextFlicker = false;
		background.image_speed = 0.25;
     stageScript("kill","stretchBanner", "We've spent my whole life in hell,", "previous", "previous", "previous", 1, 1, "previous", "previous", "previous", 100, 0.5);
	  break;
	  	 case 26:
	 	 global.voxPitch = 1.5
		global.audioTrack1 = false;
     stageScript("kill","stretchBanner", "We're used to it.", "previous", "previous", "previous", 1, 1, "previous", "previous", "previous", 100, 0.5);
	  break;
	  	 case 27:
	 	 global.voxPitch = 1.5
		 audio_stop_sound(summer)
		 setBackground(chrysalis, 0, 13);
		 background.image_speed = 0.5;
     stageScript("kill","stretchBanner", "%'Prison is in your mind.'%", "previous", "previous", "previous", 1, 1, "previous", "previous", "previous", 100, 0.5);
	 break;
	 	 case 28:
     stageScript("kill","stretchBanner", "%'Can't you see I'm free?'%", "previous", "previous", "previous", 1, 1, "previous", "previous", "previous", 100, 0.5);
	  break;
	  	 case 29:
	 	 global.voxPitch = 0.4
		 setBackground(monarch, 0, 13);
		 background.image_speed = 0.5;
     stageScript("kill","stretchBanner", "#PRISON IS IN OUR#", empty, 1, 1, 1, 1, empty, 1, 1, 100, 0.5);
	  break;
	  	 case 30:
     stageScript("kill","stretchBanner", "#MONARCH MIND CONTROL PROGRAMMING.#", empty, 1, 1, 1, 1, empty, 1, 1, 100, 0.5);
	  break;
	  	 case 31:
		 background.image_speed = 0.25;
	     global.activeBanner="kill"
	 	 global.voxPitch = 1.5
		 setBackground(draw, 0, 14);
		 background.loop = 2;
	  break;
	  	 case 32:
		 stageScript("kill","stretchBanner", "&We killed the 60s.&", "previous", "previous", "previous", 1, 1, "previous", "previous", "previous", 100, 0.5);
		 setBackground(shots, 0, 8);
		 background.loop = 1;
		 background.image_speed = 0.075;
		 global.audioTrack3 = true;
		 global.track3 = iron;
		 global.audioPause = false;
	 break;
	  	 case 33:
	     audio_stop_sound(opmix2)
	  	 background.image_speed = 0.5;
		 global.activeBanner="kill"
		 setBackground(shots, 9, 49);
		 background.loop = 2;
		 global.audioTrack3 = false;
	  break;
	  	 case 34:
		 setBackground(inspect, 0, 33);
		 global.audioTrack3 = false;
		 if(background.image_index = 32){
			 global.storyStep++;
		 }
	     background.loop = 1;
	  break;
	  	 case 35:
		 setBackground(inspect, 31, 33);
		 background.loop = 1;
		 global.audioTrack3 = false;
		 stageScript("kill","stretchBanner", "#2050 should be easy!!#", "previous", "previous", "previous", 1, 1, "previous", "previous", "previous", 100, 0.5);
	  break;
	default:
      break;
  }
}