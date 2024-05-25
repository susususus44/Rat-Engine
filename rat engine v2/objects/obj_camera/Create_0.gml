global.screensize = 256
global.screenscale = 1
window_set_showborder(true)
surface_resize(application_surface, global.screensize, global.screensize)
collect = 0
collecttimer = 100
drawycollect = 0
target = obj_player
offsetx = 0
offsety = 0
camx = target.x - surface_get_width(application_surface) / 2
camy = target.y - surface_get_height(application_surface) / 2