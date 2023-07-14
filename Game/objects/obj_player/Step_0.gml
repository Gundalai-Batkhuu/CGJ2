// Horizontal movement
var _move_input = keyboard_check(vk_right) - keyboard_check(vk_left);
var _key_jump = keyboard_check(vk_space);
var _is_jumping = false;

vsp = vsp + grv;
// Store previous horizontal movement
var _prev_move_input = 0;

// Check if the player is on the ground or a platform
var _on_platform = place_meeting(x, y+1, obj_platform);

// Check for collision with platform below
var _is_colliding_with_platform_vertically = place_meeting(x, y + vsp, obj_platform);

// Check for collision with platform horizontally
var _is_colliding_with_platform_horizontally = place_meeting(x + hsp, y, obj_platform);

// Apply horizontal movement
hsp = _move_input * walkspd;

// Check for wall collision
if (_is_colliding_with_platform_horizontally)
{
	while(!place_meeting(x+sign(hsp),y,obj_platform))
	{
		x += sign(hsp);	
		_is_jumping = true;
	}
	hsp = 0;
}

// Apply vertical movement and handle jump
if (_is_colliding_with_platform_vertically)
{
	_is_jumping = false;
	
	while(!place_meeting(x, y+sign(vsp), obj_platform))
	{
		y += sign(vsp);	
	}
	vsp = 0;
}

if (_on_platform) && (_key_jump)
{
	vsp = -7;
	_is_jumping = true;
	_prev_move_input = hsp;
}

x += hsp
y += vsp

// Set image_xscale to mirror the player sprite if moving horizontally
if (_move_input < 0)
    image_xscale = -1;
else if (_move_input > 0)
    image_xscale = 1;

move_wrap(false, false, 0)

if mouse_check_button_pressed(mb_left)
{
    instance_create_layer(x, y, "Instances", obj_bullet)
}

if (hp == 0){
	// Handle player death	
}


