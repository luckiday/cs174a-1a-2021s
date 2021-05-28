#version 120

precision mediump float;
varying vec4 point_position;
varying vec4 center;

void main(){
    float distance = length(point_position.xyz-center.xyz);
    float v = (sin(distance*20.) + 1.)/2.;
    gl_FragColor = vec4(v, v, v, 1.);
}
