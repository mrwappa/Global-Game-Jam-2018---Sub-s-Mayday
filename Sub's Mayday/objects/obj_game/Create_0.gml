/// @descriptions
randomize();
window_set_cursor(cr_none);
//cursor_sprite = spr_cursor;

TOGGLE_PAUSE = 0;
paused_ = false;
pause_sprite_ = noone;

room_speed = 60;

rec_alpha = 1;

globalvar go;
go = false;

ready_text_size = 3;
go_text_size = 5;

round_over = false;

player2_dead = false;
player1_dead = false;

win_text_p1 = choose("Seems like red is truly superior",
"Red is making the moves",
"Red is trying its hardest to not compare missile size",
"Red can finally rest easy now knowing its missilie size is greater");
win_text_p2 = choose("Green is making the moves",
"Seems like green is truly superior",
"Green is having a hard time to not demoralize red's missile size",
"Green shall now return to the homeland and brag about its missile size");