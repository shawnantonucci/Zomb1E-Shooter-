
direction = 0;
//speed
spd = 0;
//axis position
xaxis = 0;
yaxis = 0;
//horizontal and vertical speed
xspeed = 0;
yspeed = 0;
//length for our calculations
len = 0;
//animation set to 0 which is off
image_speed = 0;

//create our weapon
x_offset = 0;
y_offset = 0;

my_weapon = instance_create_depth(x,y,0,obj_weapon);

scr_weapons();
global.weapon = 0;

//check if we can pick up a weapon box
global.weapon_pickup = false;
//our health
global.hp = 100;
global.max_hp = 100;
//our ammo
global.ammo = 100;
//stamina
global.stamina = 100;
global.max_stamina = 100;
//kills
global.kills = 0;