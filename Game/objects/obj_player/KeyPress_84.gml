// @description Teleporting functionality

// Get the current room index
var currentRoom = room;

// Store the character's position
global.char_x = obj_player.x;
global.char_y = obj_player.y;


if (obj_player.mana > 0) {
  // Check the current room index and switch to the other room
  switch (currentRoom) {
    case rm_level1_ice:
      mana -= 1;
	  audio_pause_sound(snd_water);
      room_goto(rm_level1_liquid);
      break;
      
    case rm_level1_liquid:
      mana -= 1;
	  audio_pause_sound(snd_water);
      room_goto(rm_level1_ice);
      break;
	 
	case rm_level2_ice:
      mana -= 1;
	  audio_pause_sound(snd_water);
      room_goto(rm_level2_liquid);
      break;
      
    case rm_level2_liquid:
      mana -= 1;
	  audio_pause_sound(snd_water);
      room_goto(rm_level2_ice);
      break;
  }
}





