#version 330
#extension GL_ARB_separate_shader_objects : require

#include <minecraft:fog.glsl>
#include <minecraft:dynamictransforms.glsl>
#include <minecraft:globals.glsl>

layout(location = 0) in float sphericalVertexDistance;
layout(location = 1) in float cylindricalVertexDistance;
layout(location = 2) in vec3 skyPosition;

layout(location = 0) out vec4 fragColor;

// The switch:day timeline writes the moment into sky_color: blue holds the code, red and green follow it in the ratio of SKY_SIGNATURE_RG.
const vec2 SKY_SIGNATURE_RG = vec2(106.0, 156.0) / 255.0;
const int NOON_CODE = 255;
const int DAWN_CODE = 238;
const int DUSK_CODE = 233;
const int NIGHT_CODE = 28;

// Sun of the vanilla day timeline at ticks 0 and 12000: 12.4 degrees above the east and west horizons.
const vec3 DAWN_SUN = vec3(0.9768, 0.2142, 0.0);
const vec3 DUSK_SUN = vec3(-0.9768, 0.2142, 0.0);
const vec3 NOON_SUN = vec3(0.0, 1.0, 0.0);

// Direction the dawn cirrus are stretched along, 65 degrees from the sun's azimuth so their vanishing point stays out of the rays.
const vec2 DAWN_WIND = vec2(0.4226, 0.9063);

// sin(15 degrees)
const float NOON_PUFFS_MIN_ELEVATION = 0.2588;

// SkyRenderer draws the sky on a disc 16 blocks up with a radius of 512, so its rim sits 1.79 degrees above the horizon.
// Under the rim the screen keeps the fog colour, so the sky must have faded fully into it there or a hard line shows.
const float SKY_DISC_EDGE = 0.0312;

// GameTime wraps every 1200 s: every drift below moves a whole noise period per wrap, so the wrap is seamless.
const float WRAP_SECONDS = 1200.0;
const float TAU = 6.2831853;

// Hash without Sine, David Hoskins, MIT, https://www.shadertoy.com/view/4djSRW
float hash12(vec2 p) {
    vec3 p3 = fract(vec3(p.xyx) * 0.1031);
    p3 += dot(p3, p3.yzx + 33.33);
    return fract((p3.x + p3.y) * p3.z);
}

float hash13(vec3 p) {
    p = fract(p * 0.1031);
    p += dot(p, p.zyx + 31.32);
    return fract((p.x + p.y) * p.z);
}

float tiledNoise(vec2 p, vec2 period) {
    vec2 i = floor(p);
    vec2 f = fract(p);
    f = f * f * (3.0 - 2.0 * f);
    // mod() returns the period itself when x / y rounds just below an integer: the half cell keeps the quotient off integers.
    vec2 i0 = i - period * floor((i + 0.5) / period);
    vec2 i1 = i0 + 1.0 - period * step(period - 1.5, i0);
    float a = hash12(i0);
    float b = hash12(vec2(i1.x, i0.y));
    float c = hash12(vec2(i0.x, i1.y));
    float d = hash12(i1);
    return mix(mix(a, b, f.x), mix(c, d, f.x), f.y);
}

// Each octave doubles the frequency and the period and drifts along x by (octave + 1) periods per wrap.
float tiledFbm(vec2 p, vec2 period, float wraps, int octaves) {
    float value = 0.0;
    float amplitude = 0.5;
    float total = 0.0;
    for (int i = 0; i < octaves; i++) {
        value += amplitude * tiledNoise(p + vec2(wraps * period.x * float(i + 1), float(i) * 7.0), period);
        total += amplitude;
        p *= 2.0;
        period *= 2.0;
        amplitude *= 0.5;
    }
    return value / total;
}

float stars(vec3 direction, float seconds) {
    vec3 p = direction * 180.0;
    vec3 cell = floor(p);
    float seed = hash13(cell);
    if (seed < 0.985) {
        return 0.0;
    }

    vec3 center = cell + 0.5 + (vec3(hash13(cell + 1.7), hash13(cell + 3.1), hash13(cell + 5.3)) - 0.5) * 0.6;
    // Below 0.3 Hz and on a few pixels: far from the 3 flashes per second of WCAG 2.3.1. Whole cycles per wrap, so no jump when GameTime wraps.
    float speed = 6.2831853 / 1200.0 * floor(114.6 + 229.2 * hash13(cell + 9.0) + 0.5);
    float twinkle = 0.75 + 0.25 * sin(seconds * speed + seed * 40.0);
    return (1.0 - smoothstep(0.0, 0.35, length(p - center))) * twinkle * (0.4 + 0.6 * (seed - 0.985) / 0.015);
}

vec3 pick(int variant, vec3 a, vec3 b, vec3 c) {
    return variant == 0 ? a : (variant == 1 ? b : c);
}

// 0 opposite the sun, 1 under it, from the horizontal directions only.
float sunSide(vec3 direction, vec3 sun) {
    return dot(normalize(direction.xz + vec2(1e-4)), normalize(sun.xz)) * 0.5 + 0.5;
}

// Dawn: pastel sky, crepuscular rays fanning from the sun to the antisolar point, Earth's shadow and Belt of Venus opposite, lit cirrus.
vec3 dawnSky(vec3 direction, int variant, float wraps) {
    vec3 horizonSun = pick(variant, vec3(1.00, 0.70, 0.52), vec3(1.00, 0.80, 0.45), vec3(0.78, 0.95, 0.85));
    vec3 horizonAnti = pick(variant, vec3(0.52, 0.50, 0.72), vec3(0.66, 0.60, 0.58), vec3(0.50, 0.56, 0.78));
    vec3 middle = pick(variant, vec3(0.86, 0.66, 0.80), vec3(0.95, 0.80, 0.60), vec3(0.66, 0.78, 0.92));
    vec3 zenith = pick(variant, vec3(0.30, 0.42, 0.78), vec3(0.32, 0.56, 0.74), vec3(0.28, 0.40, 0.80));
    vec3 belt = pick(variant, vec3(0.98, 0.66, 0.78), vec3(1.00, 0.76, 0.62), vec3(0.85, 0.68, 0.95));
    vec3 shadow = pick(variant, vec3(0.42, 0.46, 0.66), vec3(0.55, 0.55, 0.62), vec3(0.40, 0.48, 0.70));
    vec3 glow = pick(variant, vec3(1.00, 0.86, 0.62), vec3(1.00, 0.90, 0.55), vec3(0.85, 1.00, 0.88));

    float elevation = max(direction.y, 0.0);
    float side = sunSide(direction, DAWN_SUN);
    float sunDot = dot(direction, DAWN_SUN);

    vec3 color = mix(mix(horizonAnti, horizonSun, side * side), middle, smoothstep(0.0, 0.14, elevation));
    color = mix(color, zenith, smoothstep(0.1, 0.75, elevation));
    float anti = (1.0 - side) * (1.0 - side);
    color = mix(color, shadow, anti * (1.0 - smoothstep(0.015, 0.09, elevation)) * 0.75);
    color = mix(color, belt, anti * exp(-pow((elevation - 0.16) / 0.07, 2.0)) * 0.75);

    vec3 u = normalize(cross(DAWN_SUN, vec3(0.0, 0.0, 1.0)));
    float angle = atan(dot(direction, cross(DAWN_SUN, u)), dot(direction, u)) / TAU + 0.5;
    float beams = tiledNoise(vec2(angle * 40.0 + wraps * 40.0, 0.5), vec2(40.0)) * 0.65 + tiledNoise(vec2(angle * 97.0 - wraps * 97.0, 3.5), vec2(97.0)) * 0.35;
    float beamMask = (pow(max(sunDot, 0.0), 5.0) + pow(max(-sunDot, 0.0), 6.0) * 0.6) * smoothstep(0.0, 0.1, elevation) * (1.0 - smoothstep(0.99, 1.0, sunDot));
    color *= 1.0 + (smoothstep(0.3, 0.75, beams) - 0.45) * beamMask * 0.2;

    vec2 plane = direction.xz / (elevation + 0.08);
    vec2 wind = vec2(dot(plane, DAWN_WIND), dot(plane, vec2(-DAWN_WIND.y, DAWN_WIND.x)));
    // Coverage barely changes along the wind: its edges then run beside the fibres instead of cutting them all on one line.
    float coverage = tiledNoise(wind * vec2(0.08, 0.55) + vec2(wraps * 3.0, 0.0), vec2(3.0, 64.0));
    // The bend changes by less than one unit per unit across (0.9 x 0.55 x 1.5 for the steepest noise slope), so the fibres never fold into loops.
    float across = wind.y + coverage * 0.9;
    float fine = tiledNoise(vec2(wind.x * 0.9 + wraps * 32.0, across * 31.0 + 5.0), vec2(16.0, 4096.0));
    float coarse = tiledNoise(vec2(wind.x * 0.4 + wraps * 8.0, across * 9.0), vec2(8.0, 1024.0));
    // Near the horizon and the wind's vanishing point a fine fibre gets thinner than a pixel and breaks into dashes, so the coarse ones carry on alone.
    float fibres = mix(coarse * 0.55 + fine * 0.45, coarse, smoothstep(0.3, 0.6, fwidth(across) * 31.0));
    float filament = fwidth(fibres);
    float cirrus = smoothstep(0.28, 0.58, coverage) * smoothstep(0.52 - filament, 0.78 + filament, fibres) * smoothstep(0.03, 0.2, elevation) * (1.0 - smoothstep(0.45, 0.8, elevation));
    vec3 cirrusColor = mix(belt, glow, side) * (1.1 + 0.3 * pow(max(sunDot, 0.0), 4.0));
    color = mix(color, cirrusColor, cirrus * 0.85);

    if (elevation < 0.07) {
        float azimuth = atan(direction.z, direction.x) / TAU + 0.5;
        float mist = tiledFbm(vec2(azimuth * 32.0, elevation * 140.0), vec2(32.0, 512.0), wraps, 3);
        mist = smoothstep(0.5, 0.7, mist) * (1.0 - smoothstep(0.01, 0.07, elevation));
        color = mix(color, mix(horizonAnti * 1.25, glow, pow(side, 3.0)), mist * 0.6);
    }

    color += glow * (pow(max(sunDot, 0.0), 12.0) * 0.18 + pow(max(sunDot, 0.0), 200.0) * 0.6);
    return color;
}

// Noon: a ring of cel-shaded cumulus towers on the horizon, a paler ring behind it, fair-weather puffs overhead and a 22 degree halo.
vec3 noonSky(vec3 direction, int variant, float wraps) {
    vec3 horizon = pick(variant, vec3(0.72, 0.86, 0.98), vec3(0.70, 0.95, 0.92), vec3(0.98, 0.84, 0.92));
    vec3 zenith = pick(variant, vec3(0.12, 0.38, 0.86), vec3(0.05, 0.58, 0.72), vec3(0.62, 0.55, 0.92));
    vec3 lit = pick(variant, vec3(1.00, 1.00, 1.00), vec3(1.00, 0.97, 0.88), vec3(1.00, 0.97, 0.98));
    vec3 shade = pick(variant, vec3(0.62, 0.70, 0.86), vec3(0.92, 0.72, 0.62), vec3(0.62, 0.84, 0.82));

    float elevation = max(direction.y, 0.0);
    vec3 color = mix(horizon, zenith, pow(smoothstep(0.0, 1.0, elevation), 0.55));

    float azimuth = atan(direction.z, direction.x) / TAU + 0.5;
    for (int ring = 0; ring < 2; ring++) {
        float far = float(1 - ring);
        float towers = tiledFbm(vec2(azimuth * 9.0 + far * 4.0, far * 11.0), vec2(9.0, 64.0), -wraps, 3);
        float top = (0.015 + 0.3 * pow(smoothstep(0.3, 0.72, towers), 1.4)) * (1.0 - far * 0.4);
        float puff = tiledFbm(vec2(azimuth * 72.0, elevation * 30.0 + far * 13.0), vec2(72.0, 512.0), -wraps, 3);
        float inside = top + (puff - 0.5) * 0.07 - elevation;
        float cloud = smoothstep(0.0, 0.006, inside);
        float height = clamp(elevation / max(top, 0.02), 0.0, 1.0);
        float terminator = smoothstep(0.42, 0.5, height + (puff - 0.5) * 0.7);
        vec3 body = mix(shade, lit, terminator);
        body = mix(body, horizon, far * 0.55 + (1.0 - height) * 0.25);
        color = mix(color, body, cloud);
    }

    // Below 15 degrees the puffs sit behind the tower ring, so their two fbm are skipped there.
    if (elevation > NOON_PUFFS_MIN_ELEVATION) {
        vec2 plane = direction.xz / (elevation + 0.12);
        float field = tiledFbm(plane * 2.4, vec2(32.0), wraps, 4);
        float fieldNear = tiledFbm(plane * 2.4 - normalize(plane + vec2(1e-4)) * 0.35, vec2(32.0), wraps, 4);
        float edge = fwidth(field);
        float threshold = 0.63 + 0.2 * (1.0 - smoothstep(0.15, 0.45, elevation));
        // The fade hides the band where the derivative straddles the branch.
        float puffs = smoothstep(threshold - edge, threshold + edge, field) * smoothstep(NOON_PUFFS_MIN_ELEVATION, NOON_PUFFS_MIN_ELEVATION + 0.05, elevation);
        float belly = 1.0 - smoothstep(threshold - 0.03, threshold + 0.01, fieldNear);
        color = mix(color, mix(lit, shade, belly * 0.85), puffs);
    }

    float sunAngle = acos(clamp(dot(direction, NOON_SUN), -1.0, 1.0));
    color += vec3(0.30, 0.22, 0.18) * exp(-pow((sunAngle - 0.375) / 0.010, 2.0)) * 0.6 + vec3(0.18, 0.24, 0.32) * exp(-pow((sunAngle - 0.395) / 0.016, 2.0)) * 0.5;
    color += vec3(1.0, 0.98, 0.9) * pow(max(direction.y, 0.0), 40.0) * 0.4;
    return color;
}

// Dusk: saturated bands, stratus streaks silhouetted with sunlit undersides, a lit mackerel layer and the first stars on the dark side.
vec3 duskSky(vec3 direction, int variant, float wraps, float seconds) {
    vec3 horizonSun = pick(variant, vec3(1.00, 0.45, 0.16), vec3(1.00, 0.42, 0.45), vec3(1.00, 0.68, 0.30));
    vec3 horizonAnti = pick(variant, vec3(0.80, 0.48, 0.58), vec3(0.72, 0.48, 0.80), vec3(0.52, 0.72, 0.80));
    vec3 middle = pick(variant, vec3(0.72, 0.22, 0.38), vec3(0.62, 0.20, 0.62), vec3(0.45, 0.62, 0.66));
    vec3 zenith = pick(variant, vec3(0.10, 0.08, 0.26), vec3(0.06, 0.18, 0.32), vec3(0.06, 0.20, 0.34));
    vec3 ember = pick(variant, vec3(1.00, 0.62, 0.22), vec3(1.00, 0.55, 0.72), vec3(1.00, 0.82, 0.45));
    vec3 silhouette = pick(variant, vec3(0.20, 0.08, 0.16), vec3(0.20, 0.08, 0.26), vec3(0.10, 0.16, 0.22));

    float elevation = max(direction.y, 0.0);
    float side = sunSide(direction, DUSK_SUN);
    float sunDot = dot(direction, DUSK_SUN);

    vec3 horizon = mix(horizonAnti, horizonSun, pow(side, 2.5));
    vec3 color = mix(horizon, middle, smoothstep(0.0, 0.3 + 0.1 * side, elevation));
    color = mix(color, zenith, smoothstep(0.15, 0.85, elevation));
    color += ember * (pow(max(sunDot, 0.0), 6.0) * 0.35 + pow(max(sunDot, 0.0), 90.0) * 0.6);

    float azimuth = atan(direction.z, direction.x) / TAU + 0.5;
    vec2 bandUv = vec2(azimuth * 24.0, elevation * 55.0);
    float band = tiledFbm(bandUv, vec2(24.0, 512.0), wraps * 2.0, 4);
    float bandBelow = tiledFbm(bandUv - vec2(0.0, 0.9), vec2(24.0, 512.0), wraps * 2.0, 4);
    float strata = smoothstep(0.55, 0.62, band) * smoothstep(0.012, 0.04, elevation) * (1.0 - smoothstep(0.16, 0.3, elevation));
    float underside = clamp((band - bandBelow) * 5.0, 0.0, 1.0);
    vec3 streak = mix(silhouette, ember * 1.1, underside * (0.25 + 0.75 * pow(side, 1.5)));
    color = mix(color, streak, strata * 0.9);

    vec2 plane = direction.xz / (elevation + 0.1);
    float coverage = tiledFbm(vec2(plane.x * 1.5, plane.y * 0.8), vec2(32.0), wraps, 3);
    float ripples = coverage * (0.62 + 0.38 * sin(plane.x * 22.0 + plane.y * 4.0 + coverage * 9.0));
    float mackerel = smoothstep(0.5 - fwidth(ripples), 0.52 + fwidth(ripples), ripples) * smoothstep(0.25, 0.45, elevation) * (1.0 - smoothstep(0.85, 1.0, elevation));
    vec3 mackerelColor = mix(silhouette * 1.6, ember, pow(side, 3.0) * 0.8 + 0.1);
    color = mix(color, mackerelColor, mackerel * 0.5);

    float darkSide = smoothstep(0.25, 0.8, elevation) * (1.0 - side) * (1.0 - mackerel);
    color += vec3(stars(direction, seconds)) * darkSide * 0.8;
    return color;
}

// Volumetric aurora after "Auroras" by nimitz, https://www.shadertoy.com/view/XtGGRt
const int AURORA_OCTAVES = 4;
const mat2 OCTAVE_ROTATION = mat2(0.95534, 0.29552, -0.29552, 0.95534);
// 0.09948 rad/s: 19 whole turns per GameTime wrap, so the drift has no jump when it wraps.
const float AURORA_TURN_SPEED = TAU * 19.0 / WRAP_SECONDS;
// Under 8 chunks of render distance, the setting small computers pick, the curtains take 12 slices instead of 20.
const float AURORA_LOW_QUALITY_DISTANCE = 128.0;
const int AURORA_MAX_SLICES = 20;

mat2 rotation(float angle) {
    float c = cos(angle);
    float s = sin(angle);
    return mat2(c, s, -s, c);
}

float triangleWave(float x) {
    return clamp(abs(fract(x) - 0.5), 0.01, 0.49);
}

vec2 triangleWave2(vec2 p) {
    return vec2(triangleWave(p.x) + triangleWave(p.y), triangleWave(p.y + triangleWave(p.x)));
}

float triangleNoise(vec2 p, float seconds) {
    float amplitude = 1.8;
    float driftScale = 2.5;
    float result = 0.0;
    p *= rotation(p.x * 0.06);
    vec2 driftPosition = p;
    for (int i = 0; i < AURORA_OCTAVES; i++) {
        vec2 drift = triangleWave2(driftPosition * 1.85) * 0.75 * rotation(seconds * AURORA_TURN_SPEED);
        p -= drift / driftScale;
        driftPosition *= 1.3;
        driftScale *= 0.45;
        amplitude *= 0.42;
        p *= 1.21 + (result - 1.0) * 0.02;
        result += triangleWave(p.x + triangleWave(p.y)) * amplitude;
        p *= -OCTAVE_ROTATION;
    }
    return clamp(1.0 / pow(result * 29.0, 1.3), 0.0, 0.55);
}

// phase sets the colour climbing each curtain: each channel is a sine of the slice height, shifted by its phase.
vec4 volumetricAurora(vec3 direction, float seconds, vec3 phase) {
    int slices = FogRenderDistanceEnd < AURORA_LOW_QUALITY_DISTANCE ? 12 : AURORA_MAX_SLICES;
    float sliceStep = 50.0 / float(slices);
    float jitterSeed = hash12(gl_FragCoord.xy);
    vec4 total = vec4(0.0);
    vec4 smeared = vec4(0.0);
    // A constant bound lets the compiler unroll the loop: a bound of slices costs the full-quality aurora 8 percent.
    for (int i = 0; i < AURORA_MAX_SLICES; i++) {
        if (i == slices) {
            break;
        }
        float slice = float(i) * sliceStep;
        float height = 0.8 + pow(slice, 1.4) * 0.002;
        float distanceToSlice = height / (direction.y * 2.0 + 0.4) - 0.006 * sliceStep * jitterSeed * smoothstep(0.0, 15.0, slice);
        float density = triangleNoise((distanceToSlice * direction).zx, seconds);
        vec3 tint = sin(1.0 - phase + slice * 0.043) * 0.5 + 0.5;
        smeared = mix(smeared, vec4(tint * density, density), 1.0 - pow(0.5, sliceStep));
        total += smeared * exp2(-slice * 0.065 - 2.5) * smoothstep(0.0, 5.0, slice) * sliceStep;
    }
    return smoothstep(0.0, 1.5, total * clamp(direction.y * 15.0 + 0.4, 0.0, 1.0) * 1.8);
}

vec3 nightSky(vec3 direction, int variant, float seconds) {
    vec3 phase = pick(variant, vec3(2.15, -0.5, 1.2), vec3(2.15, 0.2, 0.0), vec3(-0.57, 2.57, 1.0));
    float elevation = max(direction.y, 0.0);
    vec3 color = mix(vec3(0.03, 0.05, 0.11), vec3(0.004, 0.008, 0.03), pow(elevation, 0.5));
    vec4 lights = direction.y > 0.0 ? volumetricAurora(direction, seconds, phase) : vec4(0.0);
    return (color + stars(direction, seconds)) * (1.0 - lights.a) + lights.rgb;
}

void main() {
    int code = int(ColorModulator.b * 255.0 + 0.5);
    bool marked = all(lessThan(abs(ColorModulator.rg * 255.0 - SKY_SIGNATURE_RG * float(code)), vec2(0.51)));
    int noon = NOON_CODE - code;
    int dawn = DAWN_CODE - code;
    int dusk = DUSK_CODE - code;
    int night = NIGHT_CODE - code;
    bool known = noon >= 0 && noon < 3 || dawn >= 0 && dawn < 3 || dusk >= 0 && dusk < 3 || night >= 0 && night < 3;
    if (!marked || !known) {
        fragColor = apply_fog(ColorModulator, sphericalVertexDistance, cylindricalVertexDistance, 0.0, FogSkyEnd, FogSkyEnd, FogSkyEnd, FogColor);
        return;
    }

    vec3 direction = normalize(skyPosition);
    float seconds = GameTime * WRAP_SECONDS;
    float wraps = GameTime;
    vec3 color = noon >= 0 && noon < 3 ? noonSky(direction, noon, wraps)
        : dawn >= 0 && dawn < 3 ? dawnSky(direction, dawn, wraps)
        : dusk >= 0 && dusk < 3 ? duskSky(direction, dusk, wraps, seconds)
        : nightSky(direction, night, seconds);
    color = mix(color, FogColor.rgb, 1.0 - smoothstep(SKY_DISC_EDGE, 0.13, direction.y));
    fragColor = vec4(color, 1.0);
}
