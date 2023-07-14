// Horizontal movement
var moveInput = keyboard_check(vk_right) - keyboard_check(vk_left);
var key_jump = keyboard_check(vk_space);

hsp = moveInput * walkspd;
vsp = vsp + grv;

if (place_meeting(x + hsp,y,oWall)){
	
	while(!place_meeting(x+sign(hsp),y,oWall)){
		x += sign(hsp);	
	}
	hsp = 0;
}

if (place_meeting(x,y+vsp,oWall)){
	
	while(!place_meeting(x,y+sign(vsp),oWall)){
		y += sign(vsp);	
	}
	vsp = 0;
}

if ((place_meeting(x,y+1,oWall)) && (key_jump)){
	vsp = -7
}

x += hsp
y += vsp


move_wrap(false, false, 0)

if mouse_check_button_pressed(mb_left)
{
        instance_create_layer(x, y, "Instances", obj_bullet)
}


