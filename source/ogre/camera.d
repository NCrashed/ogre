/**
*   Copyright: © 2014 Gushcha Anton
*   License: Subject to the terms of the MIT license, as written in the included LICENSE file.
*   Authors: NCrashed <ncrashed@gmail.com>
*/
module ogre.camera;

import ogre.c.fwd;
import ogre.c.string;
import ogre.c.camera;
import ogre.wrapper;
import ogre.ray;
import ogre.vector;
import ogre.quaternion;
import ogre.scene.manager;
import ogre.scene.node;

alias PolygonMode = polygon_mode;

class Camera
{
	this(string cameraName)
	{
		this.handle = create_camera(cameraName.toStringz);
	}
	
    this(CameraHandle handle)
    {
        this.handle = handle;
    }
    
    void setPolygonMode(PolygonMode mode)
    {
    	camera_set_polygon_mode(handle, mode);
    }
    
    PolygonMode polygonMode()
    {
    	return camera_get_polygon_mode(handle);
    }
    
    void move(float x, float y, float z)
    {
    	camera_move(handle, x, y, z);
    }
    
    void moveRelative(float x, float y, float z)
    {
    	camera_move_relative(handle, x, y, z);    	
    }
    
    void setDirection(float x, float y, float z)
    {
    	camera_set_direction(handle, x, y, z);
    }
    
    Vector3 direction()
    {
    	Vector3 vec;
    	camera_get_direction(handle, &vec.data);
    	return vec; 
    }
    
    Vector3 up()
    {
    	Vector3 vec;
    	camera_get_up(handle, &vec.data);
    	return vec; 
    }
    
    Vector3 right()
    {
    	Vector3 vec;
    	camera_get_right(handle, &vec.data);
    	return vec; 
    }
    
    void nearClipDistance(float val)
    {
    	camera_set_near_clip_distance(handle, val);
    }
    
    void farClipDistance(float val)
    {
    	camera_set_far_clip_distance(handle, val);
    }
    
    void aspectRatio(float w, float h)
    {
    	camera_set_aspect_ratio(handle, w, h);
    }
    
    void aspectRatio(float ratio)
    {
    	camera_set_aspect_ratio_ex(handle, ratio);
    }
    
    float aspectRatio()
    {
    	return camera_get_aspect_ratio(handle);
    }
    
    void autoAspectRatio(bool on)
    {
    	camera_set_auto_aspect_ratio(handle, cast(int)on);
    }
    
    void fovy(float angle)
    {
    	camera_set_fovy(handle, angle);
    }
    
    void frustumOffset(int offset_x, int offset_y)
    {
    	camera_set_frustum_offset(handle, offset_x, offset_y);
    }
    
    void focalLength(float fl)
    {
    	camera_set_focal_length(handle, fl);
    }
    
    void position(float x, float y, float z)
    {
    	camera_set_position(handle, x, y, z);
    }
    
    Vector3 position()
    {
    	Vector3 vec;
    	camera_get_position(handle, &vec.data);
    	return vec;
    }
    
    void lookAt(float x, float y, float z)
    {
    	camera_lookat(handle, x, y, z);
    }
    
    void roll(coiReal a)
    {
    	camera_roll(handle, a);
    }
    
    void yaw(coiReal a)
    {
    	camera_yaw(handle, a);
    }
    
    void pitch(coiReal a)
    {
    	camera_pitch(handle, a);
    }
    
    void rotate(Vector3 axis, coiReal angle)
    {
    	camera_rotate(handle, &axis.data, angle);
    }
    
    void rotate(Quaternion q)
    {
    	camera_rotate_q(handle, &q.data);
    }
    
    void setFixedYawAxis(bool on, Vector3 axis)
    {
    	camera_set_fixed_yaw_axis(handle, cast(int)on, &axis.data);
    }
    
    Quaternion orientation()
    {
    	Quaternion q;
    	camera_get_orientation(handle, &q.data);
    	return q;
    }
    
    void orientation(Quaternion q)
    {
    	camera_set_orientation(handle, &q.data);
    }
    
    Quaternion derivedOrientation()
    {
    	Quaternion q;
    	camera_get_derived_orientation(handle, &q.data);
    	return q;
    }
    
    Vector3 derivedPosition()
    {
    	Vector3 v;
    	camera_get_derived_position(handle, &v.data);
    	return v;
    }
    
    Vector3 derivedUp()
    {
    	Vector3 v;
    	camera_get_derived_up(handle, &v.data);
    	return v;
    }
    
    Vector3 derivedRight() 
    {
    	Vector3 v;
    	camera_get_derived_right(handle, &v.data);
    	return v;
    }
    
    void setAutotracking(bool on, SceneNode node, Vector3 offset)
    {
    	camera_set_autotracking(handle, cast(int)on, node.handle, &offset.data);
    } 
    
    void lodBias(coiReal factor)
    {
    	camera_set_lod_bias(handle, factor);
    }
    
    float loadBias()
    {
    	return camera_get_lod_bias(handle);
    }
    
    Ray getCameraToViewportRay(coiReal screenx, coiReal screeny)
    {
    	Ray ray;/// TODO: create ray
    	assert(ray.handle);
    	camera_get_camera_to_viewport_ray(handle, screenx, screeny, ray.handle);
    	return ray;
    }
    
    void setWindow(coiReal left, coiReal top, coiReal right, coiReal bottom)
    {
    	camera_set_window(handle, left, top, right, bottom);
    }
    
    SceneManager sceneManager()
    {
    	return new SceneManager(camera_get_scenemanager(handle));
    }
    
    mixin Wrapper!(Camera, CameraHandle);
}