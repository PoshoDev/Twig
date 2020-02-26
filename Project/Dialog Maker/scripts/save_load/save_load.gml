global.data = csv_load("save");

for (var i=1; i<array_height_2d(global.data); i++)
{
    var txt = global.data[i,sheet.text];
    
    if (txt == "")
        txt = "_";
        
    var noo = dialog_make(real(global.data[i,sheet.x_]), real(global.data[i,sheet.y_]), txt);
    noo.portrait_name = global.data[i,sheet.character];
    noo.portrait_pose = global.data[i,sheet.pose];
    
    global.indexes[i] = noo;
}

global.choice_highest = (array_length_2d(global.data, 0) - sheet.LENGTH ) / 2;

for (var i=1; i<array_height_2d(global.data); i++)
{
    var count = 0;
    var loopity = (array_length_2d(global.data, i) - sheet.LENGTH ) / 2;
    
    for (var j=0; j<loopity; j++)
    {
        // Pointer
        if (global.data[i, sheet.LENGTH + count] != "")
		{
            global.indexes[i].children[j, chl.index] = global.indexes[real(global.data[i, sheet.LENGTH + count])];
			count++;
			
			// Choice/Text
			if (loopity > 1 && global.data[i, sheet.LENGTH + count] != "")
				with (global.indexes[i])
					choice_make(j, global.data[i, sheet.LENGTH + count]);
			count ++;
		}
		else
			break;
    }
    
    // Parents
    if (real(global.data[i, sheet.parent] != noone))
        global.indexes[i].parent = global.indexes[real(global.data[i, sheet.parent])];
    else
        global.indexes[i].parent = noone;
}

show_debug_message("Loaded.")