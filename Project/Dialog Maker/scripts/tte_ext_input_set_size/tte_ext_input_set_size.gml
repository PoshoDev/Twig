/// @description  tte_ext_input_set_size( width, height )
/// @param  width
/// @param  height 
width = argument[0];
height = argument[1];

if( surface != -1 ) surface_free( surface );
surface = -1;
