// @description Teleporting functionality

// Get the current room index
var currentRoom = room;

// Store the character's position
global.char_x = obj_player.x;
global.char_y = obj_player.y;
	
// Check the current room index and switch to the other room
if (currentRoom == rm_level1_ice) && (global.portal_points > 0)
{
    room_goto(rm_level1_liquid);
	global.portal_points -= global.portal_points;
}

else if (currentRoom == rm_level1_liquid) && (global.portal_points > 0)
{
    room_goto(rm_level1_ice);
	global.portal_points -= global.portal_points;
}



