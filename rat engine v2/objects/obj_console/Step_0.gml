if (keyboard_check_pressed(vk_f5)) {
    if (!opened) {
        opened = true
        timeout = 3
        keyboard_string = str
    } else {
        opened = false
    }
}
if (opened) {
	var _x = window_get_width() / 2
    lerppos = lerp(lerppos, lerpto, 0.4)
    if (timeout > 0)
        timeout--
    else {
        str = keyboard_string
    }
    search = []
	if (string_width(str) != 0)
    for (var i = 0; i < array_length(command_list); ++i) {
        if (string_copy(command_list[i], 0, string_length(str)) == str) {
            array_push(search, command_list[i])
        }
    }
    if (keyboard_check_pressed(vk_tab) && array_length(search) > 0)
	{
		var searchstr = string_split(search[0], " ")
        keyboard_string = searchstr[0]
	}
    if (keyboard_check_pressed(vk_enter) && str != "") {
        var arr = string_split(str, " ")
        failed = false
        switch (arr[0]) {
            case "room_goto":
                if (array_length(arr) > 1) {
                    if (room_exists(asset_get_index(arr[1]))) {
                        var rm = asset_get_index(arr[1])
                        show_debug_message(rm)
                        room_goto(rm)
                    } else {
                        failed = true
                    }
                } else {
                    failed = true
                }
                break
            case "display_message":
                var outputstr = arr[1]
                if array_length(arr) > 2
                for (var l = 2; l < array_length(arr); ++l) {
                    outputstr += string_concat(" ", arr[l])
                } else
                    outputstr = arr[1]
                with(instance_create(0, 0, obj_message)) {
                    str = outputstr
                }
                failed = false
				break
			case "enter_history":
                var outputstr = arr[1]
                if array_length(arr) > 2
                for (var l = 2; l < array_length(arr); ++l) {
                    outputstr += string_concat(" ", arr[l])
                } else
                    outputstr = arr[1]
                failed = 3
				array_push(history, [outputstr, 2])
				lerpto += 10
				break
            default:
                failed = true
                break
        }
        array_push(history, [str, failed])
        show_debug_message(failed)
        keyboard_string = ""
        failed = false
        lerpto += 10
    }
} else {
    length = approach(length, 0, 50)
}