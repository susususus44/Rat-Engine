global.collect = 0
scr_collision_init()
scr_initinput()
enum states {
	normal,
	jump,
	kick,
	arialkick,
	crouch,
	charging,
	spit,
	hurt,
	searching,
}
instakill = false
hurttimer = 0
jumpstop = 0
xscale = 1
move = 0
grav = 0.5
state = states.normal
idlespr = spr_craig_idle
movespr = spr_craig_move
jumpspr = spr_craig_jump
fallprepspr = spr_craig_fallprep
fallspr = spr_craig_fall
lookupspr = spr_craig_lookup
turnspr = spr_craig_turn
kick1spr = spr_craig_kick1
kick2spr = spr_craig_kick2
kick3spr = spr_craig_kick3
kickarial1spr = spr_craig_arialkick1
crouchspr = spr_craig_crouch
hurtspr = spr_craig_hurt