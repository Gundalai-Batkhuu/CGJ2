/// @description Insert description here
// You can write your code in this editor

if (room == rm_level1_liquid) && (obj_player.has_key == true)
{	
	//easy_transition(SequenceTemplate2, 1, 0,320, 180, -1, function(){room_goto(rm_level2_liquid)} )
	room_goto(rm_level2_liquid);
	obj_player.has_key = false;
}


