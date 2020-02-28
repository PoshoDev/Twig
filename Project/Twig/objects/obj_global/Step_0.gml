
if (keyboard_check(vk_control))
    if (keyboard_check_pressed(ord("S")))
        save_export();
    else if (keyboard_check_pressed(ord("R")))
        game_restart();