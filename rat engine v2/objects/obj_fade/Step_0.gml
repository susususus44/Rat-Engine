if (pos == 1) {
	if !blocked
		scale -= 0.5
	if (scale <= 0 && !blocked) {
		blocked = true
		alarm[0] = 15
	}
}
else {
	scale += 1
	if (scale >= 60)
		instance_destroy()
}
