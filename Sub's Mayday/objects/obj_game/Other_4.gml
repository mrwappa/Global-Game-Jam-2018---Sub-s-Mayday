/// @descriptions
/*if(debug == true)
{
	instance_create(x,y,obj_gui_control);
}*/
rec_alpha = 1;
ready_text_size = 3;
go_text_size = 5;
go = false;
player2_dead = false;
player1_dead = false;

win_text_p1 = choose("Seems like red is truly superior",
"Red is making the moves",
"Red is trying its hardest not to compare missile size");
win_text_p2 = choose("Green is making the moves",
"Seems like green is truly superior",
"Green is having a hard time not to demoralize red's missile size");