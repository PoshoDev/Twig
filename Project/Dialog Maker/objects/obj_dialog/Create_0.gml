
parent = noone;

width = 400;
height = 200;
margin = 8;
color = c_purple;

portrait_name = "<undefined>";
portrait_size = 64;

enum chl { index, choice };
children[0,chl.index] = noone;
children[0,chl.choice] = noone;

selected = false;
dragging = true;
creating = true;

textbox = instance_create_depth(x, y, depth-1, obj_input);
textbox.owner = self;
textbox.width = width - margin*2;
textbox.height = height - margin*3 - portrait_size;
