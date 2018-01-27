/// @descriptions
if(instance_exists(FollowObject1) and instance_exists(FollowObject2))
{

	var x_pos = FollowObject1.x + lengthdir_x(player_distance/2,point_direction(FollowObject1.x,FollowObject1.y,FollowObject2.x,FollowObject2.y))- view_w/2;
	var y_pos = FollowObject1.y + lengthdir_y(player_distance/2,point_direction(FollowObject1.x,FollowObject1.y,FollowObject2.x,FollowObject2.y)) - view_h/2;
	
	view_x = x_pos+ choose(screenshake*choose(1,2),-screenshake*choose(1,2));
	view_y = y_pos+ choose(screenshake*choose(1,2),-screenshake*choose(1,2));
	screenshake = lerp(screenshake,0,0.27);
}
else
{
	view_x = (room_width/2) - (view_w/2);
	view_y = (room_height/2) - (view_h/2);	
}


//view_x=clamp(view_x,0,room_width-view_w);
view_y=clamp(view_y,0,room_height-view_h);

/*if(view_w & 1)
{
	view_w++;
}
if(view_h &  1)
{
	view_h++;
}*/

surface_resize(application_surface,view_w,view_h);

camera_set_view_size(view_camera[0],view_w,view_h);

var _round = round(view_w/surface_get_width(application_surface));
camera_set_view_pos(view_camera[0],(view_x),(view_y));

