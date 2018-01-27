/// @description 
if(instance_exists(FollowObject1) and instance_exists(FollowObject2))
{
	player_distance = point_distance(FollowObject1.x,FollowObject1.y,FollowObject2.x,FollowObject2.y);
}
