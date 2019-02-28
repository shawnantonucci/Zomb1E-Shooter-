shoot_button = mouse_check_button(mb_left);

sprite_index = global.weaponArray[global.weapon,1];

if !shoot and shoot_button and global.ammo > 0
{
	global.ammo -= 1;
	audio_play_sound(snd_shoot,1,false);
	instance_create_depth(x+lengthdir_x(32,direction),y+lengthdir_y(32,direction),0,global.weaponArray[global.weapon,3]);
	alarm[0] = global.weaponArray[global.weapon,2];
	global.screenshake = true;
	alarm[1] = 8;
	shoot = true;
}

//Point at mouse direction
image_angle = point_direction(x,y,mouse_x,mouse_y);

direction = image_angle;

if direction > 90 and direction < 270
{
	image_yscale = -1;
} else {
	image_yscale = 1;
}

//check if weapon is behind or in front of player
if direction < 360 and direction > 180
{
	depth = -y-5;
} else {
	depth = -y+5;
}