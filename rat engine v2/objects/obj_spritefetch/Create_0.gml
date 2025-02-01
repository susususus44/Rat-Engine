spritecount = 0
curloaded = 0
for (var i = 0; sprite_exists(i); ++i) {
	spritecount = i + 1
}
show_debug_message(spritecount)
audio_group_load(audiogroup_music)