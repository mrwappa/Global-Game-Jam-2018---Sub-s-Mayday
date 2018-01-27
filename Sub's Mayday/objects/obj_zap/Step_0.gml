/// @description
if(current_state == state_travelling)
{
	x+=lengthdir_x(_speed,dir);
	y+=lengthdir_y(_speed,dir);
}
if(current_state == state_idle)
{
	circle_cooldown -= 1/room_speed;
	if(circle_cooldown <= 0)
	{
		var circle = instance_create(x,y,obj_transmission);
		with(circle)
		{
			scale_max = 0.5;
			scale_speed = 0.03;
			color = other.color;
		}
		circle_cooldown = circle_interval;
	}
}
if(current_state == state_activate)
{
	instance_destroy();
}