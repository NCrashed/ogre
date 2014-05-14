/**
*   Copyright: © 2014 Gushcha Anton
*   License: Subject to the terms of the MIT license, as written in the included LICENSE file.
*   Authors: NCrashed <ncrashed@gmail.com>
*/
module ogre.render.window;

import ogre.c.fwd;
import ogre.wrapper;

class RenderWindow
{
	this(RenderWindowHandle handle)
	{
		this.handle = handle;
	}
	
	mixin Wrapper!(RenderWindow, RenderWindowHandle);
}