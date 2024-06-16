view_enabled[0] = true
view_visible[0] = true
global.screenscale += mouse_wheel_up()
global.screenscale -= mouse_wheel_down()
if (global.screenscale < 1)
	global.screenscale = 1
window_set_size(global.screensize * global.screenscale, global.screensize * global.screenscale)
targetxscale = (target.object_index != obj_player ? target.image_xscale : target.xscale)
camera_set_view_size(view_camera[0], global.screensize * zoom, global.screensize * zoom)
camx = (target.x - camera_get_view_width(view_camera[0]) / 2) + offsetx
camy = (target.y - camera_get_view_height(view_camera[0]) / 2) + offsety
var _offsetxmultiplier = (target.hsp / 1.8)
offsetx = approach(offsetx, (target.hsp != 0 ? 60 : 0) * targetxscale, (target.hsp != 0 ? _offsetxmultiplier : 2.5))
camera_set_view_pos(view_camera[0], camx, camy)
