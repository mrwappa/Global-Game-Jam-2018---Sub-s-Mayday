if flipped = 1 {
	if x - depth*64 > view_x + view_w {
		instance_destroy()	
	}
}	
if flipped =-1 {
	if x + depth*64 < view_x {
		instance_destroy()	
	}
}	

x += x_spd

i = random_range(0,10)

if i > 9.92 {
	b = instance_create_depth(x + ((32/depth)*flipped) , y, depth, obj_bubble)
	b.z = depth
}
