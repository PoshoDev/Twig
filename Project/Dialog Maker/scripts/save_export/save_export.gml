if (file_exists("save.csv"))
{
    if (!directory_exists("_Backups"))
        directory_create("_Backups")
        
    file_copy("save.csv", working_directory+"/_Backups/save_"+string(date_get_second_of_year(date_current_datetime()))+".csv");
    file_delete("save.csv");
}

enum sheet
{
    character,
    pose,
    text,
    x_,
    y_,
    parent,
    LENGTH
}

global.data[0, sheet.character] = "Character";
global.data[0, sheet.pose] =      "Pose";
global.data[0, sheet.text] =      "Text";
global.data[0, sheet.x_] =        "x";
global.data[0, sheet.y_] =        "y";
global.data[0, sheet.parent] =    "Parent";
    
var count = 0;

for (var i=0; i<global.choice_highest; i++)
{
    global.data[0, sheet.LENGTH + count++] = "Pointer "+string(i+1);
    global.data[0, sheet.LENGTH + count++] = "Choice "+string(i+1);
}

for (var i=1; i<array_length_1d(global.indexes); i++)
{
    global.data[i, sheet.character] =  global.indexes[i].portrait_name;
    global.data[i, sheet.pose] =       global.indexes[i].portrait_pose;
    global.data[i, sheet.text] =       dialog_text_get(global.indexes[i]);
    global.data[i, sheet.x_] =         global.indexes[i].x;
    global.data[i, sheet.y_] =         global.indexes[i].y;
    
    if (global.indexes[i].parent != noone)
        global.data[i, sheet.parent] = global.indexes[i].parent.index;
    else
        global.data[i, sheet.parent] = noone;
    
    var count = 0;
    
    // Children Loop
    for (var j=0; j<array_height_2d(global.indexes[i].children); j++)
    {
        if (global.indexes[i].children[j, chl.index] != noone)
        {
            global.data[i, sheet.LENGTH + count++] = global.indexes[i].children[j, chl.index].index;
            
            var txt = choice_text_get(global.indexes[i].children[j, chl.choice]);
            
            if (txt != 0)
                global.data[i, sheet.LENGTH + count++] = txt;
        }
    }
}

csv_save("save", global.data);

show_debug_message("Saved.")