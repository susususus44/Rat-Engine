global.screensize = 256
global.screenscale = 2
window_set_showborder(true)
surface_resize(application_surface, global.screensize, global.screensize)
lookuptimer = 0
zoom = 1
collect = 0
collecttimer = 100
drawycollect = 0
target = obj_player
offsetx = 0
offsety = 0
camx = target.x - global.screensize / 2
camy = target.y - global.screensize / 2