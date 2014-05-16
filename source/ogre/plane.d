/**
*   Copyright: © 2014 Gushcha Anton
*   License: Subject to the terms of the MIT license, as written in the included LICENSE file.
*   Authors: NCrashed <ncrashed@gmail.com>
*/
module ogre.plane;

import ogre.c.fwd;
import ogre.c.plane;
import ogre.wrapper;
import ogre.vector;

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
	
	Vector3 normal()
	{
		Vector3 v;
		plane_get_normal(handle, &v.data);
		return v;
	}
	
	void normal(Vector3 v)
	{
		plane_set_normal(handle, &v.data);
	}
	
	coiReal d()
	{
		return plane_get_d(handle);
	}
	
	void d(coiReal value)
	{
		plane_set_d(handle, value);
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