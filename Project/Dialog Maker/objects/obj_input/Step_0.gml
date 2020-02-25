script_execute(tte_ext_input_step,0,0,0,0,0);
if( !focus ) {
    if( keyboard_check_pressed( vk_space ) ) {
        show_message_async( tte_ext_input_get_text() );
        tte_ext_input_set_text( "Line 1 is a test#Line 2 contains \\# and hopefully it works!#Line 3 is quite dumb." );
    }
}

