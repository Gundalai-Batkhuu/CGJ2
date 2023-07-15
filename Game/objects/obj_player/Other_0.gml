/// @description Insert description here
// You can write your code in this editor

if (obj_player.hp > 0)
{	
	obj_player.hp -= 1;
	// Set the player's position to the initial position
    obj_player.x = initial_x; // Replace "initial_x" with the desired initial x-coordinate
    obj_player.y = initial_y; // Replace "initial_y" with the desired initial y-coordinate
    
    // Restart the current room
    room_restart();
}
else
{
	game_restart();
}
