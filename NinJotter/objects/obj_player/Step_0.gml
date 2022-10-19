/// @description Insert description here
// You can write your code in this editor

if (hp <= 0){
	room_restart()
}

if (canattack == true) {
	//Walking
	if (keyboard_check(vk_right) and (!instance_place(x+100,y,obj_block))) {
		sprite_index = spr_player_walk;
		x += hsp;
		image_xscale = 1;
		
		//image_speed = 10;
	}else if(keyboard_check(vk_left)and (!instance_place(x-100,y,obj_block))) {
		sprite_index = spr_player_walk;
		x -= hsp;
		image_xscale = -1;
		
		//image_speed = 10;
	}else {
		sprite_index = spr_player;
		//image_speed = 10;
	}
		
	//Sprinting
	if(keyboard_check(vk_shift)){
		
		if (keyboard_check(vk_right) and (!instance_place(x+100,y,obj_block))) {
			sprite_index = spr_player_run;
			x += sprint;
			image_xscale = 1;
			
			add = current_time/2000;
			//image_speed = 20;
		}else if(keyboard_check(vk_left)and (!instance_place(x-100,y,obj_block))) {
			sprite_index = spr_player_run;
			x -= sprint;
			image_xscale = -1;
			
			add = current_time/2000;
			//image_speed = 20;
		}else {
			sprite_index = spr_player;
			//image_speed = 10;
		}
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
			gravity = 1.2;
	}

	// Limiting  the vspeed 
	if(vspeed >= 50) {
		vspeed = 50;
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

// Cheats
if (keyboard_check_pressed(ord("A"))) {
	global.saved_otters = 4;
}
