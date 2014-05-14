/**
*   Copyright: © 2014 Gushcha Anton
*   License: Subject to the terms of the MIT license, as written in the included LICENSE file.
*   Authors: NCrashed <ncrashed@gmail.com>
*/
module ogre.root;

import core.stdc.config;
import core.time;
import std.string;
import ogre.c.root;
import ogre.c.fwd;
import ogre.wrapper;
import ogre.scene.manager;
import ogre.render.system;
import ogre.render.window;

class Root
{
	static Root singleton()
	{
		return new Root;
	}
	
	private this()
	{
		handle = root_singleton;
	}
	
	this(string pluginFileName, string configFileName, string logFileName)
	{
		handle = create_root(pluginFileName.toStringz
			               , configFileName.toStringz
			               , logFileName.toStringz);
	}
	
	SceneManager createSceneManagerByMask(SceneTypeMask typeMask, string instanceName)
	{
		return new SceneManager(
			root_create_scene_manager_by_mask(handle, typeMask, instanceName.toStringz));
	}
	
	RenderSystemList getAvailableRenderers()
	{
		return new RenderSystemList(
			root_get_available_renderers(handle));
	}
	
	RenderWindow initialise(bool autoCreateWindow, string renderWindowTitle)
	{
		return new RenderWindow(root_initialise(handle, cast(int)autoCreateWindow,
				renderWindowTitle.toStringz));
	}
	
	RenderWindow createRenderWindow(string name, uint width, uint height, bool fullScreen)
	{
		return new RenderWindow(create_render_window(handle, name.toStringz, width, height
				, cast(int)fullScreen));
	}
	
	RenderWindow createRenderWindowHwnd(string name, uint width, uint height, bool fullScreen, void* hwnd)
	{
		return new RenderWindow(create_render_window_hwnd(handle, name.toStringz, width, height
				, cast(int)fullScreen, cast(c_ulong)hwnd));
	}
	
	RenderWindow createRenderWindowGlContext(string name, uint width, uint height, bool fullScreen)
	{
		return new RenderWindow(create_render_window_gl_context(handle, name.toStringz, width, height
				, cast(int)fullScreen));
	}

	bool isInitialised()
	{
		return cast(bool)root_is_initialised(handle);
	}
	
	void saveConfig()
	{
		save_config(handle);
	}
	
	bool restoreConfig()
	{
		return cast(bool)restore_config(handle);
	}
	
	bool showConfigDialog()
	{
		return cast(bool)show_config_dialog(handle);
	}
	
	void addRenderSystem(RenderSystem renderSystem)
	{
		return add_render_system(handle, renderSystem.handle);
	}
	
	void setRenderSystem(RenderSystem renderSystem)
	{
		set_render_system(handle, renderSystem.handle);
	}

	RenderSystem getRenderSystem()
	{
		return new RenderSystem(get_render_system(handle));
	}
	
	RenderSystem getRenderSystemByName(string renderSystemName)
	{
		return new RenderSystem(get_render_system_by_name(handle, renderSystemName.toStringz));
	}
	
	void loadOgrePlugin(string plugin)
	{
		load_ogre_plugin(handle, plugin.toStringz);
	}
	
	bool renderOneFrame()
	{
		return cast(bool)render_one_frame(handle);
	}
	
	bool renderOneFrameEx(TickDuration timeSinceLastFrame)
	{
		return cast(bool)render_one_frame_ex(handle, timeSinceLastFrame.to!("seconds", float));
	}
	
	SceneManager createSceneManager(string typeName, string instanceName)
	{
		return new SceneManager(create_scene_manager(handle
				, typeName.toStringz, instanceName.toStringz));
	}
	
	SceneManager getSceneManagerByName(string sceneManagerInstanceName)
	{
		return new SceneManager(get_scene_manager_by_name(handle
				, sceneManagerInstanceName.toStringz));
	}

	mixin Wrapper!(Root, RootHandle, delete_root);
}