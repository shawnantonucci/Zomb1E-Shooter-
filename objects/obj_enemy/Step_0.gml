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
		
		direction = point_direction(x, y, obj_player.x, obj_player.y);
			
		speed = 1.5;
		
		//Collision
		


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