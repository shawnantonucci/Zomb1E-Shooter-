/// @description Execute the state

switch (state) {
	#region Zombie Idle
	case zombie.idle:
		image_index = spr_zombie_cop_down;
		if (instance_exists(obj_player)) {
			var dis = point_distance(x, y, obj_player.x, obj_player.y);
			if (dis < sight) {
				state = zombie.chase;
			}
		}
	break;
	#endregion
	#region Zombie Chase
	case zombie.chase:
		if (instance_exists(obj_player)) {
			
		var dis = point_distance(x, y, obj_player.x, obj_player.y);
		if (dis < close) {
			speed = 0;
			if !shoot
			{
				instance_create_depth(x,y,0,obj_enemy_bullet);
				alarm[1] = 60;
				shoot = true;
			}
		}
		
		direction = point_direction(x, y, obj_player.x, obj_player.y);
			
		speed = 1.5;
			
		if (direction < 320 and direction > 210)
		{
			sprite_index = spr_zombie_cop_down;
		}

		if (direction > 0 and direction < 60 or direction < 360 and direction > 320) 
		{
			sprite_index = spr_zombie_cop_right;
		}

		if (direction > 150 and direction < 210) 
		{
			sprite_index = spr_zombie_cop_left;
		}

		if (direction < 150 and direction > 60)
		{
			sprite_index = spr_zombie_cop_up;
		}


		if (xspeed != 0) {
			image_xscale = sign(xspeed);
		}
		
		move(obj_solid);
	}
		
	depth = -y;
	
	break;
	#endregion
}

if hp <= 0
{
	global.kills += 1;
	instance_create_depth(x,y,0,choose(obj_ammo_box,obj_health_box,obj_weapon_box));
	instance_create_depth(x,y,0,obj_explosion);
	instance_destroy();
}
