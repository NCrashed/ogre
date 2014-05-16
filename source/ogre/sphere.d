/**
*   Copyright: © 2014 Gushcha Anton
*   License: Subject to the terms of the MIT license, as written in the included LICENSE file.
*   Authors: NCrashed <ncrashed@gmail.com>
*/
module ogre.sphere;

import ogre.c.fwd;
import ogre.c.sphere;
import ogre.wrapper;
import ogre.vector;

class Sphere
{
	this(SphereHandle handle)
	{
		this.handle = handle;
	}
	
	this(Vector3 center, float radius)
	{
		this.handle = create_sphere(&center.data, radius);
	}
	
	mixin Wrapper!(Sphere, SphereHandle, destroy_sphere);
}
