/**
*   Copyright: © 2014 Gushcha Anton
*   License: Subject to the terms of the MIT license, as written in the included LICENSE file.
*   Authors: NCrashed <ncrashed@gmail.com>
*/
module ogre.ray;

import ogre.c.fwd;
import ogre.c.ray;
import ogre.wrapper;
import ogre.vector;
import ogre.plane;
import ogre.aabox;
import ogre.sphere;

class Ray
{
	this(Vector3 origin, Vector3 direction)
	{
		this.handle = create_ray(&origin.data, &direction.data);
	}
	
    this(RayHandle* handle)
    {
        this.handle = handle;
    }
    
    void origin(Vector3 v)
    {
    	ray_set_origin(handle, &v.data);
    }
    
    Vector3 origin()
    {
    	Vector3 v;
    	ray_get_origin(handle, &v.data);
    	return v;
    }
    
    void direction(Vector3 v)
    {
    	ray_set_direction(handle, &v.data);
    }
    
    Vector3 direction()
    {
    	Vector3 v;
    	ray_get_direction(handle, &v.data);
    	return v;
    }
    
    Vector3 point(float units)
    {
    	Vector3 v;
    	ray_get_point(handle, units, &v.data);
    	return v;
    }
    
    bool intersects(Plane plane, out float distance)
    {
    	ray_pair pair;
    	ray_intersects_plane(handle, plane.handle, &pair);
    	distance = pair.distance;
    	return cast(bool)pair.intersects;
    }
    
    bool intersects(AxisAlignedBox box, out float distance)
    {
    	ray_pair pair;
    	ray_intersects_axisalignedbox(handle, box.handle, &pair);
    	distance = pair.distance;
    	return cast(bool)pair.intersects;
    }
    
    bool intersects(Sphere sphere, out float distance)
    {
    	ray_pair pair;
    	ray_intersects_sphere(handle, sphere.handle, &pair);
    	distance = pair.distance;
    	return cast(bool)pair.intersects;
    }
    
    mixin Wrapper!(Ray, RayHandle, destroy_ray);
}