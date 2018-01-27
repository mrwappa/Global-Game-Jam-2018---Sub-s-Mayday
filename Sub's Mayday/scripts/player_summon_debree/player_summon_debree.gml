if(ds_list_size(debree_list) == 0)
{
	for (var i = 0; i < 5; ++i) 
	{
		var debree = instance_create(x,y,obj_debree);
		ds_list_add(debree_list,debree);
		switch(i)
		{
			case 0:
				with(debree)
				{
					image_angle = other.image_angle;
					color = other.color;
					sprite_index = spr_sub_prop1;
					_speed= 3;
					angle_speed = 2;
					dir = random(360);
				}
			break;
			case 1:
				with(debree)
				{
					image_angle = other.image_angle;
					color = other.color;
					sprite_index = spr_sub_scrap1;
					_speed= 3;
					angle_speed = 2;
					dir = random(360);
				}
			break;
			case 2:
				with(debree)
				{
					image_angle = other.image_angle;
					color = other.color;
					sprite_index = spr_sub_scrap2;
					_speed= 3;
					angle_speed = 2;
					dir = random(360);
				}
			break;
			case 3:
				with(debree)
				{
					image_angle = other.image_angle;
					color = other.color;
					sprite_index = spr_sub_tube1;	
					_speed= 3;
					angle_speed = 2;
					dir = random(360);
				}
			break;
			case 4:
				with(debree)
				{
					image_angle = other.image_angle;
					color = other.color;
					sprite_index = spr_sub_scrap2;	
					_speed= 3;
					angle_speed = 2;
					dir = random(360);
				}
		}
	}	
}
if(instance_exists(top_propeller))	
{
	instance_destroy(top_propeller);	
}
if(instance_exists(bot_propeller))	
{
	instance_destroy(bot_propeller);	
}