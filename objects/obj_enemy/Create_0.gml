hp = 20;

//speed
spd = 1.5;

xspeed = 0;
yspeed = 0;

//check if we are shooting
shoot = false;

enum zombie {
	idle,
	chase
}

state = zombie.idle;
sight = 1000;
close = 50;