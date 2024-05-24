view_enabled[0] = true
view_visible[0] = true
if (collect != global.collect) {
	collecttimer = 80
	collect = global.collect
}
collecttimer--
drawycollect = lerp(drawycollect, (collecttimer > 0 || target.hsp == 0 && target.move = 0 ? 0 : 150), 0.1 + (collecttimer > 0) * 0.1)
targetxscale = (target.object_index != obj_player ? target.image_xscale : target.xscale)
camera_set_view_size(view_camera[0], 256, 256)
camx = (target.x - camera_get_view_width(view_camera[0]) / 2) + offsetx
camy = (target.y - surface_get_height(application_surface) / 2) + offsety
var _offsetxmultiplier = (target.hsp / 1.8)
offsetx = approach(offsetx, (target.hsp != 0 ? 60 : 0) * targetxscale, (target.hsp != 0 ? _offsetxmultiplier : 2.5))
camera_set_view_pos(view_camera[0], camx, camy)