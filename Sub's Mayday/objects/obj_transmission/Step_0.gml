/// @description
/*circle_radius += circle_speed;
color_hue -= 1/room_speed;
if(circle_radius >= circl_max_radius)
{
	instance_destroy();	
}*/
image_alpha -= 2.5/room_speed;
image_xscale += scale_speed;
image_yscale = image_xscale;
if(image_xscale >= scale_max or image_alpha <= 0)
{
	instance_destroy();	
}
if(instance_exists(obj_player))
{
		
}
var player = instance_place(x,y,obj_player);
if(player and player.color != color)
{
	with(player)
	{
		color = c_white;
	}
}