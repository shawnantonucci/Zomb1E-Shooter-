
if (room == room_title) {
	draw_set_halign(fa_center);
	draw_set_font(font_title);
	draw_text_colour(room_width / 2 + 4, 40 + 4, "Z0mBiE", c_black, c_black, c_black, c_black, 1);
	draw_text_colour(room_width / 2, 40, "Z0mBiE", c_red, c_red, c_red, c_red, 1);
	
	draw_set_font(font_game);
	draw_text_colour(room_width / 2 + 1, room_height - 48 + 1, "Press space to play", c_black, c_black, c_black, c_black, 0.7);
	draw_text_colour(room_width / 2, room_height - 48, "Press space to play", c_white, c_white, c_white, c_white, 1);
}

if (room != room_title) {
	playerhp = (global.hp/global.max_hp) * 100;
	playerstamina = (global.stamina/global.max_stamina) * 100;
	//draw players healthbar
	draw_healthbar(60,40,168,60,playerhp,c_black,c_red,c_red,0,true,true);
	draw_sprite(spr_health_bar,spr_health_bar,60,40);
	//draw ammobar
	draw_sprite(spr_ammo_bar,spr_ammo_bar,1180,40);
	//draw a font and ammo amount
	draw_set_font(font_game);
	draw_set_color(c_black);
	draw_text(1203,39,global.ammo);
	//draw players stamina
	draw_healthbar(60,90,168,110,playerstamina,c_black,c_aqua,c_aqua,0,true,true);
	draw_sprite(spr_stamina_bar,spr_stamina_bar,60,90);
	//draw kills
	draw_text(600,39,"Kills: "+string(global.kills));
}