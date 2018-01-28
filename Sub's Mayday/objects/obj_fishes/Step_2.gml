//x += (flipped*16)/depth

//dx = ((x - obj_controller.x) / z + room_width) - x
//dy = ((y - obj_controller.y) / z + room_height) - y

dx = ((x-(view_x + view_w*0.5)) / depth + room_width)
dy = ((y-(view_y + view_h*0.5)) / depth + room_height)

i = random_range(0,10)

//if i > 9.92 instance_create_depth(x , y, depth + 1, obj_bubble)
