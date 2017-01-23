///bds_create( type, [width, height] )
//
// "Better Data Structures"
// A set of hacks to work around ds_ limitations
//
// 2016/11/11 @jujuadams
// If you use this, shoot me a tweet!
//
// With thanks to salvakiya

if ( argument_count < 1 ) return undefined;

var _ds, _type = argument[0];
switch( _type ) {
    case ds_type_grid:     _ds = ds_grid_create( argument[1], argument[2] ); break;
    case ds_type_list:     _ds = ds_list_create(); break;
    case ds_type_map:      _ds = ds_map_create( ); break;
    case ds_type_priority: _ds = ds_priority_create(); break;
    case ds_type_queue:    _ds = ds_queue_create(); break;
    case ds_type_stack:    _ds = ds_stack_create(); break;
    default: return undefined; break;
}

return _ds + 0.1*_type;
