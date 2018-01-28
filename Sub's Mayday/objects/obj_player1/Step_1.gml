/// @description Insert description here
// You can write your code in this editor
randomize();
if(!dead)
{
	player_movement(key_up,key_down,key_left,key_right,key_turn_clock,key_turn_counter);
	player_shoot(key_shoot,color);
	
	if keyboard_check_pressed(key_shoot) {
		
		beam = instance_create(x-lengthdir_x(sprite_width/1.2, image_angle - 180), y-lengthdir_y(sprite_width/1.2, image_angle - 180), obj_lol) 	
	
		beam.angle = image_angle - 90
	
		beam.x_spd = lengthdir_x(8, image_angle)
		beam.y_spd = lengthdir_y(8, image_angle)
		
		beam.colour = color
	}
}
else
{	
	player_summon_debree();
}

 