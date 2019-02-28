//check if player exists
if instance_exists(obj_player)
{
	direction = point_direction(x,y,obj_player.x,obj_player.y);
	
	//check the distance to player
	if distance_to_point(obj_player.x,obj_player.y) > 200
	{
		move_towards_point(obj_player.x,obj_player.y,spd);
	} else {
		friction = 0.2;
		
		if !shoot
		{
			instance_create_depth(x,y,0,obj_enemy_bullet);
			alarm[1] = 60;
			shoot = true;
		}
	}
} else {
	speed = 0;
}
//enemy dies
if hp <= 0
{
	global.kills += 1;
	instance_create_depth(x,y,0,choose(obj_ammo_box,obj_health_box,obj_weapon_box));
	instance_create_depth(x,y,0,obj_explosion);
	instance_destroy();
}

depth = -y;