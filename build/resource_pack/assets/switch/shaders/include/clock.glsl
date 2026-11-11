#ifndef CLOCK_GLSL
#define CLOCK_GLSL

// Activation timestamp: GameTime packed across RGB. Alpha 0 is frame one (a fresh persistent target
// reads back as its clear_color), CLOCK_RUNNING an armed clock, and 1 a clock whose ramps all ended.
#define CLOCK_RUNNING 0.5
#define CLOCK_SETTLE_TICKS 1200.0

vec3 clock_pack_time(float t) {
    vec3 enc = fract(t * vec3(1.0, 255.0, 65025.0));
    return enc - enc.yzz * vec3(1.0 / 255.0, 1.0 / 255.0, 0.0);
}

float clock_unpack_time(vec3 enc) {
    return dot(enc, vec3(1.0, 1.0 / 255.0, 1.0 / 65025.0));
}

// Ticks since the clock was armed. A settled clock is long expired, so the 24000-tick wrap of
// GameTime can only be crossed once while running. A small negative delta is the server's time sync
// stepping the client clock back, which must hold the ramp at its start rather than end it.
float clock_elapsed(vec4 clock, float gameTime) {
    if (clock.a < 0.25) return 0.0;
    if (clock.a > 0.75) return 1.0e6;
    float delta = gameTime - clock_unpack_time(clock.rgb);
    if (delta < -0.5) delta += 1.0;
    return max(delta * 24000.0, 0.0);
}

// Eased 0 to 1 ramp over `duration` ticks, holding at 1 afterwards.
float clock_ramp(vec4 clock, float gameTime, float duration) {
    float t = clamp(clock_elapsed(clock, gameTime) / max(duration, 1.0e-4), 0.0, 1.0);
    return t * t * (3.0 - 2.0 * t);
}

#endif
