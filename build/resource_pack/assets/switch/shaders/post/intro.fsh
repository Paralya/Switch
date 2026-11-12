#version 330
#extension GL_ARB_separate_shader_objects : require

#include <minecraft:globals.glsl>
#include <switch:clock.glsl>

#define INTRO_TICKS 110.0
#define COVER_TICKS 10.0
#define TITLE_TICK 16.0
#define REVEAL_TICK 90.0
#define RULES 3
#define RULE_TICKS 30.0, 42.0, 54.0

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
uniform sampler2D BlurSampler;
uniform sampler2D DepthSampler;

layout(std140) uniform IntroConfig {
    vec3 Accent;
};

layout(location = 0) in vec2 texCoord;
layout(location = 0) out vec4 fragColor;

float hash(vec2 p) {
    return fract(sin(dot(p, vec2(127.1, 311.7))) * 43758.5453);
}

void main() {
    vec3 scene = texture(InSampler, texCoord).rgb;
    float ticks = clock_elapsed(texture(ClockSampler, vec2(0.5)), GameTime);
    if (ticks >= INTRO_TICKS) {
        fragColor = vec4(scene, 1.0);
        return;
    }

    // Everything is laid out in whole screen pixels, so the font pixels stay square at any resolution.
    vec2 pixel = vec2(texCoord.x, 1.0 - texCoord.y) * ScreenSize;
    vec2 center = floor(ScreenSize * 0.5);
    float unit = max(1.0, floor(min(ScreenSize.x / 640.0, ScreenSize.y / 360.0)));
    float titleY = center.y - unit * 40.0;

    // Cover: square cells grow one after the other, sweeping from the bottom left.
    float cellSize = unit * 20.0;
    vec2 cell = floor(pixel / cellSize);
    vec2 cells = ceil(ScreenSize / cellSize);
    float delay = 0.45 * cell.x / cells.x + 0.25 * (1.0 - cell.y / cells.y) + 0.3 * hash(cell);
    float grown = clamp((ticks / COVER_TICKS - 0.75 * delay) * 4.0, 0.0, 1.0);
    vec2 inCell = abs(fract(pixel / cellSize) - 0.5) * 2.0;
    float covered = grown > 0.0 && max(inCell.x, inCell.y) <= grown ? 1.0 : 0.0;

    // Reveal: a sphere grows from the camera and shows the map it has reached, while the far distance and the sky fade away.
    float blocks = min(0.05 / max(texture(DepthSampler, texCoord).r, 1.0e-6), 1500.0);
    float progress = clamp((ticks - REVEAL_TICK) / (INTRO_TICKS - REVEAL_TICK), 0.0, 1.0);
    float radius = exp(mix(log(2.0), log(2000.0), progress)) - 2.0;
    float revealed = mix(step(blocks, radius), smoothstep(0.35, 1.0, progress), smoothstep(64.0, 256.0, blocks));
    float front = revealed * smoothstep(radius * 0.6, radius, blocks) * (1.0 - progress);

    // Backdrop: the accent colour alone while the game launches behind it, then the blurred map.
    float stripes = step(0.5, fract((pixel.x + pixel.y) / (unit * 40.0) - ticks * 0.02));
    vec2 fromCenter = texCoord - 0.5;
    vec3 backdrop = mix(texture(BlurSampler, texCoord).rgb * 0.55, Accent * 0.3, 0.3) + Accent * 0.05 * stripes;
    backdrop *= 1.0 - 1.2 * dot(fromCenter, fromCenter);
    vec3 card = mix(Accent * (0.85 + 0.15 * stripes), backdrop, smoothstep(20.0, 32.0, ticks));

    // Title band: a dark strip opening behind the mode name, edged by two accent rails.
    float leaving = 1.0 - smoothstep(REVEAL_TICK - 8.0, REVEAL_TICK, ticks);
    float opened = ease_out((ticks - TITLE_TICK) / 6.0) * step(TITLE_TICK, ticks) * leaving;
    float fromTitle = abs(pixel.y - titleY);
    float halfBand = unit * 30.0 * opened;
    card = mix(card, vec3(0.02), 0.6 * step(fromTitle, halfBand) * opened);
    card = mix(card, Accent, step(abs(fromTitle - halfBand), unit) * opened);

    // Mode name: lands from a larger size, its colours splitting apart on the way in.
    float slam = 1.0 - ease_out((ticks - TITLE_TICK) / 5.0);
    float titleScale = text_scale(4.0, unit) * (1.0 + 0.75 * slam);
    vec2 split = vec2(slam * unit * 10.0, 0.0);
    vec2 titleCenter = vec2(center.x, titleY);
    float named = step(TITLE_TICK, ticks) * leaving;
    card = mix(card, vec3(0.0), 0.75 * named * text(0, pixel - vec2(titleScale), titleCenter, titleScale));
    card = mix(card, vec3(1.0), named * vec3(
        text(0, pixel + split, titleCenter, titleScale),
        text(0, pixel, titleCenter, titleScale),
        text(0, pixel - split, titleCenter, titleScale)
    ));
    card += 0.6 * named * exp(-0.6 * (ticks - TITLE_TICK));

    // Rules: each line unrolls from its middle while rising into place.
    float ruleTicks[RULES] = float[RULES](RULE_TICKS);
    float ruleScale = text_scale(2.0, unit);
    for (int rule = 0; rule < RULES; rule++) {
        float entered = ease_out((ticks - ruleTicks[rule]) / 8.0) * step(ruleTicks[rule], ticks);
        vec2 ruleCenter = vec2(center.x, titleY + unit * (52.0 + 26.0 * float(rule) + 6.0 * (1.0 - entered)));
        float unrolled = step(abs(pixel.x - center.x), entered * TEXT_WIDTH * ruleScale * 0.5);
        card = draw_text(card, rule + 1, pixel, ruleCenter, ruleScale, unrolled * leaving);
    }

    vec3 color = mix(scene, card, ticks < COVER_TICKS ? covered : 1.0 - revealed);
    fragColor = vec4(color + Accent * front, 1.0);
}
