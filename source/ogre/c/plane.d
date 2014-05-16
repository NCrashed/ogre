/**
*   Copyright: © 2011-2014 llcoi Team
*   License: Subject to the terms of the MIT license, as written in the included LICENSE file.
*   Authors: llcoi Team, NCrashed <ncrashed@gmail.com>
*/
module ogre.c.plane;

import ogre.c.fwd;

extern(C) nothrow:

// Plane
PlaneHandle plane_create_plane();
PlaneHandle plane_create_plane_normal(float x, float y, float z, float distance);
void plane_destroy_plane(PlaneHandle handle);
void plane_get_normal(PlaneHandle handle, coiVector3* normal);
void plane_set_normal(PlaneHandle handle, const coiVector3* normal);
coiReal plane_get_d(PlaneHandle handle);
void plane_set_d(PlaneHandle handle, coiReal d);

// PlaneList (typedef vector<Plane>::type PlaneList)
PlaneListHandle create_planelist();
void destroy_planelist(PlaneListHandle handle);