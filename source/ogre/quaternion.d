/**
*   Copyright: © 2014 Gushcha Anton
*   License: Subject to the terms of the MIT license, as written in the included LICENSE file.
*   Authors: NCrashed <ncrashed@gmail.com>
*/
module ogre.quaternion;

import ogre.c.fwd;
import ogre.wrapper;

class Quaternion
{
    this(coiQuaternion* handle)
    {
        this.handle = handle;
    }
    
    mixin Wrapper!(Quaternion, coiQuaternion*);
}