///bds_json_write( json ds, [key/index]..., value )
//
// "Better Data Structures"
// A set of hacks to work around ds_ limitations
//
// 2017/01/20 @jujuadams
// If you use this, shoot me a tweet!
//
// With thanks to salvakiya

var _ds = argument[0];

for( var _i = 1; _i < argument_count - 2; _i++ ) {
    
    switch( frac( _ds ) * 10 ) {
        case ds_type_list: _ds = ds_list_find_value( _ds, argument[_i] ); break;
        case ds_type_map:  _ds = ds_map_find_value(  _ds, argument[_i] ); break;
        default: exit;
    }
    
    if ( _ds == undefined ) exit;
    
}

switch( frac( _ds ) * 10 ) {
    case ds_type_list: ds_list_replace( _ds, argument[argument_count - 2], argument[argument_count - 1] ); break;
    case ds_type_map:  ds_map_replace(  _ds, argument[argument_count - 2], argument[argument_count - 1] ); break;
}
