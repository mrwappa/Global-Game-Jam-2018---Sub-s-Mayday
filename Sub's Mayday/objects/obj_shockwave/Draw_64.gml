shader_set(sh_shockwave)

shader_set_uniform_f(shockwavePosition, (x-view_x), (y-view_y))
shader_set_uniform_f(lengthValue, length)
shader_set_uniform_f(resolution, view_w, view_h)

draw_surface_stretched_ext(application_surface, 0, 0, display_get_gui_width(), display_get_gui_height(), c_white, 1.0)


shader_reset()
