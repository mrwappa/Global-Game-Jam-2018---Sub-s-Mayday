/// @description Insert description here
// You can write your code in this editor
if(!sink)
{
	x += lengthdir_x(_speed,dir);
	y += lengthdir_y(_speed,dir);
	image_angle += angle_speed;
	angle_speed = lerp(angle_speed,0,0.05);
	_speed = lerp(_speed,0.001,0.05);
	if(_speed <= 0.03)
	{
		sink = true;	
	}
}
if(sink)
{
	y+=random_range(0.1,0.5);	
}

