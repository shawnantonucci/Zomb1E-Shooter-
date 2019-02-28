if global.screenshake = true
{
	camera_set_view_angle(view_camera[0],random_range(-0.5,0.5));
} else {
	camera_set_view_angle(view_camera[0],0);
}