/// @description Insert description here
// You can write your code in this editor

if (hp <= 0){
	game_restart()
}

if (canattack == true) {
	//Walking
	if (keyboard_check(vk_right) and (!instance_place(x+112,y-sprite_height/2,obj_block))) {
		sprite_index = spr_player_walk;
		x += hsp;
		image_xscale = 1;
	}else if(keyboard_check(vk_left)and (!instance_place(x-112,y-sprite_height/2,obj_block))) {
		sprite_index = spr_player_walk;
		x -= hsp;
		image_xscale = -1;
	}else {
		sprite_index = spr_player;}
		
	//Sprinting
	if(keyboard_check(vk_shift)){
		if (keyboard_check(vk_right) and (!instance_place(x+112,y-sprite_height/2,obj_block))) {
		sprite_index = spr_player_walk;
		x += sprint;
		image_xscale = 1;
	}else if(keyboard_check(vk_left)and (!instance_place(x-112,y-sprite_height/2,obj_block))) {
		sprite_index = spr_player_walk;
		x -= sprint;
		image_xscale = -1;
	}else {
		sprite_index = spr_player;}

	
	}
	


	// Jumping 
	if(keyboard_check(vk_up)){
		if(instance_place(x,y+1,obj_block))
			vspeed = jump_height;
	}

	if(instance_place(x,y+1,obj_block)) {
			gravity = 0;
	}
	else {
			gravity = 1;
	}

	// Limiting  the vspeed 
	if(vspeed >= 12) {
		vspeed = 12;
	}

	// Attacking
	if (keyboard_check_pressed(ord("Z"))) {
		instance_create_layer(x + (400 * image_xscale), y, "Instances", obj_player_attack)
		canattack = false;
		alarm[1] = obj_player_attack.attackduration;
		sprite_index = spr_player_twitch;
	}
}

else {
	hspeed = 0;
	vspeed = 0;
}

