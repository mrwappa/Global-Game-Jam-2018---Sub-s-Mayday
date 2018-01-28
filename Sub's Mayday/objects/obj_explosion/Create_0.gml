/// @description Insert description here
// You can write your code in this editor
image_angle = random(360);
shake_screen(8);
color = c_white;

for(i = 0; i < 360; i += 45)
{
	d = random_range(0, 8)
	b = instance_create_depth(x, y, 0, obj_bubble)

	b.x_spd = dcos(i)*d
	b.y_spd = dsin(i)*d
}

instance_create_depth(x,y, -1000, obj_shockwave)