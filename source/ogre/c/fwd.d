/**
*   Copyright: © 2011-2014 llcoi Team
*   License: Subject to the terms of the MIT license, as written in the included LICENSE file.
*   Authors: llcoi Team, NCrashed <ncrashed@gmail.com>
*/
module ogre.c.fwd;

import core.stdc.config;

extern(C) nothrow:

/********* DEFINES **********/
enum EVENT_FRAME_STARTED = 1;
enum EVENT_FRAME_RENDERING_QUEUED = 2;
enum EVENT_FRAME_ENDED = 4;


/******* SIMPLE TYPES *******/
alias float coiReal;
// From OgrePlatform.h
alias uint uint32;
alias ushort uint16;
alias ubyte uint8;
alias int int32;
alias short int16;
alias byte int8;
// OgreColourValue.h
alias uint32 RGBA;
alias uint32 ARGB;
alias uint32 ABGR;
alias uint32 BGRA;
// OgreSceneManager.h
alias uint16 SceneTypeMask;


/********* HANDLES **********/
alias void* AxisAlignedBoxHandle;
alias void* BoneHandle;
//alias vector<ushort>::type BoneHandleMap;
alias void* BorderPanelOverlayElementFactoryHandle;
alias void* CameraHandle;
alias void* coiResourceHandle;
alias void* EntityHandle;
alias void* FrameListenerHandle;
alias void* IndexDataHandle;
alias void* InputManagerHandle;
alias void* KeyboardInputHandle;
alias void* LightHandle;
alias void  function(coiResourceHandle handle, void* userdata) loadingCompleteCB;
alias void* LogHandle;
alias void* LogListenerHandle;
alias void* LogManagerHandle;
alias void* ManualObjectHandle;
alias void* ManualObjectSectionHandle;
alias void* ManualResourceLoaderHandle;
alias void* MaterialHandle;
alias void* MaterialManagerHandle;
alias void* MaterialPtrHandle;
alias void* MeshHandle;
alias void* MeshPtrHandle;
alias void* MouseInputHandle;
alias void* MouseListenerHandle;
alias void* MovableObjectHandle;
alias void* NameValuePairListHandle;
alias void* NodeHandle;
alias void* OverlayContainerHandle;
alias void* OverlayElementFactoryHandle;
alias void* OverlayElementHandle;
alias void* OverlayHandle;
alias void* OverlayManagerHandle;
alias void* PanelOverlayElementFactoryHandle;
alias void* PanelOverlayElementHandle;
alias void* ParamListHandle;
alias void* PassHandle;
alias void* PlaneBoundedVolumeHandle;
alias void* PlaneHandle;
alias void* PlaneListHandle;
alias void function(coiResourceHandle handle, void* userdata) preparingCompleteCB;
alias void* RayHandle;
alias void* RaySceneQueryHandle;
alias void* RaySceneQueryListenerHandle;
alias void* RaySceneQueryResultHandle;
alias void* RenderableHandle;
alias void* RenderOperationHandle;
alias void* RenderSystemHandle;
alias void* RenderSystemListHandle;
alias void* RenderWindowHandle;
alias ulong ResourceHandle;
alias void* ResourceGroupManagerHandle;
alias void* ResourceListenerHandle;
alias void* ResourceManagerHandle;
alias void* ResourcePtrHandle;
alias void* RootHandle;
alias void* SceneManagerHandle;
alias void* SceneNodeHandle;
alias void* SceneQueryHandle;
alias void* SceneQueryListenerHandle;
alias void* SceneQueryResultHandle;
alias void* SkeletonHandle;
alias void* SkeletonInstanceHandle;
alias void* SphereHandle;
alias void* TagPointHandle;
alias void* TechniqueHandle;
alias void* TextureManagerHandle;
alias void* TextAreaOverlayElementFactoryHandle;
alias void* TextAreaOverlayElementHandle;
alias void* TimerHandle;
alias void function(coiResourceHandle handle, void* userdata) unloadingCompleteCB;
alias void* VertexDataHandle;
alias void* ViewportHandle;
alias void function(RenderWindowHandle) WindowListenerEvent;
alias void* WindowListenerHandle;

/********** OTHER ***********/
struct coiQuaternion
{
    coiReal w;
    coiReal x;
    coiReal y;
    coiReal z;
}

struct coiVector2
{
    coiReal x;
    coiReal y;
}

struct coiVector3
{
    coiReal x;
    coiReal y;
    coiReal z;
}

struct coiVector4
{
    coiReal x;
    coiReal y;
    coiReal z;
    coiReal w;
}

struct coiMatrix3
{
    coiReal[3][3] m;
}

struct coiMatrix4
{
    coiReal[4][4] m;
}

struct ViewPoint
{
    coiVector3 position;
    coiQuaternion orientation;
}


struct coiColourValue
{
    float r;
    float g;
    float b;
    float a;
}


struct FrameStats
{
    float lastFPS;
    float avgFPS;
    float bestFPS;
    float worstFPS;
    c_ulong bestFrameTime;
    c_ulong worstFrameTime;
    size_t triangleCount;
    size_t batchCount;
}


struct hardware_animation_data
{
    ushort target_buffer_index;
    coiReal parametric;
}

// Start enums
// OgreBlendMode.h

enum scene_blend_type
{
    SBT_TRANSPARENT_ALPHA,
    SBT_TRANSPARENT_COLOUR,
    SBT_ADD,
    SBT_MODULATE,
    SBT_REPLACE
}

enum scene_blend_factor
{
    SBF_ONE,
    SBF_ZERO,
    SBF_DEST_COLOUR,
    SBF_SOURCE_COLOUR,
    SBF_ONE_MINUS_DEST_COLOUR,
    SBF_ONE_MINUS_SOURCE_COLOUR,
    SBF_DEST_ALPHA,
    SBF_SOURCE_ALPHA,
    SBF_ONE_MINUS_DEST_ALPHA,
    SBF_ONE_MINUS_SOURCE_ALPHA
}

enum scene_blend_operation
{
    SBO_ADD,
    SBO_SUBTRACT,
    SBO_REVERSE_SUBTRACT,
    SBO_MIN,
    SBO_MAX
}

enum layer_blend_type
{
    LBT_COLOUR,
    LBT_ALPHA
}

enum layer_blend_operation
{
    LBO_REPLACE,
    LBO_ADD,
    LBO_MODULATE,
    LBO_ALPHA_BLEND
}

enum layer_blend_operation_ex
{
    LBX_SOURCE1,
    LBX_SOURCE2,
    LBX_MODULATE,
    LBX_MODULATE_X2,
    LBX_MODULATE_X4,
    LBX_ADD,
    LBX_ADD_SIGNED,
    LBX_ADD_SMOOTH,
    LBX_SUBTRACT,
    LBX_BLEND_DIFFUSE_ALPHA,
    LBX_BLEND_TEXTURE_ALPHA,
    LBX_BLEND_CURRENT_ALPHA,
    LBX_BLEND_MANUAL,
    LBX_DOTPRODUCT,
    LBX_BLEND_DIFFUSE_COLOUR
}

enum layer_blend_source
{
    LBS_CURRENT,
    LBS_TEXTURE,
    LBS_DIFFUSE,
    LBS_SPECULAR,
    LBS_MANUAL
}


// OgreRenderTarget.h
enum stat_flags
{
    SF_NONE           = 0,
    SF_FPS            = 1,
    SF_AVG_FPS        = 2,
    SF_BEST_FPS       = 4,
    SF_WORST_FPS      = 8,
    SF_TRIANGLE_COUNT = 16,
    SF_ALL            = 0xFFFF
}

enum frame_buffer
{
    FB_FRONT,
    FB_BACK,
    FB_AUTO
}

// OgreHardwareBuffer.h
enum hardware_buffer_usage
{
    HBU_STATIC = 1,
    HBU_DYNAMIC = 2,
    HBU_WRITE_ONLY = 4,
    HBU_DISCARDABLE = 8,
    HBU_STATIC_WRITE_ONLY = 5, 
    HBU_DYNAMIC_WRITE_ONLY = 6,
    HBU_DYNAMIC_WRITE_ONLY_DISCARDABLE = 14
}

//OgreLight.h
enum light_types
{
    LT_POINT = 0,
    LT_DIRECTIONAL = 1,
    LT_SPOTLIGHT = 2
}

//OgreNode.h
enum transform_space
{
    TS_LOCAL,
    TS_PARENT,
    TS_WORLD
}

// OgrePlane.h
enum plane_side
{
    NO_SIDE,
    POSITIVE_SIDE,
    NEGATIVE_SIDE,
    BOTH_SIDE
}


//OgreAxisAlignedBox.h
enum Extent
{
    EXTENT_NULL,
    EXTENT_FINITE,
    EXTENT_INFINITE
}

enum CornerEnum
{
    FAR_LEFT_BOTTOM = 0,
    FAR_LEFT_TOP = 1,
    FAR_RIGHT_TOP = 2,
    FAR_RIGHT_BOTTOM = 3,
    NEAR_RIGHT_BOTTOM = 7,
    NEAR_LEFT_BOTTOM = 6,
    NEAR_LEFT_TOP = 5,
    NEAR_RIGHT_TOP = 4
}

//OgreSceneQuery.h
enum world_fragment_type
{
    WFT_NONE,
    WFT_PLANE_BOUNDED_REGION,
    WFT_SINGLE_INTERSECTION,
    WFT_CUSTOM_GEOMETRY,
    WFT_RENDER_OPERATION
}

//OgreLog.h
enum logging_level
{
    LL_LOW = 1,
    LL_NORMAL = 2,
    LL_BOREME = 3
}

enum log_message_level
{
    LML_TRIVIAL = 1,
    LML_NORMAL = 2,
    LML_CRITICAL = 3
}


enum orientation_mode
{
    OR_DEGREE_0       = 0,
    OR_DEGREE_90      = 1,
    OR_DEGREE_180     = 2,
    OR_DEGREE_270     = 3,

    OR_PORTRAIT       = OR_DEGREE_0,
    OR_LANDSCAPERIGHT = OR_DEGREE_90,
    OR_LANDSCAPELEFT  = OR_DEGREE_270
}

enum projection_type
{
    PT_ORTHOGRAPHIC,
    PT_PERSPECTIVE
}

enum frustum_plane
{
    FRUSTUM_PLANE_NEAR   = 0,
    FRUSTUM_PLANE_FAR    = 1,
    FRUSTUM_PLANE_LEFT   = 2,
    FRUSTUM_PLANE_RIGHT  = 3,
    FRUSTUM_PLANE_TOP    = 4,
    FRUSTUM_PLANE_BOTTOM = 5
}

enum gui_metrics_mode
{
    GMM_RELATIVE,
    GMM_PIXELS,
    GMM_RELATIVE_ASPECT_ADJUSTED
}

enum gui_horizontal_alignment
{
    GHA_LEFT,
    GHA_CENTER,
    GHA_RIGHT
}

enum gui_vertical_alignment
{
    GVA_TOP,
    GVA_CENTER,
    GVA_BOTTOM
}

enum textarea_overlayelement_alignment
{
    Left,
    Right,
    Center
}

enum skeleton_animation_blend_mode
{
    ANIMBLEND_AVERAGE = 0,
    ANIMBLEND_CUMULATIVE = 1
}

// OgreRenderOperation.h
enum operation_type
{
    OT_POINT_LIST = 1,
    OT_LINE_LIST = 2,
    OT_LINE_STRIP = 3,
    OT_TRIANGLE_LIST = 4,
    OT_TRIANGLE_STRIP = 5,
    OT_TRIANGLE_FAN = 6
}

enum scene_type
{
    ST_GENERIC = 1,
    ST_EXTERIOR_CLOSE = 2,
    ST_EXTERIOR_FAR = 4,
    ST_EXTERIOR_REAL_FAR = 8,
    ST_INTERIOR = 16
}


// OgreResource.h

enum loading_state
{
    LOADSTATE_UNLOADED,
    LOADSTATE_LOADING,
    LOADSTATE_LOADED,
    LOADSTATE_UNLOADING,
    LOADSTATE_PREPARED,
    LOADSTATE_PREPARING
}



// OgreCommon.h

enum compare_function
{
    CMPF_ALWAYS_FAIL,
    CMPF_ALWAYS_PASS,
    CMPF_LESS,
    CMPF_LESS_EQUAL,
    CMPF_EQUAL,
    CMPF_NOT_EQUAL,
    CMPF_GREATER_EQUAL,
    CMPF_GREATER
}

enum texture_filter_options
{
    TFO_NONE,
    TFO_BILINEAR,
    TFO_TRILINEAR,
    TFO_ANISOTROPIC
}

enum filter_type
{
    FT_MIN,
    FT_MAG,
    FT_MIP
}

enum filter_options
{
    FO_NONE,
    FO_POINT,
    FO_LINEAR,
    FO_ANISOTROPIC
}

enum shade_options
{
    SO_FLAT,
    SO_GOURAUD,
    SO_PHONG
}

enum fog_mode
{
    FOG_NONE,
    FOG_EXP,
    FOG_EXP2,
    FOG_LINEAR
}

enum culling_mode
{
    CULL_NONE = 1,
    CULL_CLOCKWISE = 2,
    CULL_ANTICLOCKWISE = 3
}

enum manual_culling_mode
{
    MANUAL_CULL_NONE = 1,
    MANUAL_CULL_BACK = 2,
    MANUAL_CULL_FRONT = 3
}

enum waveform_type
{
    WFT_SINE,
    WFT_TRIANGLE,
    WFT_SQUARE,
    WFT_SAWTOOTH,
    WFT_INVERSE_SAWTOOTH,
    WFT_PWM
}

enum polygon_mode
{
    PM_POINTS = 1,
    PM_WIREFRAME = 2,
    PM_SOLID = 3
}

enum shadow_technique
{
    SHADOWTYPE_NONE = 0x00,
    SHADOWDETAILTYPE_ADDITIVE = 0x01,
    SHADOWDETAILTYPE_MODULATIVE = 0x02,
    SHADOWDETAILTYPE_INTEGRATED = 0x04,
    SHADOWDETAILTYPE_STENCIL = 0x10,
    SHADOWDETAILTYPE_TEXTURE = 0x20,
    SHADOWTYPE_STENCIL_MODULATIVE = 0x12,
    SHADOWTYPE_STENCIL_ADDITIVE = 0x11,
    SHADOWTYPE_TEXTURE_MODULATIVE = 0x22,
    SHADOWTYPE_TEXTURE_ADDITIVE = 0x21,
    SHADOWTYPE_TEXTURE_ADDITIVE_INTEGRATED = 0x25,
    SHADOWTYPE_TEXTURE_MODULATIVE_INTEGRATED = 0x26
}

alias int track_vertex_colour_type;

enum track_vertex_colour_enum
{
    TVC_NONE        = 0x0,
    TVC_AMBIENT     = 0x1,        
    TVC_DIFFUSE     = 0x2,
    TVC_SPECULAR    = 0x4,
    TVC_EMISSIVE    = 0x8
}

enum sort_mode
{
    SM_DIRECTION,
    SM_DISTANCE
}

enum frame_buffer_type
{
    FBT_COLOUR  = 0x1,
    FBT_DEPTH   = 0x2,
    FBT_STENCIL = 0x4
}

enum instance_manager_flags
{
    IM_USE16BIT		= 0x0001,
    IM_VTFBESTFIT	= 0x0002,
    IM_VTFBONEMATRIXLOOKUP = 0x0004,
    IM_USEBONEDUALQUATERNIONS = 0x0008,
    IM_USEONEWEIGHT = 0x0010,
    IM_FORCEONEWEIGHT = 0x0020,
    IM_USEALL		= IM_USE16BIT|IM_VTFBESTFIT|IM_USEONEWEIGHT
}

enum clip_result
{
    CLIPPED_NONE = 0,
    CLIPPED_SOME = 1, 
    CLIPPED_ALL = 2
}

struct FrameEvent
{
    coiReal time_since_last_event;
    coiReal time_since_last_frame;
}

alias int function(const FrameEvent* event, void* userdata) FrameStarted;
alias int function(const FrameEvent* event, void* userdata) FrameEnded;
alias int function(const FrameEvent* event, void* userdata) FrameQueued;
alias int function(float,float,int) FrameListenerEvent;

enum KeyCode
{
    KC_UNASSIGNED  = 0x00,
    KC_ESCAPE      = 0x01,
    KC_1           = 0x02,
    KC_2           = 0x03,
    KC_3           = 0x04,
    KC_4           = 0x05,
    KC_5           = 0x06,
    KC_6           = 0x07,
    KC_7           = 0x08,
    KC_8           = 0x09,
    KC_9           = 0x0A,
    KC_0           = 0x0B,
    KC_MINUS       = 0x0C,    // - on main keyboard
    KC_EQUALS      = 0x0D,
    KC_BACK        = 0x0E,    // backspace
    KC_TAB         = 0x0F,
    KC_Q           = 0x10,
    KC_W           = 0x11,
    KC_E           = 0x12,
    KC_R           = 0x13,
    KC_T           = 0x14,
    KC_Y           = 0x15,
    KC_U           = 0x16,
    KC_I           = 0x17,
    KC_O           = 0x18,
    KC_P           = 0x19,
    KC_LBRACKET    = 0x1A,
    KC_RBRACKET    = 0x1B,
    KC_RETURN      = 0x1C,    // Enter on main keyboard
    KC_LCONTROL    = 0x1D,
    KC_A           = 0x1E,
    KC_S           = 0x1F,
    KC_D           = 0x20,
    KC_F           = 0x21,
    KC_G           = 0x22,
    KC_H           = 0x23,
    KC_J           = 0x24,
    KC_K           = 0x25,
    KC_L           = 0x26,
    KC_SEMICOLON   = 0x27,
    KC_APOSTROPHE  = 0x28,
    KC_GRAVE       = 0x29,    // accent
    KC_LSHIFT      = 0x2A,
    KC_BACKSLASH   = 0x2B,
    KC_Z           = 0x2C,
    KC_X           = 0x2D,
    KC_C           = 0x2E,
    KC_V           = 0x2F,
    KC_B           = 0x30,
    KC_N           = 0x31,
    KC_M           = 0x32,
    KC_COMMA       = 0x33,
    KC_PERIOD      = 0x34,    // . on main keyboard
    KC_SLASH       = 0x35,    // / on main keyboard
    KC_RSHIFT      = 0x36,
    KC_MULTIPLY    = 0x37,    // * on numeric keypad
    KC_LMENU       = 0x38,    // left Alt
    KC_SPACE       = 0x39,
    KC_CAPITAL     = 0x3A,
    KC_F1          = 0x3B,
    KC_F2          = 0x3C,
    KC_F3          = 0x3D,
    KC_F4          = 0x3E,
    KC_F5          = 0x3F,
    KC_F6          = 0x40,
    KC_F7          = 0x41,
    KC_F8          = 0x42,
    KC_F9          = 0x43,
    KC_F10         = 0x44,
    KC_NUMLOCK     = 0x45,
    KC_SCROLL      = 0x46,    // Scroll Lock
    KC_NUMPAD7     = 0x47,
    KC_NUMPAD8     = 0x48,
    KC_NUMPAD9     = 0x49,
    KC_SUBTRACT    = 0x4A,    // - on numeric keypad
    KC_NUMPAD4     = 0x4B,
    KC_NUMPAD5     = 0x4C,
    KC_NUMPAD6     = 0x4D,
    KC_ADD         = 0x4E,    // + on numeric keypad
    KC_NUMPAD1     = 0x4F,
    KC_NUMPAD2     = 0x50,
    KC_NUMPAD3     = 0x51,
    KC_NUMPAD0     = 0x52,
    KC_DECIMAL     = 0x53,    // . on numeric keypad
    KC_OEM_102     = 0x56,    // < > | on UK/Germany keyboards
    KC_F11         = 0x57,
    KC_F12         = 0x58,
    KC_F13         = 0x64,    //                     (NEC PC98)
    KC_F14         = 0x65,    //                     (NEC PC98)
    KC_F15         = 0x66,    //                     (NEC PC98)
    KC_KANA        = 0x70,    // (Japanese keyboard)
    KC_ABNT_C1     = 0x73,    // / ? on Portugese (Brazilian) keyboards
    KC_CONVERT     = 0x79,    // (Japanese keyboard)
    KC_NOCONVERT   = 0x7B,    // (Japanese keyboard)
    KC_YEN         = 0x7D,    // (Japanese keyboard)
    KC_ABNT_C2     = 0x7E,    // Numpad . on Portugese (Brazilian) keyboards
    KC_NUMPADEQUALS= 0x8D,    // = on numeric keypad (NEC PC98)
    KC_PREVTRACK   = 0x90,    // Previous Track (KC_CIRCUMFLEX on Japanese keyboard)
    KC_AT          = 0x91,    //                     (NEC PC98)
    KC_COLON       = 0x92,    //                     (NEC PC98)
    KC_UNDERLINE   = 0x93,    //                     (NEC PC98)
    KC_KANJI       = 0x94,    // (Japanese keyboard)
    KC_STOP        = 0x95,    //                     (NEC PC98)
    KC_AX          = 0x96,    //                     (Japan AX)
    KC_UNLABELED   = 0x97,    //                        (J3100)
    KC_NEXTTRACK   = 0x99,    // Next Track
    KC_NUMPADENTER = 0x9C,    // Enter on numeric keypad
    KC_RCONTROL    = 0x9D,
    KC_MUTE        = 0xA0,    // Mute
    KC_CALCULATOR  = 0xA1,    // Calculator
    KC_PLAYPAUSE   = 0xA2,    // Play / Pause
    KC_MEDIASTOP   = 0xA4,    // Media Stop
    KC_VOLUMEDOWN  = 0xAE,    // Volume -
    KC_VOLUMEUP    = 0xB0,    // Volume +
    KC_WEBHOME     = 0xB2,    // Web home
    KC_NUMPADCOMMA = 0xB3,    // , on numeric keypad (NEC PC98)
    KC_DIVIDE      = 0xB5,    // / on numeric keypad
    KC_SYSRQ       = 0xB7,
    KC_RMENU       = 0xB8,    // right Alt
    KC_PAUSE       = 0xC5,    // Pause
    KC_HOME        = 0xC7,    // Home on arrow keypad
    KC_UP          = 0xC8,    // UpArrow on arrow keypad
    KC_PGUP        = 0xC9,    // PgUp on arrow keypad
    KC_LEFT        = 0xCB,    // LeftArrow on arrow keypad
    KC_RIGHT       = 0xCD,    // RightArrow on arrow keypad
    KC_END         = 0xCF,    // End on arrow keypad
    KC_DOWN        = 0xD0,    // DownArrow on arrow keypad
    KC_PGDOWN      = 0xD1,    // PgDn on arrow keypad
    KC_INSERT      = 0xD2,    // Insert on arrow keypad
    KC_DELETE      = 0xD3,    // Delete on arrow keypad
    KC_LWIN        = 0xDB,    // Left Windows key
    KC_RWIN        = 0xDC,    // Right Windows key
    KC_APPS        = 0xDD,    // AppMenu key
    KC_POWER       = 0xDE,    // System Power
    KC_SLEEP       = 0xDF,    // System Sleep
    KC_WAKE        = 0xE3,    // System Wake
    KC_WEBSEARCH   = 0xE5,    // Web Search
    KC_WEBFAVORITES= 0xE6,    // Web Favorites
    KC_WEBREFRESH  = 0xE7,    // Web Refresh
    KC_WEBSTOP     = 0xE8,    // Web Stop
    KC_WEBFORWARD  = 0xE9,    // Web Forward
    KC_WEBBACK     = 0xEA,    // Web Back
    KC_MYCOMPUTER  = 0xEB,    // My Computer
    KC_MAIL        = 0xEC,    // Mail
    KC_MEDIASELECT = 0xED     // Media Select
}

struct KeyEvent
{
    KeyCode key;
    uint text;
}

enum KeyModifier
{
    Shift = 0x0000001,
    Ctrl  = 0x0000010,
    Alt   = 0x0000100
}

struct Axis
{
    //! Absolute and Relative value components
    int abs, rel;
    //! Indicates if this Axis only supports absolute (ie JoyStick)
    int absOnly;
}

struct MouseState
{
    Axis X;
    Axis Y;
    Axis Z;
    int buttons;
}

enum MouseButtonID
{
    MB_Left = 0, MB_Right, MB_Middle,
    MB_Button3, MB_Button4, MB_Button5, MB_Button6, MB_Button7
}

// Callbacks for MouseListeners
alias int function(const MouseState* event, void* userdata) MouseMovedEvent;
alias int function(const MouseState* event, MouseButtonID id, void* userdata) MousePressedEvent;
alias int function(const MouseState* event, MouseButtonID id, void* userdata) MouseReleasedEvent;

alias void function(const char* message, log_message_level lml, int maskDebug, const char* log_name, int skip_message) LogListenerEvent;

// Same as LogListenerEvent but allows the client to
// send additional data via a void pointer. We assume the
// client knows what they're doing if they use this. (:
alias void function(const char* message, log_message_level lml, int maskDebug, const char* log_name, int skip_message, void* userdata) LogListenerCtx;

struct ray_pair
{
    int intersects;
    coiReal distance;
}

struct world_fragment
{
    world_fragment_type fragment_type;
    coiVector3 single_intersection;
    PlaneListHandle planes;
    void* geometry;
    RenderOperationHandle render_op;
    
}

struct rayscenequery_result_entry
{
    coiReal distance;
    MovableObjectHandle movable;
    world_fragment* fragment;

}

alias int function(const world_fragment* frag, void* userdata) SceneQueryFragmentResult;
alias int function(MovableObjectHandle handle, void* userdata) SceneQueryObjectResult;

alias int function(const world_fragment* frag, coiReal distance, void* userdata) RaySceneQueryFragmentResult;
alias int function(MovableObjectHandle handle, coiReal distance, void* userdata) RaySceneQueryObjectResult;
