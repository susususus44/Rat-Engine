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
camy = (target.y - camera_get_view_height(view_camera[0]) / 2) + offsety - 15
camx = clamp(camx, 0, room_width - camera_get_view_width(view_camera[0]))
camy = clamp(camy, 0, room_height - camera_get_view_height(view_camera[0]))
var _offsetxmultiplier = (target.hsp / 1.8)
if (obj_player.state != states.kick)
	offsetx = approach(offsetx, (target.hsp != 0 ? 60 : 0) * targetxscale, (target.hsp != 0 ? _offsetxmultiplier : 2.5))
if (obj_player.sprite_index == obj_player.lookupspr)
{
	draw_text(obj_player.x, obj_player.y, lookuptimer)
	if (lookuptimer < 50)
		lookuptimer++
	else
		offsety = approach(offsety, -70, 2)
}
else
{
	offsety = approach(offsety, 0, 4)
	lookuptimer = 0
}
camera_set_view_pos(view_camera[0], camx, camy)
