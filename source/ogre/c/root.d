/**
*   Copyright: © 2011-2014 llcoi Team
*   License: Subject to the terms of the MIT license, as written in the included LICENSE file.
*   Authors: llcoi Team, NCrashed <ncrashed@gmail.com>
*/
module ogre.c.root;

import core.stdc.config;
import ogre.c.fwd;

extern(C) nothrow:

RootHandle root_singleton();

RootHandle create_root(const char* pluginFileName, const char* configFileName, const char* logFileName);
TimerHandle root_get_timer(RootHandle root_handle);

SceneManagerHandle root_create_scene_manager_by_mask(RootHandle root_handle, SceneTypeMask type_mask, const char* instance_name);
//RenderWindowHandle root_create_render_window(const char* name, unsigned int width, unsigned int height, int fullscreen, NameValuePairListHandle params);
RenderSystemListHandle root_get_available_renderers(RootHandle root_handle);

void delete_root(RootHandle root_handle);

RenderWindowHandle root_initialise(RootHandle root_handle, int auto_create_window, const char* render_window_title);

RenderWindowHandle create_render_window(RootHandle root_handle, const char* name, const int width, const int height, const int full_screen);

RenderWindowHandle create_render_window_hwnd(RootHandle root_handle, const char* name, const int width, const int height, const int full_screen, c_ulong hwnd);

RenderWindowHandle create_render_window_gl_context(RootHandle root_handle, const char* name, const int width, const int height, const int full_screen);

int root_is_initialised(RootHandle root_handle);

void save_config(RootHandle root_handle);

int restore_config(RootHandle root_handle);

int show_config_dialog(RootHandle root_handle);

void add_render_system(RootHandle root_handle, RenderSystemHandle render_system);

void set_render_system(RootHandle root_handle, RenderSystemHandle render_system);

RenderSystemHandle get_render_system(RootHandle root_handle);

RenderSystemHandle get_render_system_by_name(RootHandle root_handle, const char* render_system_name);

void load_ogre_plugin(RootHandle root_handle, const char * plugin);

int render_one_frame(RootHandle root_handle);

int render_one_frame_ex(RootHandle root_handle, float time_since_last_frame);

SceneManagerHandle create_scene_manager(RootHandle root_handle, const char* type_name, const char* instance_name);

SceneManagerHandle get_scene_manager_by_name(RootHandle root_handle, const char* scene_manager_instance_name);