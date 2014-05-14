/**
*   Copyright: © 2011-2014 llcoi Team
*   License: Subject to the terms of the MIT license, as written in the included LICENSE file.
*   Authors: llcoi Team, NCrashed <ncrashed@gmail.com>
*/
module ogre.c.rendersystem;

import core.stdc.config;
import ogre.c.fwd;

extern(C) nothrow:

const char * render_system_get_name(RenderSystemHandle handle);
void render_system_set_config_option(RenderSystemHandle render_system_handle, const char* option, const char* value);
uint render_system_list_size(RenderSystemListHandle list_handle);
RenderSystemHandle render_system_list_get(RenderSystemListHandle list_handle, uint index);
void destroy_render_system_list(RenderSystemListHandle handle);