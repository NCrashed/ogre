/**
*   Copyright: © 2014 Gushcha Anton
*   License: Subject to the terms of the MIT license, as written in the included LICENSE file.
*   Authors: NCrashed <ncrashed@gmail.com>
*/
module ogre.resource.group;

import ogre.c.fwd;
import ogre.c.resourcegroupmanager;
import ogre.wrapper;
import ogre.c.string;

class ResourceGroupManager 
{
    static ResourceGroupManager singleton()
    {
        return new ResourceGroupManager(resourcegroupmanager_singleton);
    }
    
    static setupResources(string resourcesCfg)
    {
        resourcegroupmanager_setup_resources(resourcesCfg.toStringz);
    }

    void addResourceLocation(string location, string type, string group)
    {
        resourcegroupmanager_add_resource_location(handle, location.toStringz, type.toStringz, group.toStringz);
    }
    
    static string DEFAULT_RESOURCE_GROUP_NAME()
    {
        return resourcegroupmanager_DEFAULT_RESOURCE_GROUP_NAME.fromStringz;
    }
    
    static string INTERNAL_RESOURCE_GROUP_NAME()
    {
        return resourcegroupmanager_INTERNAL_RESOURCE_GROUP_NAME.fromStringz;
    }
    
    static string AUTODETECT_RESOURCE_GROUP_NAME()
    {
        return resourcegroupmanager_AUTODETECT_RESOURCE_GROUP_NAME.fromStringz;
    }
    
    static size_t RESOURCE_SYSTEM_NUM_REFERENCE_COUNTS()
    {
        return resourcegroupmanager_RESOURCE_SYSTEM_NUM_REFERENCE_COUNTS;
    }
    
    void initialiseAllResourceGroups()
    {
        resourcegroupmanager_initialise_all_resourcegroups(handle);
    }
    
    private this(ResourceGroupManagerHandle handle)
    {
        this.handle = handle;
    }
    
    mixin Wrapper!(ResourceGroupManager, ResourceGroupManagerHandle);
}