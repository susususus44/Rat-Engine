with (instance_create(x, y, obj_follower))
{
	sprite_index = spr_ukifollower
	count = instance_number(obj_follower)
}
with (instance_create(x, y, obj_message))
{
	avatarspr = spr_uki
	str = "*monkey noises*"
}
instance_destroy()