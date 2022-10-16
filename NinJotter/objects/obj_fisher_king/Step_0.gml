// Keeps track of most current horizontal speed
if (hspeed != 0) {
	recent_hspeed = hspeed;
	recent_imagespeed = image_speed;
}
if (canattack == false) {
	hspeed = 0;
	//image_speed = 0;
}
else {
	hspeed = recent_hspeed;
	image_speed = recent_imagespeed;
	sprite_index = spr_fisher_king_walking;
}
// If the player is close enough and canattack is true, stop and attack
if (abs(obj_player.x - x) <= sense_distance and abs(obj_player.y - y) <= sense_distance and canattack == true){
	// Create an attack object half the sense distance in front of the enemy
	
	attack_id = instance_create_layer(x + ((sense_distance / 2) * image_xscale), y + 200, "Instances", obj_enemy_attack);
	canattack = false;
	alarm[0] = obj_enemy_attack.attackduration
	
	// Here i tried to implement the kicking attack but it is not visible as the fisher's walk is not very different from the kicking ( the kicking blends into to walking animation)
	sprite_index = spr_fisher_king_kick;
	canattack = false;
	alarm[0] = 100;
}/*else{
	sprite_index = spr_fisher_king_walking;
}*/

//If the player is in ramge of the net the fisher_king throws the net
if (abs(obj_player.x - x) <= sense_distance_net  and abs(obj_player.x - x) >= sense_distance and abs(obj_player.y - y) <= sense_distance_net and abs(obj_player.y - y) >= sense_distance and canattack == true){
	// Create an attack object with the net only if the fihser king is look towards the player 

	if((obj_player.image_xscale==1 and image_xscale==-1) or (obj_player.image_xscale==-1 and image_xscale==1)){
		// Performing the net attack 1 chance out of 150 so it seems like the fisher king is not always throwing the net every time the player is in range
		if(irandom(150)==1){
			canattack = false;
			instance_create_layer(x,y,"Instances_1",obj_net);
			sprite_index = spr_fisher_king
			alarm[0] = 100;
		}
	}
	
}/*else{
	sprite_index = spr_fisher_king_walking;
}*/