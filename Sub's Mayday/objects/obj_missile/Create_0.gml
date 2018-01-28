/// @description
alarm[0] = 15;
//Appearance
image_xscale = 1;
image_yscale = image_xscale;

color = c_white;
//Movement
dir = 0;
_speed = 0;
turn = 0;

circle_interval = 0.3;
circle_cooldown = 0;

knockback_dir = 0;
knockback_speed = 0;



//States
enum mine_state
{
	travelling,
	idle,
	activate
}

state_travelling = mine_state.travelling;
state_idle = mine_state.idle;
state_activate = mine_state.activate;

current_state = state_travelling;

can_damage_source = false;

circle = noone;

frame = true