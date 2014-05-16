/**
*   Copyright: © 2011-2014 llcoi Team
*   License: Subject to the terms of the MIT license, as written in the included LICENSE file.
*   Authors: llcoi Team, NCrashed <ncrashed@gmail.com>
*/
module ogre.c.camera;

import ogre.c.fwd;
import core.stdc.config;

extern(C) nothrow:

CameraHandle create_camera(const char* camera_name);

void camera_set_polygon_mode(CameraHandle handle, polygon_mode sd);

polygon_mode camera_get_polygon_mode(const CameraHandle handle);

void camera_move(CameraHandle handle, const float x, const float y, const float z);

void camera_move_relative(CameraHandle handle, const float x, const float y, const float z);

void camera_set_direction(CameraHandle handle, const float x, const float y, const float z);

void camera_get_direction(CameraHandle handle, coiVector3* v3);

void camera_get_up(CameraHandle handle, coiVector3* up);

void camera_get_right(CameraHandle handle, coiVector3* right);

void camera_set_near_clip_distance(CameraHandle camera_handle, float k);

void camera_set_far_clip_distance(CameraHandle camera_handle, float d);

void camera_set_aspect_ratio(CameraHandle camera_handle, float w, float h);

void camera_set_aspect_ratio_ex(CameraHandle handle, float ratio);

float camera_get_aspect_ratio(CameraHandle handle);

void camera_set_auto_aspect_ratio(CameraHandle camera_handle, int on);

void camera_set_fovy(CameraHandle camera_handle, float angle);

void camera_set_frustum_offset(CameraHandle camera_handle, const int offset_x, const int offset_y);

void camera_set_focal_length(CameraHandle camera_handle, float fl);

void camera_set_position(CameraHandle camera_handle, const float x, const float y, const float z);

void camera_get_position(CameraHandle handle, coiVector3* result);

void camera_lookat(CameraHandle camera_handle, const float x, const float y, const float z);

void camera_roll(CameraHandle handle, coiReal angle);

void camera_yaw(CameraHandle handle, coiReal angle);

void camera_pitch(CameraHandle handle, coiReal angle);

void camera_rotate(CameraHandle handle, const coiVector3* axis, coiReal angle);

void camera_rotate_q(CameraHandle handle, const coiQuaternion* q);

void camera_set_fixed_yaw_axis(CameraHandle handle, int on, const coiVector3* fixed_axis);

void camera_get_orientation(CameraHandle handle, coiQuaternion* orientation);

void camera_set_orientation(CameraHandle handle, const coiQuaternion* orientation);

void camera_get_derived_orientation(CameraHandle handle, coiQuaternion* orientation);

void camera_get_derived_position(CameraHandle handle, coiVector3* position);

void camera_get_derived_direction(CameraHandle handle, coiVector3* direction);

void camera_get_derived_up(CameraHandle handle, coiVector3* up);

void camera_get_derived_right(CameraHandle handle, coiVector3* right);

void camera_set_autotracking(CameraHandle handle, int on, SceneNodeHandle sn_handle, const coiVector3* offset);

void camera_set_lod_bias(CameraHandle handle, coiReal factor);

coiReal camera_get_lod_bias(CameraHandle handle);

void camera_get_camera_to_viewport_ray(CameraHandle handle, coiReal screenx, coiReal screeny, RayHandle ray);

void camera_set_window(CameraHandle handle, coiReal left, coiReal top, coiReal right, coiReal bottom);

SceneManagerHandle camera_get_scenemanager(CameraHandle handle);

