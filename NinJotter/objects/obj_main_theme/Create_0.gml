/// @description Insert description here
// You can write your code in this editor

if (!audio_is_playing(snd_main_theme)){
	audio_play_sound(snd_main_theme, 1000, true);
}