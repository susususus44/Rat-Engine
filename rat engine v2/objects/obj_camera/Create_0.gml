window_set_showborder(true)
window_set_size(256, 256)
surface_resize(application_surface, 256, 256)
target = obj_player
offsetx = 0
offsety = 0
camx = target.x - surface_get_width(application_surface) / 2
camy = target.y - surface_get_height(application_surface) / 2