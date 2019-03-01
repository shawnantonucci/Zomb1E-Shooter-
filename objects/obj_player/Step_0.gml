//our keyboards or buttons
left = keyboard_check(ord("A"));
right = keyboard_check(ord("D"));
up = keyboard_check(ord("W"));
down = keyboard_check(ord("S"));
pickup = keyboard_check_pressed(ord("E"));
run = keyboard_check(vk_shift);

//xaxis and yaxis
xaxis = (right - left);
yaxis = (down - up);

direction = point_direction(0,0,xaxis,yaxis);

//Get the length
if (xaxis == 0 and yaxis == 0)
{
	len = 0;
}	else {
	len = spd;
}

//x += hspd;
//y += vspd;

xspeed = lengthdir_x(len, direction)
yspeed = lengthdir_y(len, direction)

move(obj_solid);

//Animations

if left or right or up or down
{
	image_speed = 0.5;
	image_index = image_index[1,2];
} else {
	image_speed = 0;
	image_index = 0;
}

//point at mouse position
direction = point_direction(x,y,mouse_x,mouse_y);
/*
if direction > 90 and direction < 269
{
	image_xscale = -1;
} else {
	image_xscale = 1;
}
*/
if (direction < 320 and direction > 210)
{
	sprite_index = spr_player_down;
}

if (direction > 0 and direction < 60 or direction < 360 and direction > 320) 
{
	sprite_index = spr_player_right;
}

if (direction > 150 and direction < 210) 
{
	sprite_index = spr_player_left;
}

if (direction < 150 and direction > 60)
{
	sprite_index = spr_player_up;
}


//z-axis position
depth = -y;

if global.hp <= 0
{
	room_restart();
}
//running and stamina
if run and global.stamina > 0
{
	spd = 7;
	global.stamina -= 1;
} else {
	spd = 4;
}
//control stamina
if global.stamina >= 100
{
	global.stamina = 100;
} else {
	global.stamina += 0.5;
}

if global.hp >= 100
{
	global.hp = 100;
}

if global.ammo >= 500
{
	global.ammo = 500;
}


move(obj_solid);




