/**
*   Copyright: © 2014 Gushcha Anton
*   License: Subject to the terms of the MIT license, as written in the included LICENSE file.
*   Authors: NCrashed <ncrashed@gmail.com>
*/
module ogre.plane;

import ogre.c.fwd;
import ogre.c.plane;
import ogre.wrapper;

class Plane
{
	this(PlaneHandle handle)
	{
		this.handle = handle;
	}
	
	this()
	{
		this.handle = plane_create_plane();
	}
	
	this(float x, float y, float z, float distance)
	{
		this.handle = plane_create_plane_normal(x, y, z, distance);
	}
	
	mixin Wrapper!(Plane, PlaneHandle, plane_destroy_plane);
}

class PlaneList
{
	this(PlaneListHandle handle)
	{
		this.handle = handle;
	}
	
	this()
	{
		this.handle = create_planelist();
	}
	
	mixin Wrapper!(PlaneList, PlaneListHandle, destroy_planelist);
}