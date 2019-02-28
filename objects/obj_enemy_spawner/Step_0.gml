if create = false
{
	instance_create_depth(choose(0,room_width),random_range(0,room_height),0,obj_enemy);
	alarm[1] = create_speed;
	//create speed will increase
	create_speed -= 5;
	create = true;
}

//limit for our enemy spawner

if create_speed <= 30
{
	create_speed = 30;
}