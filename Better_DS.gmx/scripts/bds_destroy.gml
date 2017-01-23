///bds_destroy( ds )
//
// "Better Data Structures"
// A set of hacks to work around ds_ limitations
//
// 2016/11/11 @jujuadams
// If you use this, shoot me a tweet!
//
// With thanks to salvakiya

var _ds = argument0;

switch( frac( _ds ) * 10 ) {
    case ds_type_grid:     ds_grid_destroy( _ds );     break;
    case ds_type_list:     ds_list_destroy( _ds );     break;
    case ds_type_map:      ds_map_destroy( _ds );      break;
    case ds_type_priority: ds_priority_destroy( _ds ); break;
    case ds_type_queue:    ds_queue_destroy( _ds );    break;
    case ds_type_stack:    ds_stack_destroy( _ds );    break;
}
