global.collect = 0
scr_collision_init()
scr_initinput()
enum states {
	normal,
	jump,
	turn,
}
jumpstop = 0
xscale = 1
move = 0
grav = 0.5
state = states.normal
idlespr = spr_playerC_idle
movespr = spr_playerC_move
jumpspr = spr_playerC_move
fallspr = spr_playerC_move