/// @description Insert description here
// You can write your code in this editor


if (instance_exists(obj_player)){
	
	draw_healthbar(8,8,1000,150,obj_player.hp,c_black,c_red,c_lime,0,true,true);
	draw_set_color(c_green)
	draw_set_font(fnt_hp)
	draw_text(8,150,"HP: "+string(obj_player.hp));
}
