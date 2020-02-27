if (children[0,chl.index] != noone)
    for (var i=0; i<array_height_2d(children); i++)
    {
        if (children[i,chl.choice] != noone)
            with (children[i,chl.choice])
                instance_destroy();
    }
    
// Relinks paths
if (children[0, chl.index]!=noone && parent!=noone)
{
    for (var j=0; j<array_height_2d(parent.children); j++)
        if (parent.children[j, chl.index] == self)
        {
            parent.children[j, chl.index] = children[0, chl.index];
            children[0, chl.index].parent = parent.children[j, chl.index];
        }
}
else
    parent.children[0, chl.index] = noone;

if (instance_exists(textbox))
    with (textbox)
        instance_destroy();

with (self)
    instance_destroy();