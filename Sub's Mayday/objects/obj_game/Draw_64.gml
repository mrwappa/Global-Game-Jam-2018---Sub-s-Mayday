/// @descriptions
/// @description Insert description here
// You can write your code in this editor
draw_set_alpha(1);
draw_set_font(f_square);

if(paused_)
{
	draw_rectangle_color(0,0,display_get_gui_width(),display_get_gui_height(),
	c_black,c_black,c_black,c_black,false);
	var string_ = "paused";
	var string_h = string_height(string_);
	var string_w = string_width(string_);
	draw_text(display_get_gui_width()/2 + string_w/2,
	display_get_gui_height()/2 + string_h/2,string_);
}

/*draw_set_color(c_white);
draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_text(5,5,display_write_specs(display.screen)+"\n"+
              display_write_specs(display.window)+"\n"+
              display_write_specs(display.app_surface)+"\n"+
              display_write_specs(display.view)+"\n"+
              display_write_specs(display.gui)
              );

draw_set_halign(fa_right);
draw_set_valign(fa_bottom);
draw_text(display_get_gui_width()-5, display_get_gui_height() -30, "FPS_REAL = " + string(floor(fps_real)));
draw_text(display_get_gui_width()-5, display_get_gui_height() -50, "FPS = " + string(floor(fps_real)));
draw_text(display_get_gui_width()-5, display_get_gui_height() -90, room_speed);

draw_text(display_get_gui_width()-5, display_get_gui_height() -5, "Bottom Right");

draw_sprite_ext(spr_pixel,1,0,0,display_width,display_height,0,c_black,rec_alpha);*/
if(room == rm_main)
{
	if(!paused_)
	{
		if(go)
		{
			var text_width = string_width("GO!");
			var text_height = string_height("GO!");
			draw_text_ext_transformed(display_get_gui_width()/2 + text_width*go_text_size/2,display_get_gui_height()/2+ text_height*go_text_size/4,"GO!",1,display_width,go_text_size,go_text_size,0);
		}
		else
		{
			var text_width = string_width("READY?");
			var text_height = string_height("READY?");
			draw_text_ext_transformed(display_get_gui_width()/2+ text_width*ready_text_size/2,display_get_gui_height()/2+ text_height*ready_text_size/2,"READY?",1,display_width,ready_text_size,ready_text_size,0);
		}
	
		if(player1_dead)
		{
			var text_width = string_width(win_text_p2);
			var text_height = string_height(win_text_p2);
			draw_text_ext_transformed(display_get_gui_width()/2+ text_width/2,display_get_gui_height()/2+ text_height/2,win_text_p2,1,display_width,1,1,0);
			draw_text(display_get_gui_width()/3,display_get_gui_height()/3,"Press Shift to restart");
		}
		if(player2_dead)
		{
			var text_width = string_width(win_text_p1);
			var text_height = string_height(win_text_p1);
		
			draw_text_ext_transformed(display_get_gui_width()/2+ text_width/2,display_get_gui_height()/2+ text_height/2,win_text_p1,1,display_width,1,1,0);
			draw_text(display_get_gui_width()/3,display_get_gui_height()/3,"Press Shift to restart");
		}
	}
}
if(room == rm_controls)
{
	draw_sprite_ext(spr_controls,1,display_get_gui_width()/2,display_get_gui_height()/2,1,1,0,c_white,1);
	if(keyboard_check_pressed(vk_shift))
	{
		room_goto(rm_main);	
	}
}