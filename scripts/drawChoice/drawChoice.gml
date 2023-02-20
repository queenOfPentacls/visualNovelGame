function drawChoice(choice, iStep, choiceX, choiceY, choiceXScale, choiceYScale){
    draw_sprite_ext(pink, -1, choiceX, choiceY, choiceXScale, choiceYScale, 0, c_white, 1);
    
    var spriteWidth = sprite_get_width(pink) * choiceXScale;
    var spriteHeight = sprite_get_height(pink) * choiceYScale;
    
    var collisionResult = collision_rectangle(
        choiceX - spriteWidth / 2,
        choiceY - spriteHeight / 2,
        choiceX + spriteWidth / 2,
        choiceY + spriteHeight / 2,
        clicker,
        false,
        false
    );
    
    if (collisionResult) {
        show_debug_message("you found me!!");
    }
}
