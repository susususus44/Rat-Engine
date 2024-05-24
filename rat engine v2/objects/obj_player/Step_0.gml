scr_collision()
scr_getinput()
switch state {
	case states.normal:
		scr_player_normal()
		break
	case states.jump:
		scr_player_jump()
		break
}