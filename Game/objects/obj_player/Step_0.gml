// Horizontal movement
var _move_input = keyboard_check(vk_right) - keyboard_check(vk_left);
var _vert_input = keyboard_check(vk_up);
var _key_jump = keyboard_check(vk_space);

// Get horizontal movement speed
hsp = _move_input * walkspd;

// Get vertical movement speed
vsp = vsp + grv;

// Check if the player is on the ground or a platform
var _on_platform = place_meeting(x, y+1, obj_ground);
var _on_ice = place_meeting(x, y+1, obj_ice);

// Check for collision with platform below
var _is_colliding_with_platform_vertically = place_meeting(x, y + vsp, obj_ground);

// Check for collision with platform horizontally
var _is_colliding_with_platform_horizontally = place_meeting(x + hsp, y, obj_ground);

// Check for collision with ice horizontally
var _is_colliding_with_ice_vertically = place_meeting(x, y + vsp, obj_ice);

// Check for collision with platform horizontally
var _is_colliding_with_ice_horizontally = place_meeting(x + hsp, y, obj_ice);


if (!_is_colliding_with_platform_vertically && hsp == 0) hsp = p_hsp;

if _move_input != 0 {
	if(audio_is_playing(snd_footstep_stone_1) == false && footstep == 1 && _is_colliding_with_platform_vertically) {
	    audio_play_sound(snd_footstep_stone_1, 1, false);
		footstep = 0;
	}
	else if(audio_is_playing(snd_footstep_stone_1) == false && footstep == 0 && _is_colliding_with_platform_vertically){
		audio_play_sound(snd_footstep_stone_2, 1, false);
		footstep = 1;
	}
}

// Check for wall collision
if (_is_colliding_with_platform_horizontally)
{
	while(!place_meeting(x+sign(hsp),y,obj_ground))
	{
		x += sign(hsp);	
	}
	hsp = 0;
}


// Apply vertical movement and handle jump
if (_is_colliding_with_platform_vertically)
{
	
	while(!place_meeting(x, y+sign(vsp), obj_ground))
	{
		y += sign(vsp);	
	}
	vsp = 0;
} 

if (_is_colliding_with_ice_vertically)
{
	vsp = 0;
	
}


if (_on_platform || _on_ice) && (_key_jump)
{
	vsp = -7;
}

if (_is_colliding_with_ice_horizontally)
{
	hsp = 0;
	if _vert_input {
		vsp = -3;	
	}
}

p_hsp = hsp;
x += hsp;
y += vsp;

// Set image_xscale to mirror the player sprite if moving horizontally
if (_move_input < 0)
    image_xscale = -1;
else if (_move_input > 0)
    image_xscale = 1;


if (hp == 0){
	// Handle player death	
}


