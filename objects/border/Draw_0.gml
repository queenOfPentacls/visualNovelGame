/// @description Insert description here
// You can write your code in this editor
/// @description Insert description here
// You can write your code in this editor
/// @description Insert description here
// You can write your code in this editor
/// @description Insert description here
// You can write your code in this editor
// Define an easing function to slow down the animation
    var easing = border.borderSpeed;

// Draw the border
if (global.drawBorder) {
	
	
	// Set the shader
	shader_set(shdr_dynaDither);
	
    // Check if the alpha value is within the desired range
    if (image_alpha <= 0.25) {
        border.down = true;
        image_alpha = 0.25;
        border.animBorder = true;
    } else if (image_alpha >= 1) {
        border.down = false;
        image_alpha = 1;
        border.animBorder = false;
    }

    // Set the target alpha based on the animation state
    var target_alpha;
    if (border.animBorder) {
        target_alpha = 1;
    } else {
        target_alpha = 0.25;
    }

    // Calculate the remaining distance to the target value
    var remaining_distance = abs(target_alpha - image_alpha);

    // Adjust the easing value based on the remaining distance
    if (remaining_distance < 0.1) {
        easing = border.borderSpeed * 2;
    } else if (remaining_distance < 0.2) {
        easing = border.borderSpeed * 1.25;
    }

    // Use the easing function to slow down the animation
    var diff = target_alpha - image_alpha;
    image_alpha += diff * easing;

    // Draw the border with the new alpha value
    draw_sprite_stretched_ext(global.setBorder, -1, camera_get_view_x(view_camera[0]), camera_get_view_y(view_camera[0]), camera_get_view_width(view_camera[0]), camera_get_view_height(view_camera[0]) + 10, c_white, image_alpha);

	shader_reset();
}

