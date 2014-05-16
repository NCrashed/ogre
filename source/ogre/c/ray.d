/**
*   Copyright: © 2011-2014 llcoi Team
*   License: Subject to the terms of the MIT license, as written in the included LICENSE file.
*   Authors: llcoi Team, NCrashed <ncrashed@gmail.com>
*/
module ogre.c.ray;

import ogre.c.fwd;

extern(C) nothrow:

RayHandle create_ray(const coiVector3* origin, const coiVector3* direction);
void destroy_ray(RayHandle handle);
//Ray::setOrigin
void ray_set_origin(RayHandle handle, const coiVector3* origin);
//Ray::getOrigin
void ray_get_origin(RayHandle handle, coiVector3* origin);
//Ray::setDirection
void ray_set_direction(RayHandle handle, const coiVector3* direction);
//Ray::getDirection
void ray_get_direction(RayHandle handle, coiVector3* direction);
//Ray::getPoint
void ray_get_point(RayHandle handle, coiReal units, coiVector3* point);
//Ray::intersects(Plane)
void ray_intersects_plane(RayHandle handle, PlaneHandle plane_handle, ray_pair* result);
//Ray::intersects(AxisAlignedBox)
void ray_intersects_axisalignedbox(RayHandle handle, AxisAlignedBoxHandle query_handle, ray_pair* result);
//Ray::intersects(Sphere)
void ray_intersects_sphere(RayHandle handle, SphereHandle query_handle, ray_pair* result);

