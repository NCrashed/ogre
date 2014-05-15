/**
*   Copyright: © 2014 Gushcha Anton
*   License: Subject to the terms of the MIT license, as written in the included LICENSE file.
*   Authors: NCrashed <ncrashed@gmail.com>
*/
module ogre.ray;

import ogre.c.fwd;
import ogre.wrapper;

class Ray
{
    this(RayHandle* handle)
    {
        this.handle = handle;
    }
    
    mixin Wrapper!(Ray, RayHandle);
}