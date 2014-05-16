/**
*   Copyright: © 2014 Gushcha Anton
*   License: Subject to the terms of the MIT license, as written in the included LICENSE file.
*   Authors: NCrashed <ncrashed@gmail.com>
*/
module ogre.scene.manager;

public
{
	import ogre.c.fwd : SceneTypeMask;
}

import core.stdc.config;
import ogre.c.fwd;
import ogre.c.scenemanager;
import ogre.c.string;
import ogre.wrapper;
import ogre.scene.query;
import ogre.scene.node;
import ogre.entity;
import ogre.manualObject;
import ogre.light;
import ogre.camera;
import ogre.quaternion;
import ogre.ray;

enum SceneType
{
    Generic         = 1,
    ExteriorClose   = 2,
    ExteriorFar     = 4, //deprecated
    ExteriorRealFar = 8,
    Interior        = 16,
}

class SceneManager
{
	this(SceneManagerHandle handle)
	{
		this.handle = handle;
	}
	
	SceneNode createChildOfRootSceneNode(string nodeName)
	{
	    return new SceneNode(create_child_of_root_scenenode(handle, nodeName.toStringz));
	}
	
	Entity createEntity(string name, string meshName, string groupName)
	{
	    return new Entity(scenemanager_create_entity(handle, name.toStringz, meshName.toStringz, groupName.toStringz));
	}
	
	Camera createCamera(string name)
	{
	    return new Camera(scenemanager_create_camera(handle, name.toStringz));
	}
	
	ManualObject createManualObject(string name)
	{
	    return new ManualObject(scenemanager_create_manual_object(handle, name.toStringz));
	}
	
    ManualObject createManualObject()
    {
        return new ManualObject(scenemanager_create_manual_object_unnamed(handle));
    }
    
    ManualObject getManualObject(string name)
    {
        return new ManualObject(scenemanager_get_manual_object(handle, name.toStringz));
    }
    
    bool hasManualObject(string name)
    {
        return cast(bool)scenemanager_has_manual_object(handle, name.toStringz);
    }
    
    void destroyManualObject(ManualObject obj)
    {
        scenemanager_destroy_manual_object(handle, obj.handle);
    }
    
    void destroyManualObject(string name)
    {
        scenemanager_destroy_manual_object_by_name(handle, name.toStringz);
    }
    
    void destroyAllManualObjects()
    {
        scenemanager_destroy_all_manual_objects(handle);
    }
    
    SceneNode getRootSceneNode()
    {
        return new SceneNode(scenemanager_get_root_scene_node(handle));
    }
    
    Light createLight(string name)
    {
        return new Light(scenemanager_create_light(handle, name.toStringz));
    }
    
    Camera getCamera(string cameraName)
    {
        return new Camera(scenemanager_get_camera(handle, cameraName.toStringz));
    }
    
    void setSkyBox(bool enable, string materialName, float distance, bool drawFirst, Quaternion orientation, string groupName)
    {
        scenemanager_set_sky_box(handle, cast(int)enable, materialName.toStringz, distance, cast(int)drawFirst, &orientation.data, groupName.toStringz);
    }
    
    void setAmbientLightRgba(float r, float g, float b, float a)
    {
        scenemanager_set_ambient_light_rgba(handle, r, g, b, a);
    }
    
    void setAmbientLightRgb(float r, float g, float b)
    {
        scenemanager_set_ambient_light_rgb(handle, r, g, b);
    }
    
    void setSkyDome(bool enable, string materialName, float curvature, float tiling, float distance, bool drawFirst, Quaternion orientation, uint xsegments, uint ysegments, bool segmentsKeep, string groupName)
    {
        scenemanager_set_sky_dome(handle, cast(int)enable, materialName.toStringz, curvature, tiling, distance, cast(int)drawFirst, &orientation.data, xsegments, ysegments, cast(int)segmentsKeep, groupName.toStringz);
    }
    
    string getName()
    {
        return scenemanager_get_name(handle).fromStringz;
    }
    
    void destroySceneQuery(SceneQuery query)
    {
        scenemanager_destroy_scenequery(handle, query.handle);
    }
    
    RaySceneQuery createRayQuery(Ray ray, ulong mask) // TODO: simplify mask
    {
        return new RaySceneQuery(scenemanager_create_rayquery(handle, ray.handle, cast(c_ulong)mask));
    }
    
	mixin Wrapper!(SceneManager, SceneManagerHandle);
}