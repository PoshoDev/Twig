if (dragging)
    draw_set_alpha(0.5);
    
draw_set_color(color);
draw_rectangle(x, y, x+width, y+height, false);

draw_set_color(c_red);
draw_rectangle(x+margin, y+margin, x+margin+portrait_size, y+margin+portrait_size, false);

draw_set_color(c_black);
draw_set_halign(fa_left);
draw_text(x+margin*2+portrait_size, y+margin, portrait_name);
draw_set_halign(fa_right);
draw_text(x+width-margin, y+margin, "#"+string(index));
draw_set_halign(fa_left);

if (selected)
{
    draw_set_color(c_white);
    draw_rectangle(x, y, x+width, y+height, true);
}

draw_set_color(c_white);
draw_set_alpha(1);

dialog_draw_arrows();