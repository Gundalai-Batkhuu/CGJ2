// @description Teleporting functionality

// Get the current room index
var currentRoom = room;

// Store the character's position
global.char_x = obj_player.x;
global.char_y = obj_player.y;
	
// Check the current room index and switch to the other room
if (currentRoom == rm_level1_ice) && (obj_player.mana > 0)
{
    room_goto(rm_level1_liquid);
	obj_player.mana = obj_player.mana - 1;
}

else if (currentRoom == rm_level1_liquid) && (obj_player.mana > 0)
{
    room_goto(rm_level1_ice);
	obj_player.mana = obj_player.mana - 1;
}



