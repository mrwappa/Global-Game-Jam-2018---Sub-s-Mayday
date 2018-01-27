/// @description Insert description here
// You can write your code in this editor
draw_sprite_ext(sprite_index, image_index,round(x),round(y),
image_xscale,image_yscale, image_angle, color,image_alpha);

draw_line_ext(x,y,x+lengthdir_x(view_w,image_angle + 90),y+lengthdir_y(view_w,image_angle + 90),color,1,0.1);