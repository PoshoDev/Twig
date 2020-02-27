///dialog_make(x, y, text?)

var x_ = argument[0];
var y_ = argument[1];

var pos = array_length_1d(global.indexes);
var hold = instance_create_depth(x_, y_, depth+2, obj_dialog);

global.indexes[pos] = hold;
hold.index = pos;

//In case there's no dialog yet.
if (argument_count > 2)
    with (hold)
        with (textbox)
            tte_ext_input_set_text(argument[2]);
            
return hold;