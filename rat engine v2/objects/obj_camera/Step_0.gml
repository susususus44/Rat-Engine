camx = clamp(camx, 0, room_height - surface_get_width(application_surface))
camy = clamp(camx, 0, room_height - surface_get_width(application_surface))
view_enabled[0] = true
view_visible[0] = true
camera_set_view_size(view_camera[0], 256, 256)
camx = (target.x - camera_get_view_width(view_camera[0]) / 2) + offsetx
camy = (target.y - surface_get_height(application_surface) / 2) + offsety
offsetx = approach(offsetx, (target.hsp != 0 ? 60 : 0) * target.image_xscale, (target.hsp != 0 ? target.hsp / 1.8 : 2.5))
camera_set_view_pos(view_camera[0], camx, camy)