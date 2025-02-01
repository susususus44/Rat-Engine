surf = -1
angle = 0
pos = 1
scale = 0
blocked = false
if (pos == 1)
	scale = 50
targetRoom = 0
pauseimg = sprite_create_from_surface(application_surface, 0, 0, surface_get_width(application_surface) + 1, surface_get_height(application_surface), false, false, 0, 0)
showimg = true
instance_deactivate_all(true)