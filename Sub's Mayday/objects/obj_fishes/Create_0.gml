spr = random_range(0,3)

flipped = irandom_range(0,1)
if flipped = 0 flipped = -1

if flipped = 1 x = view_x-64
if flipped =-1 x = view_x + view_w+64

y = random_range(view_y-32, view_y + view_h+32)

x_spd = flipped*4/depth

//if flipped = -1 x = room_width + room_width/depth
//else x = -room_width/depth

//y = random_range(-768/depth, 768 + 768/depth)

