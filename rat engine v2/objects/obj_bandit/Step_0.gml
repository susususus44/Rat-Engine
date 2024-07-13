scr_collision()
switch (state) {
	case states.normal:
		scr_enemy_normal()
		break
	case states.charging:
		scr_bandit_run()
		break
	case states.searching:
		scr_bandit_searching()
		break
}
if (state == states.normal && collision_line(x, y, obj_player.x, obj_player.y, obj_solid, true, true)) {
}