/**
*   Copyright: © 2011-2014 llcoi Team
*   License: Subject to the terms of the MIT license, as written in the included LICENSE file.
*   Authors: llcoi Team, NCrashed <ncrashed@gmail.com>
*/
module ogre.c.resourcegroupmanager;

import ogre.c.fwd;

extern(C) nothrow:

ResourceGroupManagerHandle resourcegroupmanager_singleton();
void setup_resources(const char* resources_cfg);
//ResourceGroupManagerHandle create_resourcegroupmanager();
//void destroy_resourcegroupmanager(ResourceGroupManagerHandle handle);
void resourcegroupmanager_setup_resources(const char* resources_cfg);
void resourcegroupmanager_add_resource_location(ResourceGroupManagerHandle handle, const char* location, const char* type, const char* group);
const char* resourcegroupmanager_DEFAULT_RESOURCE_GROUP_NAME();
const char* resourcegroupmanager_INTERNAL_RESOURCE_GROUP_NAME();
const char* resourcegroupmanager_AUTODETECT_RESOURCE_GROUP_NAME();
size_t resourcegroupmanager_RESOURCE_SYSTEM_NUM_REFERENCE_COUNTS();
void resourcegroupmanager_initialise_all_resourcegroups(ResourceGroupManagerHandle handle);