function storySteps() {
  if(live_call()) return live_result;
  switch (global.storyStep) {
    case 0:
	  setBackground(spriteLeft);
	  setClickerImage(chapterEnd, room_width/2, room_height/2, 0.5, 0.5);
	  global.drawSprite[R] = false;
	  global.drawSprite[L] = false;
	  global.drawBorder = false;
      break;
    case 1:
	  setBackground("kill");

      stageScript("kill","stretchBanner", "%Welcome%", bun, 0 - 100, 0,  1, 0.5, bun, room_width + 100, 0, 1, 0);

	  break;
    case 2:
	  strobeController.drawStrobe = true;
	  setBorder(border13);
	  global.drawBorder = true;
	  setBackground("miku_drowns.mp4");
      stageScript(L,"stretchBanner", "#bzzzzt#", "previous", "previous", "previous", "flicker", 0.5, "previous", "previous", "previous", 100, 0);
      break;
	case 3:
	  strobeController.drawStrobe = false;
	  border.borderSpeed = 0.5
      stageScript(R,"stretchBanner", "#bzzzzzz#zzzzzzz%zzzzzt%", "previous", "previous", "previous", 100, 0, "previous", "previous", "previous", 100, 1);
      break;
	case 4:
	  strobeController.drawStrobe = false;
	  border.borderSpeed = 0.5
      stageScript(L,"stretchBanner", "LOL!", "previous", "previous", "previous", 100, 0.25, "previous", "previous", "previous", 100, 1);
      break;
    case 5:
      stageScript("kill","stretchBanner", "wow!", "previous", "previous", "previous", 100, 1, "previous", "previous", "previous", 100, 0);
      break;
	case 6:
	  setBackground(chapterEnd);
      stageScript("both","stretchBanner", "thats all &folks......&", "previous", "previous", "previous", 1, 1, "previous", "previous", "previous", 100, 0.5);

	  break;
	 case 7:
	 show_debug_message(global.activeBanner)
	 setBackground(spriteLeft);
     stageScript("trueKill","choice", "thats all &folks......&", "previous", "previous", "previous", 1, 1, "previous", "previous", "previous", 100, 0.5);
	 createChoice("HELTER", 200, 200, 2, 1, "SKELTER", 600, 200, 3, 1) 
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
	 show_debug_message(global.activeBanner)
     stageScript("trueKill","stretchBanner", "getting this to work", "previous", "previous", "previous", 1, 1, "previous", "previous", "previous", 100, 0.5);
	  break;
	 	 case 10:
	 show_debug_message(global.activeBanner)
     stageScript("trueKill","stretchBanner", "was a #fucking#", "previous", "previous", "previous", 1, 1, "previous", "previous", "previous", 100, 0.5);
	  break;
	 	 case 11:
	 show_debug_message(global.activeBanner)
     stageScript("trueKill","stretchBanner", "%nightmare%", "previous", "previous", "previous", 1, 1, "previous", "previous", "previous", 100, 0.5);
	  break;
    default:
      break;
  }
}