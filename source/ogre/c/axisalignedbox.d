/**
*   Copyright: © 2011-2014 llcoi Team
*   License: Subject to the terms of the MIT license, as written in the included LICENSE file.
*   Authors: llcoi Team, NCrashed <ncrashed@gmail.com>
*/
module ogre.c.axisalignedbox;

import ogre.c.fwd;

extern(C) nothrow:

// Ogre::AxisAlignedBox
AxisAlignedBoxHandle create_axis_aligned_box();
AxisAlignedBoxHandle create_axis_aligned_box_ex(Extent e);
AxisAlignedBoxHandle create_axis_aligned_box_v3(const coiVector3* min, const coiVector3* max);
void destroy_axis_aligned_box(AxisAlignedBoxHandle handle);
void axisalignedbox_get_size(AxisAlignedBoxHandle handle, coiVector3* size);
void axisalignedbox_get_minimum(AxisAlignedBoxHandle handle, coiVector3* minimum);
void axisalignedbox_get_maximum(AxisAlignedBoxHandle handle, coiVector3* maximum);
void axisalignedbox_set_minimum_x(AxisAlignedBoxHandle handle, coiReal x);
void axisalignedbox_set_minimum_y(AxisAlignedBoxHandle handle, coiReal y);
void axisalignedbox_set_minimum_z(AxisAlignedBoxHandle handle, coiReal z);
void axisalignedbox_set_minimum(AxisAlignedBoxHandle handle, const coiVector3* min);
void axisalignedbox_set_maximum(AxisAlignedBoxHandle handle, const coiVector3* max);
void axisalignedbox_set_maximum_x(AxisAlignedBoxHandle handle, coiReal x);
void axisalignedbox_set_maximum_y(AxisAlignedBoxHandle handle, coiReal y);
void axisalignedbox_set_maximum_z(AxisAlignedBoxHandle handle, coiReal z);
void axisalignedbox_set_extents(AxisAlignedBoxHandle handle, const coiVector3* min, const coiVector3* max);
void axisalignedbox_get_corner(AxisAlignedBoxHandle handle, CornerEnum e, coiVector3* corner);
