scr_instakill()
scr_collision()
image_speed = 0.20
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
_p_near = distance_to_object(obj_player) < 100