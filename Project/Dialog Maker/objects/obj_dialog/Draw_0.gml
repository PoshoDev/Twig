
// Mouse In
if (!global.dragging && mouse_x>x && mouse_x<x+width && mouse_y>y && mouse_y<y+height)
{
    selected = true;
    
    if (mouse_y < y+margin+portrait_size)
    {
        if (mouse_check_button(mb_left) || (creating && mouse_check_button(mb_right)))
        {
            global.dragging = true;
            dragging = true;
            
            drag_x = mouse_x - x;
            drag_y = mouse_y - y;
        }
        else
        {
            global.dragging = false;
            dragging = false;
            creating = false;
        }
            
        // Creating new instance
        if (mouse_check_button_pressed(mb_right) && !global.dragging)
        {
            global.dragging = true;
            
            if (children[0,chl.index] == noone)
                var i = 0;
            else
                var i = array_height_2d(children);
                
            children[i,chl.index] = dialog_make(mouse_x-width/2, mouse_y-height/4);
            children[i,chl.index].parent = self;
            
            // Yes/No Templates
            if (i == 1)
            {
                choice_make(0, "Yes");
                choice_make(1, "No");
            }
            else if (i > 1)
            {
                choice_make(i, "Choice "+string(i+1));
                
                if (global.choice_highest < i+1)
                    global.choice_highest = i+1;
            }
        }
        
        if (mouse_check_button_pressed(mb_middle))
            dialog_delete();
    }
}
else
{
    global.dragging = false;
    selected = false;
    dragging = false;
}


// Reposition of Choices
if (array_height_2d(children) >= 2)
    for (var i=0; i<array_height_2d(children); i++)
        if (instance_exists(children[i,chl.index]) && instance_exists(children[i,chl.choice]))
        {
            children[i,chl.choice].x = (x+width + children[i,chl.index].x) / 2 - children[i,chl.choice].width/2;
            children[i,chl.choice].y = (children[i,chl.index].y+children[i,chl.index].height/2 + y+height/2) / 2 - children[i,chl.choice].height/2;
        }
    

// Actual Drawing
dialog_draw_self();

