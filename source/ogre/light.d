/**
*   Copyright: © 2014 Gushcha Anton
*   License: Subject to the terms of the MIT license, as written in the included LICENSE file.
*   Authors: NCrashed <ncrashed@gmail.com>
*/
module ogre.light;

import ogre.c.fwd;
import ogre.wrapper;

class Light
{
    this(LightHandle handle)
    {
        this.handle = handle;
    }
    
    mixin Wrapper!(Light, LightHandle);
}