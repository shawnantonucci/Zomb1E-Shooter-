if instance_exists(obj_player)
{
	direction = point_direction(x,y,obj_player.x,obj_player.y);
	speed = 12;
} else {
	speed = 12
	direction = random_range(0,359);
}