/// @description Begin the game

if (keyboard_check_pressed(vk_space) and room == room_title) {
	room_goto(room_play);
	//audio_stop_sound(a_title);
	audio_play_sound(snd_music, 10, true);
}

//Change music if on the main screen for too long
//if (!audio_is_playing(a_title) and !audio_is_playing(a_cave)) {
//	audio_play_sound(a_cave, 10, true);
//}