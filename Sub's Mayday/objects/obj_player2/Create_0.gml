/// @description 

//Appearance
color = make_color_rgb(0,255,64);
bot_propeller = instance_create(x,y,obj_propeller);
top_propeller = instance_create(x,y,obj_propeller);
image_angle = point_direction(x,y,obj_player1.x,obj_player1.y);

with(top_propeller)
{
	color = other.color;
	sprite_index = spr_sub_tube1;
}
with(bot_propeller)
{
	color = other.color;
	sprite_index = spr_sub_prop1;
}

//Movement
movement_speed = 4;
turn_speed = 10;
rotation_speed = 0;
axis_x = 0;
axis_y = 0;
axis_x_acceleration = 0.4;
axis_y_acceleration = 0.4;

axis_x_restitution = 0.1;
axis_y_restitution = 0.1;

axis_x_max = movement_speed;
axis_y_max = movement_speed;

key_up = vk_up;
key_down = vk_down;
key_left = vk_left;
key_right = vk_right;

key_turn_clock = vk_numpad1;
key_turn_counter = vk_numpad3;
key_shoot = vk_numpad2;

//Weapon
missile = noone;
target = obj_player1;
/*trap_list = ds_list_create();
shoot_traps = true;*/