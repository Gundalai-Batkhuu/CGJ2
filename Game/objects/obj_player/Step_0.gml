/// @description Step of the player object
// You can write your code in this editor

// Set the player's movement speed
var moveSpeed = 5;

// Horizontal movement
var moveInput = keyboard_check(vk_right) - keyboard_check(vk_left);
x += moveInput * moveSpeed;

// Set image_xscale to mirror the player sprite if moving left
if (moveInput < 0)
    image_xscale = -1;
else if (moveInput > 0)
    image_xscale = 1;
	
// Vertical movement
moveInput = keyboard_check(vk_down) - keyboard_check(vk_up);
y += moveInput * moveSpeed;


move_wrap(true, true, 0)

if mouse_check_button_pressed(mb_left)
{
        instance_create_layer(x, y, "Instances", obj_bullet)
}


