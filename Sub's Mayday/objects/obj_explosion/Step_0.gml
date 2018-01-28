/// @description Insert description here
// You can write your code in this editor
if(image_index >= image_number - 1)
{
	instance_destroy();	
}
var player = instance_place(x,y,obj_player);
if(player)
{
	with(player)
	{
		dead = true;
	}
}
	
	
var missile = instance_place(x,y,obj_missile);
if(missile)
{
	with(missile)
	{
		turn = choose(1,-1);
	}
	/*with(missile)
	{
		current_state = state_activate;
	}*/
}