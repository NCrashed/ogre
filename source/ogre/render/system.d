/**
*   Copyright: © 2014 Gushcha Anton
*   License: Subject to the terms of the MIT license, as written in the included LICENSE file.
*   Authors: NCrashed <ncrashed@gmail.com>
*/
module ogre.render.system;

import ogre.c.fwd;
import ogre.c.rendersystem;
import ogre.c.string;
import ogre.wrapper;

class RenderSystemList
{
	this(RenderSystemListHandle handle)
	{
		this.handle = handle;
	}
	
	size_t length()
	{
		return cast(size_t)render_system_list_size(handle);
	}
	
	size_t opDollar()
	{
		return cast(size_t)render_system_list_size(handle);
	}
	
	RenderSystem opIndex(size_t i)
	{
		assert(i < length);
		return new RenderSystem(render_system_list_get(handle, cast(uint)i));
	}
	
	int opApply(int delegate(RenderSystem) dg)
	{
		int result = 0;

		for (int i = 0; i < length; i++)
		{
			result = dg(this[i]);
			if (result)
				break;
		}
		return result;
	}
	
	mixin Wrapper!(RenderSystemList, RenderSystemListHandle, destroy_render_system_list);
}

class RenderSystem
{
	this(RenderSystemHandle handle)
	{
		this.handle = handle;
	}
	
	string name()
	{
		return render_system_get_name(handle).fromStringz;
	}
	
	void setConfigOption(string option, string value)
	{
		render_system_set_config_option(handle, option.toStringz, value.toStringz);
	}
	
	mixin Wrapper!(RenderSystem, RenderSystemHandle);
}