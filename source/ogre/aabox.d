/**
*   Copyright: © 2014 Gushcha Anton
*   License: Subject to the terms of the MIT license, as written in the included LICENSE file.
*   Authors: NCrashed <ncrashed@gmail.com>
*/
module ogre.aabox;

import ogre.c.fwd;
import ogre.c.axisalignedbox;
import ogre.wrapper;
import ogre.vector;

public import ogre.c.fwd : CornerEnum, Extent;

class AxisAlignedBox
{
	this(AxisAlignedBoxHandle handle)
	{
		this.handle = handle;
	}
	
	this()
	{
		this.handle = create_axis_aligned_box;
	}
	
	this(Extent e)
	{
		this.handle = create_axis_aligned_box_ex(e);
	}
	
	this(Vector3 min, Vector3 max)
	{
		this.handle = create_axis_aligned_box_v3(&min.data, &max.data);
	}
	
	Vector3 size()
	{
		Vector3 v;
		axisalignedbox_get_size(handle, &v.data);
		return v;
	}
	
	Vector3 minimum()
	{
		Vector3 v;
		axisalignedbox_get_minimum(handle, &v.data);
		return v;
	}
	
	Vector3 maximum()
	{
		Vector3 v;
		axisalignedbox_get_maximum(handle, &v.data);
		return v;
	}
	
	void minimumX(coiReal x)
	{
		axisalignedbox_set_minimum_x(handle, x);
	}
	
	void minimumY(coiReal y)
	{
		axisalignedbox_set_minimum_y(handle, y);
	}
	
	void minimumZ(coiReal z)
	{
		axisalignedbox_set_minimum_z(handle, z);
	}
	
	void minimum(Vector3 v)
	{
		axisalignedbox_set_minimum(handle, &v.data);
	}
	
	void maximumX(coiReal x)
	{
		axisalignedbox_set_maximum_x(handle, x);
	}
	
	void maximumY(coiReal y)
	{
		axisalignedbox_set_maximum_y(handle, y);
	}
	
	void maximumZ(coiReal z)
	{
		axisalignedbox_set_maximum_z(handle, z);
	}
	
	void maximum(Vector3 v)
	{
		axisalignedbox_set_maximum(handle, &v.data);
	}
	
	void setExtents(Vector3 min, Vector3 max)
	{
		axisalignedbox_set_extents(handle, &min.data, &max.data);
	}
	
	Vector3 getCorner(CornerEnum e)
	{
		Vector3 v;
		axisalignedbox_get_corner(handle, e, &v.data);
		return v;
	}
	
	mixin Wrapper!(AxisAlignedBox, AxisAlignedBoxHandle, destroy_axis_aligned_box);
}