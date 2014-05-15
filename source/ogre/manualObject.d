/**
*   Copyright: © 2014 Gushcha Anton
*   License: Subject to the terms of the MIT license, as written in the included LICENSE file.
*   Authors: NCrashed <ncrashed@gmail.com>
*/
module ogre.manualObject;

import ogre.c.fwd;
import ogre.wrapper;

class ManualObject
{
    this(ManualObjectHandle handle)
    {
        this.handle = handle;
    }
    
    mixin Wrapper!(ManualObject, ManualObjectHandle);
}