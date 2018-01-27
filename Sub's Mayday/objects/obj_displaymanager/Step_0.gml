/// @descriptions

if(instance_exists(FollowObject1) and instance_exists(FollowObject2))
{
	view_zoom = 2 - player_distance/((view_w+view_h)/1.5);
}
view_zoom = clamp(view_zoom,0.7,4);

view_w = round(ideal_width/view_zoom/view_zoom_extra/width_difference);
view_h = round(ideal_height/view_zoom/view_zoom_extra/width_difference);