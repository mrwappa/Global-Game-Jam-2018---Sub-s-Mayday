depth = -1000

length = 48

shockwavePosition = shader_get_uniform(sh_shockwave, "shockwavePosition")
lengthValue = shader_get_uniform(sh_shockwave, "lengthValue")
resolution = shader_get_uniform(sh_shockwave, "resolution")

app_surface = surface_create(view_w, view_h)

target = obj_player;
