if direction > 45 and direction <= 135
    sprite_index = spr_zombie_cop_up;
else if direction > 135 and direction <= 225 
    sprite_index = spr_zombie_cop_left;
else if direction > 225 and direction <= 315
    sprite_index = spr_zombie_cop_down;
else if sprite_index != spr_zombie_cop_right
    sprite_index = spr_zombie_cop_right;
	
	/// Dodgy Collision!
if place_meeting(x+hspeed, y, obj_solid) { x = xprevious; } // Right Collision
if place_meeting(x-hspeed, y, obj_solid) { x = xprevious;  } // Left Collision
if place_meeting(x, y+vspeed, obj_solid) { y = yprevious; } // Bottom Collision
if place_meeting(x, y-vspeed, obj_solid) { y = yprevious;  } // Top Collision