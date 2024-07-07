scr_collision()
switch (state) {
	case states.normal:
		scr_enemy_normal()
		break
	case states.charging:
		scr_enemy_charging()
		break
}
if (!collision_line(x, y, obj_player.x, obj_player.y, obj_solid, false, false) && distance_to_object(obj_player) < 180 && state != states.charging) {
	state = states.charging
}