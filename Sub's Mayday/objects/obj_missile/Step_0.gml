/// @description
dir = image_angle;
image_yscale = abs(dcos(image_angle));
if(current_state == state_travelling)
{
	x+=lengthdir_x(_speed,dir);
	y+=lengthdir_y(_speed,dir);
	
	var player = instance_place(x,y,obj_player);
	if(player and can_damage_source)
	{
		current_state = state_activate;
		with(player)
		{
			dead = true;
		}
	}
	if(player and player.color != color)
	{
		current_state = state_activate;
		with(player)
		{
			dead = true;
		}
	}
	
	
	var missile = instance_place(x,y,obj_missile);
	if(missile and missile.id != id)
	{
		
		current_state = state_activate;
		with(missile)
		{
			current_state = state_activate;
		}
	
	}
	
	if(turn != 0)
	{
		image_angle += 15*turn;
		if(alarm[1] == -1)
		{
			alarm[1] = 8;	
		}
	}	
}
if(current_state == state_idle)
{
	circle_cooldown -= 1/room_speed;
	if(circle_cooldown <= 0)
	{
		circle = instance_create(x,y,obj_transmission);
		with(circle)
		{
			scale_max = 0.8;
			scale_speed = 0.03;
			color = other.color;
		}
		circle_cooldown = circle_interval;
	}
}
if(current_state == state_activate)
{
	var explosion = instance_create(x,y,obj_explosion);
	with(explosion)
	{
		image_speed = 1.5;
	}
	instance_destroy();
}

x += lengthdir_x(knockback_speed,knockback_dir);
y += lengthdir_y(knockback_speed,knockback_dir);

knockback_speed = lerp(knockback_speed,0,0.1);

frame =! frame	
if frame instance_create(x-lengthdir_x(sprite_width/1.2, image_angle), y-lengthdir_y(sprite_width/1.2, image_angle), obj_bubble) 
