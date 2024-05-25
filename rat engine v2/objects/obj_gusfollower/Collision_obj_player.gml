with (instance_create(x, y, obj_follower))
{
	sprite_index = spr_gusfollower
	count = instance_number(obj_follower)
}
with (instance_create(x, y, obj_message))
{
	avatarspr = spr_gus
	str = "Yello' Craig!"
}
instance_destroy()