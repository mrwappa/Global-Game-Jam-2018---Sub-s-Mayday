timer -= 0.2
if timer <= 0 instance_destroy(self)

scale = timer / timer_start

x_spd = lerp(x_spd, 0, 0.1)
y_spd = lerp(y_spd, 0, 0.1)

x += x_spd
y += y_spd

y -= spd
x += cos(timer)


