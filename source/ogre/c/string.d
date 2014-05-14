/**
*   Copyright: © 2014 Gushcha Anton
*   License: Subject to the terms of the MIT license, as written in the included LICENSE file.
*   Authors: NCrashed <ncrashed@gmail.com>
*/
module ogre.c.string;

import std.array;
import std.traits;
public import std.string : toStringz;

/**
 *	Returns new string formed from C-style (null-terminated) string $(D msg). Useful
 *	when interfacing with C libraries. For D-style to C-style convertion use std.string.toStringz.
 *
 *	Params:
 *		msg	The C string to convert.
 */
string fromStringz( const char* msg ) pure nothrow
{
    scope(failure) return "";
    if( msg is null ) return "";

    auto buff = appender!(char[]);
    uint i = 0;
    while( msg[i] != cast(char)0 )
    {
        buff.put(msg[i++]);
    }

    return buff.data.idup;
}
/// Example
unittest
{
    char[] cstring = "some string".dup ~ cast(char)0;

    assert(cstring.ptr.fromStringz == "some string");
    assert(null.fromStringz == "");
}