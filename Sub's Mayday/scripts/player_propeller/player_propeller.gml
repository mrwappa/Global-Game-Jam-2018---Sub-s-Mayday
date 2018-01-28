image_angle += rotation_speed;
var move_speed = sqrt(abs(axis_x* axis_x)+ abs(axis_y * axis_y));
var wingspeed = (move_speed)/4;

with(bot_propeller)
{
	turn_value += wingspeed*20;
	turn_value = turn_value % 360;
	image_yscale = dsin(turn_value);
	
	image_angle = other.image_angle;
	
	x = other.x;
	y = other.y;

}

with(top_propeller)
{
	
	turn_value += wingspeed;
	turn_value = turn_value % 360;
	image_yscale = dsin(turn_value);
	
	image_angle = other.image_angle;
	
	x = other.x;
	y = other.y;

}