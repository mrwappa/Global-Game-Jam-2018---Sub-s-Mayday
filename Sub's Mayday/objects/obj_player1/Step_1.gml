/// @description Insert description here
// You can write your code in this editor
randomize();
if(!dead)
{
	player_movement(key_up,key_down,key_left,key_right,key_turn_clock,key_turn_counter);
	player_shoot(key_shoot,color);
}
else
{	
	player_summon_debree();
}

 