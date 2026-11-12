#version 330
#extension GL_ARB_separate_shader_objects : require

#include <minecraft:globals.glsl>
#include <switch:clock.glsl>

#define ROLE_TICKS 76.0
#define NAME_TICK 4.0
#define GOAL_TICK 14.0

#define TEXT_WIDTH 256.0
#define LINE_HEIGHT 12.0

uniform sampler2D TextSampler;

float ease_out(float x) {
    x = 1.0 - clamp(x, 0.0, 1.0);
    return 1.0 - x * x * x;
}

// Screen pixels per font pixel for a text `size` layout units tall, whole so the font pixels stay square.
float text_scale(float size, float unit) {
    return max(1.0, floor(size * unit * 0.9 + 0.5));
}

// Coverage of one text line, centred on `center` (screen pixels, y down), `scale` screen pixels per font pixel.
float text(int line, vec2 pixel, vec2 center, float scale) {
    vec2 local = floor((pixel - center) / scale + vec2(TEXT_WIDTH, LINE_HEIGHT) * 0.5);
    if (local.x < 0.0 || local.x >= TEXT_WIDTH || local.y < 0.0 || local.y >= LINE_HEIGHT) return 0.0;
    return texelFetch(TextSampler, ivec2(local) + ivec2(0, line * int(LINE_HEIGHT)), 0).r;
}

// White text over its own drop shadow.
vec3 draw_text(vec3 color, int line, vec2 pixel, vec2 center, float scale, float alpha) {
    color = mix(color, vec3(0.0), 0.75 * alpha * text(line, pixel - vec2(scale), center, scale));
    return mix(color, vec3(1.0), alpha * text(line, pixel, center, scale));
}


uniform sampler2D ClockSampler;
uniform sampler2D InSampler;

layout(std140) uniform RoleConfig {
    vec3 Color;
};

layout(location = 0) in vec2 texCoord;
layout(location = 0) out vec4 fragColor;

void main() {
    vec3 scene = texture(InSampler, texCoord).rgb;
    float ticks = clock_elapsed(texture(ClockSampler, vec2(0.5)), GameTime);
    if (ticks >= ROLE_TICKS) {
        fragColor = vec4(scene, 1.0);
        return;
    }

    vec2 pixel = vec2(texCoord.x, 1.0 - texCoord.y) * ScreenSize;
    vec2 center = floor(ScreenSize * 0.5);
    float unit = max(1.0, floor(min(ScreenSize.x / 640.0, ScreenSize.y / 360.0)));
    float bandY = center.y - unit * 90.0;
    float shown = 1.0 - smoothstep(ROLE_TICKS - 12.0, ROLE_TICKS, ticks);

    // Edges: a flash of the role colour that settles into a tinted vignette.
    float edge = smoothstep(0.3, 1.0, length(texCoord - 0.5) * 1.4);
    vec3 color = mix(scene, Color, edge * (0.25 + 0.45 * exp(-0.3 * ticks)) * shown);

    // Band: a dark strip fading out sideways, edged by two rails of the role colour.
    float opened = ease_out(ticks / 6.0) * shown * (1.0 - smoothstep(0.3, 0.5, abs(texCoord.x - 0.5)));
    float fromBand = abs(pixel.y - bandY);
    float halfBand = unit * 36.0 * opened;
    float inBand = step(fromBand, halfBand);
    color = mix(color, vec3(0.02), 0.65 * inBand * opened);
    color = mix(color, Color, step(abs(fromBand - halfBand), unit) * opened);

    float prefixScale = text_scale(2.0, unit);
    color = draw_text(color, 0, pixel, vec2(center.x, bandY - unit * 20.0), prefixScale, smoothstep(2.0, 6.0, ticks) * shown);

    // Role name: lands from a larger size in white, its colours splitting apart, and settles in the role colour.
    float slam = 1.0 - ease_out((ticks - NAME_TICK) / 5.0);
    float nameScale = text_scale(4.0, unit) * (1.0 + 0.75 * slam);
    vec2 split = vec2(slam * unit * 10.0, 0.0);
    vec2 nameCenter = vec2(center.x, bandY + unit * 8.0);
    float named = step(NAME_TICK, ticks) * shown;
    color = mix(color, vec3(0.0), 0.75 * named * text(1, pixel - vec2(nameScale), nameCenter, nameScale));
    color = mix(color, mix(Color, vec3(1.0), slam), named * vec3(
        text(1, pixel + split, nameCenter, nameScale),
        text(1, pixel, nameCenter, nameScale),
        text(1, pixel - split, nameCenter, nameScale)
    ));
    color += Color * 0.4 * named * inBand * exp(-0.6 * (ticks - NAME_TICK));

    // Goal: unrolls from its middle while rising into place under the band.
    float entered = ease_out((ticks - GOAL_TICK) / 8.0) * step(GOAL_TICK, ticks);
    float goalScale = text_scale(2.0, unit);
    float unrolled = step(abs(pixel.x - center.x), entered * TEXT_WIDTH * goalScale * 0.5);
    color = draw_text(color, 2, pixel, vec2(center.x, bandY + unit * (54.0 + 6.0 * (1.0 - entered))), goalScale, unrolled * shown);

    fragColor = vec4(color, 1.0);
}
