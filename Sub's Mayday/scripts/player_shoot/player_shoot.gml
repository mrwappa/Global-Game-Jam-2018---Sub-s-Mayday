var k_shoot = argument0;
var _color = argument1;
var shooting = keyboard_check_pressed(k_shoot);
var hold_shoot = keyboard_check(k_shoot);
var can_shoot = true;

if(shooting and !instance_exists(missile))
{
	missile = instance_create(x,y,obj_missile);	
	with(missile)
	{
		color = _color;
		_speed = 5.2;
		dir = other.image_angle;
		image_angle = dir;
	}
	for (var i = 0; i < 4; ++i) 
	{
	    beam = instance_create(x-lengthdir_x(sprite_width/1.2, image_angle - 180), y-lengthdir_y(sprite_width/1.2, image_angle - 180), obj_lol) 	
	
		beam.angle = image_angle - 90
		beam.max_scale = 1 / i;
		beam.x_spd = lengthdir_x(8/i, image_angle)
		beam.y_spd = lengthdir_y(8/i, image_angle)
		
		beam.colour = color
	}
	
}
if(hold_shoot and instance_exists(missile))
{
	if(keyboard_check(key_turn_clock))
	{
		with(missile)
		{
			image_angle += 4;	
		}
	}
	
	if(keyboard_check(key_turn_counter))
	{
		with(missile)
		{
			image_angle -= 4;	
		}
	}
}

if(keyboard_check_released(k_shoot) or !keyboard_check(k_shoot) and instance_exists(missile) and missile != noone)
{
	with(missile)
	{
		if(can_damage_source)
		{
			current_state = state_activate;	
		}
	}
	
}

/*if(!shoot_traps)
{
	if(ds_list_size(trap_list) == 0)
	{
		shoot_traps = true;
	}
	if(shooting)
	{
		var trap_obj = ds_list_find_value(trap_list,0);
		ds_list_delete(trap_list,0);
		with(trap_obj)
		{
			current_state = state_activate;
		}
	}
}

if(shoot_traps)
{
	if(shooting and instance_exists(trap))
	{
		if(trap.current_state = trap.state_travelling)
		{
			with(trap)
			{
				current_state = state_idle;
				color = other.color;
			}
			can_shoot = false;
		}

	}

	if(shooting and can_shoot and ds_list_size(trap_list) < 3)
	{
		trap = instance_create(x,y,obj_mine);
		ds_list_add(trap_list,trap);
		with(trap)
		{
			color = _color;
			_speed = 16;
			dir = other.image_angle;
			image_angle = dir;
		}
	}
	if(ds_list_size(trap_list) == 3 and trap.current_state == trap.state_idle)
	{
		shoot_traps = false;	
	}
}
*/




