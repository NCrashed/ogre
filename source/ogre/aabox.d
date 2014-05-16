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
	
	mixin Wrapper!(AxisAlignedBox, AxisAlignedBoxHandle, destroy_axis_aligned_box);
}