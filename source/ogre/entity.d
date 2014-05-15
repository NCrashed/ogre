/**
*   Copyright: © 2014 Gushcha Anton
*   License: Subject to the terms of the MIT license, as written in the included LICENSE file.
*   Authors: NCrashed <ncrashed@gmail.com>
*/
module ogre.entity;

import ogre.c.fwd;
import ogre.wrapper;

class Entity
{
    this(EntityHandle handle)
    {
        this.handle = handle;
    }
    
    mixin Wrapper!(Entity, EntityHandle);
}