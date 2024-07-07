scr_collision_init()
state = states.normal
grav = 0.5
abletospit = true
image_speed = 0.2
with (instance_create(x, y, obj_nutspitter_hitbox)) {
	nutspitterID = other.id
}