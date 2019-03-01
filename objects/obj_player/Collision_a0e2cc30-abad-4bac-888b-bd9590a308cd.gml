
if place_meeting(x,y,obj_weapon_box)
{
	global.weapon_pickup = true;
	
	if pickup
	{
		global.weapon = choose(1,2);
		
		with (other)
		{
			instance_destroy();
		}
	}
	alarm[1] = 3;
}