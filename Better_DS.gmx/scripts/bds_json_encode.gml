///bds_json_encode( json ds )
//
// "Better Data Structures"
// A set of hacks to work around ds_ limitations
//
// 2017/01/21 @jujuadams
// If you use this, shoot me a tweet!
//
// With thanks to salvakiya

var _root = argument0;

if ( frac( _root )*10 == ds_type_list ) {
    
    var _map = ds_map_create();
    ds_map_add_list( _map, "_", _root );
    
    var _str = json_encode( _map );
    _str = string_copy( _str, 8, string_length( _str ) - 9 );
    
    ds_map_replace( _map, "_", 0 );
    ds_map_destroy( _map );
    
} else {
    
    var _str = json_encode( _root );
    
}

return _str;
