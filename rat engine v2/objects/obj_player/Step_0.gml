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
if y > room_height + 260
	y =0