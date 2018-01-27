var k_up = argument0;
var k_down = argument1;
var k_left = argument2;
var k_right = argument3;

var up = keyboard_check(k_up);
var down = keyboard_check(k_down);
var left = keyboard_check(k_left);
var right = keyboard_check(k_right);

//compute axes
var axis_x_dir = right - left;
var axis_y_dir = down - up;

//acceleration
var axis_x_add = axis_x_dir * axis_x_acceleration;
var axis_y_add = axis_y_dir * axis_y_acceleration;

//restitution
var axis_x_sub = min(axis_x_restitution,abs(axis_x)) * sign(axis_x) * (axis_x_dir == 0);
var axis_y_sub = min(axis_y_restitution,abs(axis_y)) * sign(axis_y) * (axis_y_dir == 0);

axis_x = clamp(axis_x + axis_x_add - axis_x_sub, -axis_x_max,axis_x_max);
axis_y = clamp(axis_y + axis_y_add - axis_y_sub, -axis_y_max,axis_y_max);

//normalize axis_x,axis_y
if!(axis_x == 0 and axis_y == 0)
{
	var dist = sqrt(sqr(axis_x) + sqr(axis_y));
	var mdist = min(movement_speed, dist);
	axis_x = ((axis_x/dist) * mdist);
	axis_y = ((axis_y/dist) * mdist);
}

//move
x+= axis_x;
y+= axis_y;

x = clamp(x,view_x + sprite_width /2,view_x+view_w - sprite_width/2);
y = clamp(y,view_y + sprite_height /2,view_y+view_h - sprite_height /2);

//rotation
var k_clockwise = argument4;
var k_counter = argument5;
var clockwise = keyboard_check(k_clockwise);
var counter_clockwise = keyboard_check(k_counter);

var rotation = clockwise - counter_clockwise;

if(rotation == 0)
{
	rotation_speed = lerp(rotation_speed,0,0.1);
}
else
{
	rotation_speed = lerp(rotation_speed,turn_speed*rotation,0.007);	
}

image_angle += rotation_speed;

//everything below here is appearance for the propellers
var turnTop = false;
var turnBottom = false;

var turning = true;

if(axis_x > 0)
{
	if(image_angle >= -90 and image_angle <= 0)
	{
		turnBottom = true;
	}
	else if(image_angle <= 270 and image_angle >= 180)
	{
		turnBottom = true;
	}
	else if(image_angle > 0 and image_angle < 180)
	{
		turnTop = true;
	}
}
else if(axis_x < 0)
{
	if(image_angle >= -90 and image_angle <= 0)
	{
		turnTop = true;
	}
	else if(image_angle <= 270 and image_angle >= 180)
	{
		turnTop = true;
	}
	else if(image_angle > 0 and image_angle < 180)
	{
		turnBottom = true;
	}
}

if(axis_y > 0)
{
	if(image_angle >= -60 and image_angle <= 0)
	{
		turnTop = true;
	}
	else if(image_angle <= 60 and image_angle > 0)
	{
		turnTop = true;
	}
	else if(image_angle > 130 and image_angle < 230)
	{
		turnBottom = true;
	}
}
else if(axis_y < 0)
{
	if(image_angle >= -60 and image_angle <= 0)
	{
		turnBottom = true;
	}
	else if(image_angle <= 60 and image_angle > 0)
	{
		turnBottom = true;
	}
	else if(image_angle > 130 and image_angle < 230)
	{
		turnTop = true;
	}
}

var move_speed = sqrt(abs(axis_x* axis_x)+ abs(axis_y * axis_y));
var wingspeed = (move_speed)/4;

with(bot_propeller)
{
	depth = other.depth -1;
	if(turnBottom)
	{
		if(scale_plus)
		{
			image_xscale += wingspeed;
			if(image_xscale >= 1)
			{
				scale_plus = false;
				scale_minus = true;
			}
		}
		else if(scale_minus)
		{
			image_xscale -= wingspeed;
			if(image_xscale <= -1)
			{	
				scale_minus = false;
				scale_plus = true;
			}
		}
	}
	else if(turnBottom = false)
	{
		if(scale_plus)
		{
			image_xscale += wingspeed/10;
			if(image_xscale >= 1)
			{
				scale_plus = false;
				scale_minus = true;
			}
		}
		else if(scale_minus)
		{
			image_xscale -= wingspeed/10;
			if(image_xscale <= -1)
			{	
				scale_minus = false;
				scale_plus = true;
			}
		}
	}
	image_xscale = clamp(image_xscale,-1,1);
	image_yscale = clamp(image_yscale,-1,1);
	
	var yoffset,xoffset;
	image_angle = other.image_angle;
	
	if(image_xscale > 0)
	{
		var xoffset = lengthdir_x(0, image_angle);
		var yoffset = lengthdir_y(0, image_angle);
	}
	else
	{
		
		
		var xoffset = lengthdir_x(1, image_angle);
		var yoffset = lengthdir_y(1, image_angle);
	}
	
	x = other.x + xoffset;
	y = other.y + yoffset;

}

with(top_propeller)
{
	depth = other.depth -1;
	if(turnTop)
	{
		if(scale_plus)
		{
			image_xscale += wingspeed;
			if(image_xscale >= 1)
			{
				scale_plus = false;
				scale_minus = true;
			}
		}
		else if(scale_minus)
		{
			image_xscale -= wingspeed;
			if(image_xscale <= -1)
			{	
				scale_minus = false;
				scale_plus = true;
			}
		}
	}
	else if(turnTop = false)
	{
		if(scale_plus)
		{
			image_xscale += wingspeed/10;
			if(image_xscale >= 1)
			{
				scale_plus = false;
				scale_minus = true;
			}
		}
		else if(scale_minus)
		{
			image_xscale -= wingspeed/10;
			if(image_xscale <= -1)
			{	
				scale_minus = false;
				scale_plus = true;
			}
		}
	}

	image_xscale = clamp(image_xscale,-1,1);
	image_yscale = clamp(image_yscale,-1,1);
	
	var yoffset,xoffset;
	image_angle = other.image_angle;
	
	if(image_xscale > 0)
	{
		var xoffset = lengthdir_x(0, image_angle);
		var yoffset = lengthdir_y(0, image_angle);
	}
	else
	{
		var xoffset = lengthdir_x(1, image_angle);
		var yoffset = lengthdir_y(1, image_angle);
	}
	
	x = other.x + xoffset;
	y = other.y + yoffset;

}
