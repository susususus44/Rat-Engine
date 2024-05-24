global.collect = 0
scr_collision_init()
scr_initinput()
enum states {
	normal,
	jump,
}
jumpstop = 0
xscale = 1
move = 0
grav = 0.5
state = states.normal