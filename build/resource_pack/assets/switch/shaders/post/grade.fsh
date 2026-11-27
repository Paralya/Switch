#version 330
#extension GL_ARB_separate_shader_objects : require

#include <minecraft:globals.glsl>
#include <switch:clock.glsl>

#define FADE_TICKS 40.0

uniform sampler2D ClockSampler;
uniform sampler2D InSampler;

layout(std140) uniform GradeConfig {
    vec3 Tint;
    float Vignette;
    float Desaturate;
    float Breath;
};

layout(location = 0) in vec2 texCoord;
layout(location = 0) out vec4 fragColor;

void main() {
    vec3 scene = texture(InSampler, texCoord).rgb;
    float fade = clock_ramp(texture(ClockSampler, vec2(0.5)), GameTime, FADE_TICKS);
    float luma = dot(scene, vec3(0.2126, 0.7152, 0.0722));
    vec3 graded = mix(scene, vec3(luma), Desaturate) * Tint;

    // The vignette radius breathes over 4 s, far under the 3 luminance changes per second of WCAG 2.3.1
    vec2 fromCenter = (texCoord - 0.5) * vec2(ScreenSize.x / ScreenSize.y, 1.0);
    float breath = 1.0 + Breath * sin(GameTime * 24000.0 * 6.2831853 / 80.0);
    graded *= 1.0 - Vignette * smoothstep(0.3, 1.0, length(fromCenter) * breath);
    fragColor = vec4(mix(scene, graded, fade), 1.0);
}
