///choice_make(index, text)

children[argument0, chl.choice] = instance_create_depth(x, y, depth-1, obj_input);
children[argument0, chl.choice].owner = self;
children[argument0, chl.choice].width = 124;
children[argument0, chl.choice].height = 48;
with (children[argument0, chl.choice])
    tte_ext_input_set_text(argument1);