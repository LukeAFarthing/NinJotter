/// @description Insert description here
// You can write your code in this editor

//Walking

if (keyboard_check(vk_right) and (!instance_place(x+112,y-sprite_height/2,obj_block))) {
	sprite_index = spr_player_walk;
	x += hsp;
	image_xscale = 1;
}
else if(keyboard_check(vk_left)and (!instance_place(x-112,y-sprite_height/2,obj_block))){
	sprite_index = spr_player_walk;
	x -= hsp;
	image_xscale = -1;
}
else{
	sprite_index = spr_player;
}


// Jumping 
if(keyboard_check(vk_up)){
	if(instance_place(x,y+1,obj_block))
		vspeed = jump_height;
}

if(instance_place(x,y+1,obj_block)){
		gravity = 0;
}else {
		gravity = 0.5;
}

// Limiting  the vspeed 

if(vspeed>=12)
	vspeed = 12;

if (hp <= 0){
	game_restart()
}
