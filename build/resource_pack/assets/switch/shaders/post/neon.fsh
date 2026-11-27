#version 330
#extension GL_ARB_separate_shader_objects : require

#include <minecraft:globals.glsl>
#include <switch:clock.glsl>

#define FADE_TICKS 40.0

uniform sampler2D ClockSampler;
uniform sampler2D InSampler;
uniform sampler2D BloomSampler;

layout(std140) uniform NeonConfig {
    float Strength;
    float Vignette;
    float Saturate;
};

layout(location = 0) in vec2 texCoord;
layout(location = 0) out vec4 fragColor;

void main() {
    vec3 scene = texture(InSampler, texCoord).rgb;
    float fade = clock_ramp(texture(ClockSampler, vec2(0.5)), GameTime, FADE_TICKS);
    float luma = dot(scene, vec3(0.2126, 0.7152, 0.0722));
    vec3 graded = mix(vec3(luma), scene, 1.0 + Saturate);

    // A screen blend never goes past 1, so an explosion is not amplified into a white flash
    graded = 1.0 - (1.0 - clamp(graded, 0.0, 1.0)) * (1.0 - Strength * texture(BloomSampler, texCoord).rgb);
    vec2 fromCenter = (texCoord - 0.5) * vec2(ScreenSize.x / ScreenSize.y, 1.0);
    graded *= 1.0 - Vignette * smoothstep(0.4, 1.0, length(fromCenter));
    fragColor = vec4(mix(scene, graded, fade), 1.0);
}
