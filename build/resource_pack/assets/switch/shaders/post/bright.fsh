#version 330
#extension GL_ARB_separate_shader_objects : require

uniform sampler2D InSampler;

layout(std140) uniform SamplerInfo {
    vec2 OutSize;
    vec2 InSize;
};

layout(location = 0) in vec2 texCoord;
layout(location = 0) out vec4 fragColor;

void main() {
    vec2 texel = 1.0 / InSize;
    vec3 color = 0.25 * (
        texture(InSampler, texCoord + texel * vec2(-1.0, -1.0)).rgb + texture(InSampler, texCoord + texel * vec2(1.0, -1.0)).rgb +
        texture(InSampler, texCoord + texel * vec2(-1.0, 1.0)).rgb + texture(InSampler, texCoord + texel * vec2(1.0, 1.0)).rgb
    );
    float peak = max(color.r, max(color.g, color.b));
    fragColor = vec4(color * smoothstep(0.4, 0.6, peak), 1.0);
}
