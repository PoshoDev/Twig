
global.dragging = false;
global.choice_highest = 2;
global.indexes[0] = noone;

if (file_exists("save.csv"))
    save_load();
else
    dialog_make(400, 400, "Hello World!");
 