if (children[0,chl.index] != noone)
    for (var i=0; i<array_height_2d(children); i++)
        if (instance_exists(children[i,chl.index]))
        {
            var par_x = x+width;
            var par_y = y+height/2;
            
            var chil_x = children[i,chl.index].x;
            var chil_y = children[i,chl.index].y+children[i,chl.index].height/2;
            
            var h = 8;
            
            var ang = point_direction(par_x, par_y, chil_x, chil_y);
    
            var mx = chil_x;
            var my = chil_y;
            
            var ax = mx + h * cos(degtorad(ang));
            var ay = my - h * sin(degtorad(ang));
            
            var dx = mx - h/2 * cos(degtorad(ang));
            var dy = my + h/2 * sin(degtorad(ang));
            
            var l = h * 1.5 / 2;
            
            var px = l * cos(degtorad(ang+90));
            var py = l * sin(degtorad(ang+90));
            
            var bx = dx + px;
            var by = dy - py
            
            var cx = dx - px
            var cy = dy + py;
            
            draw_set_color(c_white);
            draw_triangle_color(ax, ay, bx, by, cx, cy, c_white, c_white, c_white, false);
            draw_line_width(par_x, par_y, chil_x, chil_y, 2);
        }