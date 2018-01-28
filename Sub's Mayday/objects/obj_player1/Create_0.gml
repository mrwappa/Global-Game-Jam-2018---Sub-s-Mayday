/// @description 
//Appearance
color = c_red;
bot_propeller = instance_create(x,y,obj_propeller);
top_propeller = instance_create(x,y,obj_propeller);
image_angle = point_direction(x,y,obj_player2.x,obj_player2.y);
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

key_up = ord("W");
key_down = ord("S");
key_left = ord("A");
key_right = ord("D");

key_turn_clock = ord("H");
key_turn_counter = ord("K");
key_shoot = ord("J");

//Weapon
missile = noone;

target = obj_player2;
dead = false;

debree_list = ds_list_create();


frame = true