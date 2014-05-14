/**
*   Copyright: © 2014 Gushcha Anton
*   License: Subject to the terms of the MIT license, as written in the included LICENSE file.
*   Authors: NCrashed <ncrashed@gmail.com>
*/
module ogre.scene.manager;

public
{
	import ogre.c.fwd : SceneTypeMask;
}

import ogre.c.fwd;
import ogre.wrapper;

class SceneManager
{
	this(SceneManagerHandle handle)
	{
		this.handle = handle;
	}
	
	mixin Wrapper!(SceneManager, SceneManagerHandle);
}