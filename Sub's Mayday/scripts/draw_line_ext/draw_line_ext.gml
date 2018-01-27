var x1 = argument0;
var y1 = argument1;
var x2 = argument2;
var y2 = argument3;
var color = argument4;
var width = argument5;
var alpha = argument6;
var deltax = (x2) - (x1);
var deltay = (y2) - (y1);

var deltalength = sqrt((deltax * deltax) + (deltay * deltay));

draw_sprite_ext(spr_pixel,0,x1,y1,width,deltalength,darctan2(deltax,deltay),color,alpha);
