/// @description

//Appearance
image_xscale = 5;
image_yscale = image_xscale;
color = c_white;
//Movement
dir = 0;
_speed = 0;

circle_interval = 0.3;
circle_cooldown = 0;

enum zap_state
{
	travelling,
	idle,
	activate
}

state_travelling = zap_state.travelling;
state_idle = zap_state.idle;
state_activate = zap_state.activate;

current_state = state_travelling;