/**
*   Copyright: © 2014 Gushcha Anton
*   License: Subject to the terms of the MIT license, as written in the included LICENSE file.
*   Authors: NCrashed <ncrashed@gmail.com>
*/
module ogre.scene.query;

import ogre.c.fwd;
import ogre.wrapper;

class SceneQuery
{
    this(SceneQueryHandle handle)
    {
        this.handle = handle;
    }
    
    mixin Wrapper!(SceneQuery, SceneQueryHandle);
}

class RaySceneQuery
{
    this(RaySceneQueryHandle handle)
    {
        this.handle = handle;
    }
    
    mixin Wrapper!(RaySceneQuery, RaySceneQueryHandle);
}