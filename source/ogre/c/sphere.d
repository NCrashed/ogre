/**
*   Copyright: © 2011-2014 llcoi Team
*   License: Subject to the terms of the MIT license, as written in the included LICENSE file.
*   Authors: llcoi Team, NCrashed <ncrashed@gmail.com>
*/
module ogre.c.sphere;

import ogre.c.fwd;

extern(C) nothrow:

SphereHandle create_sphere(const coiVector3* center, coiReal radius);
void destroy_sphere(SphereHandle handle);
//Real getRadius(void) const
void sphere_set_radius(SphereHandle handle, coiReal radius);
//void getRadius(Real)
coiReal sphere_get_radius(SphereHandle handle);
//void setCenter(Vector3)
void sphere_set_center(SphereHandle handle, const coiVector3* center);
//Real getCenter(void) const
void sphere_get_center(SphereHandle handle, coiVector3* center);
// bool intersects(Sphere&) const
int sphere_intersects_sphere(SphereHandle handle, SphereHandle query);
// bool intersects(AxisAlignedBox&) const
int sphere_intersects_axisalignedbox(SphereHandle handle, AxisAlignedBoxHandle query);
// bool intersects(Plane&) const
int sphere_intersects_plane(SphereHandle handle, PlaneHandle query);
// bool intersects(Vector3&) const
int sphere_intersects_vector3(SphereHandle handle, const coiVector3* query);
// void merge(const Sphere&)
void sphere_merge(SphereHandle handle, SphereHandle other_sphere);