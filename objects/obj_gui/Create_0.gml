/// @description Initialize some variables

hp = 3;
max_hp = 3;

display_set_gui_size(camera_get_view_width(view_camera[0]), camera_get_view_height(view_camera[0]));

//Start the music
audio_play_sound(snd_music, 10, false);

//Get rid of cursor
window_set_cursor(cr_none);

//Randomize it up
randomize();