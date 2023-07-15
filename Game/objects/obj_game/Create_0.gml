/// @description Insert description here
// You can write your code in this editor

global.portal_points = 0;
global.char_x = obj_player.x;
global.char_y = obj_player.y;
cooldown = 0

if (!audio_is_playing(snd_bg_music)){
	audio_play_sound(snd_bg_music, 2, true);
}
audio_play_sound(snd_water, 1, true, 0.5);


