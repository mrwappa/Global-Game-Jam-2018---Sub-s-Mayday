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

if(rotation == 0 )
{
	rotation_speed = lerp(rotation_speed,0,0.8);
}
else if(rotation != 0 and !keyboard_check(key_shoot))
{
	rotation_speed = lerp(rotation_speed,turn_speed*rotation,0.007);	
}
if(keyboard_check(key_shoot))
{
	rotation_speed = 0;
	//normalisera(2 - 1:an)
	
	var p_angle_x = dcos(-image_angle);
	var p_angle_y = dsin(-image_angle);
	
	var deltax = target.x - x;
	var deltay = target.y - y;
	var distance = point_distance(x,y,target.x,target.y);
	var angle_x = deltax / distance;
	var angle_y = deltay / distance;
	
	p_angle_x = lerp(p_angle_x, angle_x, 0.4);
	p_angle_y = lerp(p_angle_y, angle_y, 0.4);
	
	image_angle = point_direction(0,0,p_angle_x,p_angle_y);
	/*if(abs(image_angle - point_direction(x,y,target.x,target.y) < 10))
	{
		image_angle = point_direction(x,y,target.x,target.y);
	}*/
}


