function scr_initinput() { // K after global means keyboard, i'll add the controller support later
	global.upK = vk_up
	global.downK = vk_down
	global.leftK = vk_left
	global.rightK = vk_right
	global.jumpK = ord("Z")
	global.startK = vk_escape
	global.shiftK = vk_shift
	global.attackK = ord("X")
}
function scr_getinput() {
	key_up = keyboard_check(global.upK);
	key_up2 = keyboard_check_pressed(global.upK);
	key_up3 = keyboard_check_released(global.upK);

	key_down = keyboard_check(global.downK);
	key_down2 = keyboard_check_pressed(global.downK);
	key_down3 = keyboard_check_released(global.downK);

	key_left = -keyboard_check(global.leftK);
	key_left2 = -keyboard_check_pressed(global.leftK);
	key_left3 = -keyboard_check_released(global.leftK);

	key_right = keyboard_check(global.rightK);
	key_right2 = keyboard_check_pressed(global.rightK);
	key_right3 = keyboard_check_released(global.rightK);

	key_jump = keyboard_check(global.jumpK);
	key_jump2 = keyboard_check_pressed(global.jumpK);
	key_jump3 = keyboard_check_released(global.jumpK);

	key_start = keyboard_check(global.startK);
	key_start2 = keyboard_check_pressed(global.startK);
	key_start3 = keyboard_check_released(global.startK);

	key_run = keyboard_check(global.shiftK);
	key_run2 = keyboard_check_pressed(global.shiftK);
	key_run3 = keyboard_check_released(global.shiftK);

	key_attack = keyboard_check(global.attackK);
	key_attack2 = keyboard_check_pressed(global.attackK);
	key_attack3 = keyboard_check_released(global.attackK);
}