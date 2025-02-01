if (curloaded != spritecount) {
	sprite_prefetch(curloaded)
	curloaded++
}
else
{
	if (audio_group_is_loaded(audiogroup_music))
		room_goto(rm_RATENGINE)
}