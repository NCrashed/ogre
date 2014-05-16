/**
*   Copyright: © 2014 Gushcha Anton
*   License: Subject to the terms of the MIT license, as written in the included LICENSE file.
*   Authors: NCrashed <ncrashed@gmail.com>
*/
module ogre.vector;

import ogre.c.fwd;

struct Vector3
{
	coiVector3 data;
	alias data this;
}