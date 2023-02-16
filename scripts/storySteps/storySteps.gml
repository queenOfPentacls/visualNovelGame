// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function storySteps() {
  switch (global.storyStep) {
    case 0:
	  setBackground(spriteLeft);
	  setClickerImage(chapterEnd, room_width/2, room_height/2, 0.5, 0.5);
	  global.drawRSprite = false;
	  global.drawLSprite = false;
      break;
    case 1:
	  setBackground("kill");
      stageScript("L","stretchBanner", "Welcome", bun, 0 - 100, 0,  1, 0.5, bun, room_width + 100, 0, 1, 0);

	  break;
    case 2:
      stageScript("L","stretchBanner", "bzzzzt", "previous", "previous", "previous", "flicker", 0.5, "previous", "previous", "previous", 100, 0);
      break;
	case 3:
      stageScript("R","stretchBanner", "bzzzzzzzzzzzzzzzzzzzzzt", "previous", "previous", "previous", 100, 0, "previous", "previous", "previous", 100, 1);
      break;
    case 4:
      stageScript("kill","stretchBanner", "wow!", "previous", "previous", "previous", 100, 1, "previous", "previous", "previous", 100, 0);
      break;
	case 5:
	  setBackground(chapterEnd);
      stageScript("both","stretchBanner", "thats all folks...", "previous", "previous", "previous", 1, 1, "previous", "previous", "previous", 100, 0.5);

	  break;
	case 6:
      stageScript("trueKill","kill", "thats all folks...", "previous", "previous", "previous", 1, 1, "previous", "previous", "previous", 100, 0.5);

	  break;
    default:
      break;
  }
}