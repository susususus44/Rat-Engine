with (instance_create(x, y, obj_follower))
{
	sprite_index = spr_craig_idle
	count = instance_number(obj_follower)
}
with (instance_create(x, y, obj_message))
{
	avatarspr = spr_craig
	str = "Erm..."
}
instance_destroy()