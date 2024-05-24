scr_getinput()
if key_start3
{
	alarm[0] = 1
}
if (paused)
{
	if keyboard_check_pressed(vk_enter)
		game_restart()
}