if instance_exists(obj_player)
{
	x += obj_player.x-x;
	y += obj_player.y-y;
}

//fullscreen/windowed

if keyboard_check_pressed(vk_f10)
{
	if window_get_fullscreen()
	{
		window_set_fullscreen(false);
	} else {
		window_set_fullscreen(true);
	}
}