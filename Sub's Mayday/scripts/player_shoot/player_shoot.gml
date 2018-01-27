var k_shoot = argument0;
var shooting = keyboard_check_pressed(k_shoot);

var _color = argument1;

if(shooting)
{
	var mine = instance_create(x,y,obj_mine);
	with(mine)
	{
		color = _color;
		_speed = 12;
		dir = other.image_angle + 90;
		image_angle = dir;
	}
}