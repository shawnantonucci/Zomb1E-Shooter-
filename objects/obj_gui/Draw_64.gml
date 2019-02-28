//draw players healthbar
draw_healthbar(60,40,168,60,playerhp,c_black,c_red,c_red,0,true,true);
draw_sprite(spr_health_bar,spr_health_bar,60,40);
//draw ammobar
draw_sprite(spr_ammo_bar,spr_ammo_bar,1180,40);
//draw a font and ammo amount
draw_set_font(font_game);
draw_set_color(c_black);
draw_text(1190,40,global.ammo);
//draw players stamina
draw_healthbar(60,90,168,110,playerstamina,c_black,c_aqua,c_aqua,0,true,true);
draw_sprite(spr_stamina_bar,spr_stamina_bar,60,90);
//draw kills
draw_text(600,39,"Kills: "+string(global.kills));