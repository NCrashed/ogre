/**
*   Copyright: © 2014 Gushcha Anton
*   License: Subject to the terms of the MIT license, as written in the included LICENSE file.
*   Authors: NCrashed <ncrashed@gmail.com>
*/
module ogre.wrapper;

mixin template Wrapper(T...)
{
	private
	{
		alias Type = T[0];
		alias HandleType = T[1];
		
		enum hasDestroyer = T.length >= 3;
		static if(hasDestroyer)
		{
			alias handleDestroyer = T[2];
		}
		
		HandleType _handle;
	}
	
	HandleType handle()
	{
		return _handle;
	}
	
	private void handle(HandleType value)
	{
		_handle = value;
	}
	
	static if(hasDestroyer)
	{
		override destroy()
		{
			handleDestroyer(_handle);
			_handle = null;
			super.destroy();
		}
	}
	
	// For associative arrays
	
	override hash_t toHash()
	{
		return cast(hash_t)_handle;
	}
	
	override bool opEquals(Object o) 
	{
		auto t = cast(Type)o;
		
		return t !is null && t._handle == _handle;	
	}
	
	override int opCmp(Object o)
	{
		auto t = cast(Type)o;

		if(t is null || _handle > t._handle) return -1;
		else if(_handle == t._handle) return 0;
		else return 1;
	}
}