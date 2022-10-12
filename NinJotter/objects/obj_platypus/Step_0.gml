/// @description Insert description here
// You can write your code in this editor

// Keeps track of most current horizontal speed
if (hspeed != 0) {
	recent_hspeed = hspeed;
	recent_imagespeed = image_speed;
}
if (canattack == false) {
	hspeed = 0;
	image_speed = 0;
}
else {
	hspeed = recent_hspeed;
	image_speed = recent_imagespeed;
}
// If the player is close enough and canattack is true, stop and attack
if (abs(obj_player.x - x) <= sense_distance and abs(obj_player.y - y) <= sense_distance and canattack == true){
	// Create an attack object half the sense distance in front of the enemy
	instance_create_layer(x + ((sense_distance / 2) * image_xscale), y, "Instances", obj_enemy_attack);
	canattack = false;
	alarm[0] = obj_enemy_attack.attackduration;
}