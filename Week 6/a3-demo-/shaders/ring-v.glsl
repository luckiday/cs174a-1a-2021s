#version 120

precision mediump float;
varying vec4 point_position;
varying vec4 center;

attribute vec3 position;
uniform mat4 model_transform;
uniform mat4 projection_camera_model_transform;

void main(){
    gl_Position = projection_camera_model_transform * vec4(position, 1.0 );
    point_position = model_transform * vec4(position, 1.);
    center = model_transform * vec4(0., 0., 0., 1.);
}