scr_getinput()
if key_start3
{
	alarm[0] = 1
}
if (paused)
{
	if keyboard_check_pressed(vk_enter)
		game_restart()
	if key_jump2
		instance_create(x, y, obj_message)
}
if (key_run)
	audio_group_set_gain(audiogroup_music, 0, 0)