/// @descriptions
if (keyboard_check_pressed(vk_escape))
{
    game_end();
}




if(keyboard_check_pressed(vk_enter))
{
	event_user(TOGGLE_PAUSE);
}
if(room == rm_main)
{
	if(!paused_)
	{
		rec_alpha -= 0.027;
		if(rec_alpha <= 0)
		{
			rec_alpha = 0;
			go = true;
		}
		if(go)
		{
			go_text_size = lerp(go_text_size,0,0.1);	
		}
	}
	if(instance_exists(obj_player1))
	{
		if(obj_player1.dead)
		{
			if(!player2_dead)
			{
				player1_dead = true;
			}
		}
	}
	if(instance_exists(obj_player1))
	{
		if(obj_player2.dead)
		{
			if(!player1_dead)
			{
				player2_dead = true;
			}
		}
	}

	if(player1_dead or player2_dead)
	{
		if(keyboard_check_pressed(vk_shift))
		{
			room_goto(rm_main);
		}
	}
}
//ready_text_size = lerp(ready_text_size,0,0.3);
