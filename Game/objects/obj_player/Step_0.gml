// Horizontal movement
var moveInput = keyboard_check(vk_right) - keyboard_check(vk_left);
var key_jump = keyboard_check(vk_space);

hsp = moveInput * walkspd;
vsp = vsp + grv;

if (place_meeting(x + hsp,y, obj_wall)){
	
	while(!place_meeting(x+sign(hsp),y,obj_wall)){
		x += sign(hsp);	
	}
	hsp = 0;
}

if (place_meeting(x,y+vsp,obj_wall)){
	
	while(!place_meeting(x,y+sign(vsp),obj_wall)){
		y += sign(vsp);	
	}
	vsp = 0;
}

if ((place_meeting(x,y+1,obj_wall)) && (key_jump)){
	vsp = -7
}

x += hsp
y += vsp


move_wrap(false, false, 0)

if mouse_check_button_pressed(mb_left)
{
        instance_create_layer(x, y, "Instances", obj_bullet)
}

if (hp == 0){
		
}


