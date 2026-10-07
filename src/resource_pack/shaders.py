
# Imports
from beet import FragmentShader, VertexShader
from stewbeet.core import Mem

# GLSL shaders inlined as Python strings (only .png/.ogg/.nbt binaries stay as files).
# core/item is the vanilla 26.3 shader plus the black-hole item effect (effect id 254): rebase it on the new vanilla file at each update.

ITEM_FSH = """#version 330
#extension GL_ARB_separate_shader_objects : require

#include <minecraft:globals.glsl>
#include <minecraft:fog.glsl>
#include <minecraft:dynamictransforms.glsl>
#include <minecraft:oit.glsl>

uniform sampler2D Sampler0;

#ifdef GLINT
uniform sampler2D GlintSampler;
#endif

#ifndef OIT_ALPHA_ONLY
layout(location = 0) in float sphericalVertexDistance;
layout(location = 1) in float cylindricalVertexDistance;
#endif
layout(location = 2) in vec4 vertexColor;
#ifndef OIT_ALPHA_ONLY
layout(location = 3) in vec4 lightMapColor;
layout(location = 4) in vec4 overlayColor;
#endif
layout(location = 5) in vec2 texCoord0;
#ifdef GLINT
layout(location = 6) in vec2 texCoordGlint;
#endif
layout(location = 7) in vec3 vPos;      // fragment world-space position (camera-relative space)
layout(location = 8) in vec4 vNearPos;  // fragment position on the camera near plane, before perspective divide

#ifndef OIT_ALPHA_ONLY
layout(location = 0) out vec4 fragColor;
#endif

// --- Black hole constants ---
const vec3  blackHoleAxis    = vec3(0., -.4, -.9); // black hole rotation axis
const float diskRadius       = .4;                  // accretion disk radius
const float timeScale        = .5;                  // animation speed
const float effectIntensity  = 1;                   // overall effect intensity
const vec3  rimColor         = vec3(.64, 0., 0.);   // rim color (red)
const vec3  coreGlowColor    = vec3(.04, .3, .47);  // core glow color (blue-green)

#define BH_MARCH_STEPS 20.0
#define BH_FBM_OCTAVES 5.0

// Volumetric ray-marching of the accretion disk
vec4 computeAccretionDisk(vec3 localPos, float animTime) {
    vec4 accumulatedColor = vec4(0.);
	vec3 normalizedPos = normalize(localPos);
    float rayDist = animTime;  // NOTE: used as loop accumulator, do not rename
    for (float stepDist = 1e-4, stepSize = 0., iterCount = 0.; iterCount < BH_MARCH_STEPS; iterCount++) {
        vec3 samplePos = stepDist * normalizedPos;
        // Cylindrical coordinates to spiral around the axis
        samplePos = vec3(
            atan(samplePos.y / .2, samplePos.x) * 2.,
            samplePos.z / 3.,
            length(samplePos.xy) - 5. - stepDist * .2
        );
        // Fractal noise (FBM)
        for (stepSize = 1.; stepSize < BH_FBM_OCTAVES; stepSize++) {
            samplePos += sin(samplePos.yzx * stepSize + rayDist + .3 * iterCount) / stepSize;
        }
        stepDist += stepSize = length(vec4(.4 * cos(samplePos) - .4, samplePos.z));
        accumulatedColor += (cos(samplePos.x + iterCount * .4 + stepDist + vec4(6., 1., 2., 0.)) + 1.) / stepSize;
    }
    accumulatedColor = tanh(accumulatedColor * accumulatedColor / 4e2);
    return accumulatedColor;
}

// Full black hole render (raycasting + visual effects)
vec4 computeBlackHole() {
    // The eye is not at the origin as soon as view bobbing is applied, so the ray direction must be
    // rebuilt from the near plane instead of assuming normalize(Position).
    vec3 nearPos       = vNearPos.xyz / vNearPos.w;
    vec3 viewDir       = normalize(vPos - nearPos);
	viewDir = vec3(-viewDir.x, viewDir.y, -viewDir.z);  // 180° yaw rotation
    // The scene is a skybox anchored on the eye, so the ray origin stays at the animated offset only.
    vec3 diskCenter    = blackHoleAxis * (fract(GameTime) * timeScale);
    vec3 axisRef       = diskCenter;

    // Ray / infinite cylinder intersection (accretion disk)
    float axisDotView  = dot(blackHoleAxis, viewDir);
    float axisDotRef   = dot(blackHoleAxis, axisRef);
    float cylA         = 1. - axisDotView * axisDotView;
    float cylB         = 2. * (dot(viewDir, axisRef) - axisDotView * axisDotRef);
    float cylC         = dot(axisRef, axisRef) - axisDotRef * axisDotRef - diskRadius * diskRadius;
    float discriminant = cylB * cylB - 4. * cylA * cylC;
    if (discriminant < 0.) discard;

    float sqrtDisc  = sqrt(discriminant);
    float invDenom  = 1. / (2. * cylA);
    float t0        = (-cylB - sqrtDisc) * invDenom;
    float t1        = (-cylB + sqrtDisc) * invDenom;

    float hitDist = -1.;
    if      (t0 > 0. && t1 > 0.) hitDist = min(t0, t1);
    else if (t0 > 0.)             hitDist = t0;
    else if (t1 > 0.)             hitDist = t1;
    if (hitDist < 0.) discard;

    // Hit point and local disk basis
    vec3 hitPoint      = diskCenter + viewDir * hitDist;
    vec3 axisDir       = blackHoleAxis;
    vec3 tangentHelper = abs(axisDir.y) < .9 ? vec3(0., 1., 0.) : vec3(1., 0., 0.);
    vec3 tangentU      = normalize(cross(axisDir, tangentHelper));
    vec3 tangentV      = cross(axisDir, tangentU);
    vec3 localHitPos   = vec3(dot(hitPoint, tangentU), dot(hitPoint, tangentV), dot(hitPoint, axisDir));

    // Disk color via ray-marching
    vec4 diskColor = computeAccretionDisk(localHitPos, fract(GameTime) * 320.);

    // Fresnel effect (bright rim)
    vec3 axialProjection = blackHoleAxis * dot(hitPoint, blackHoleAxis);
    vec3 surfaceNormal   = normalize(hitPoint - axialProjection);
    float fresnel        = 1. - max(0., dot(surfaceNormal, -viewDir));
	float fresnelPow2	 = fresnel * fresnel;
    float fresnelPow4    = fresnelPow2 * fresnelPow2;
    vec3 rimGlow         = coreGlowColor * fresnelPow4 * effectIntensity;

    // Axial glow (along black hole axis)
    float axialDist  = dot(hitPoint, blackHoleAxis);
    float axialGlow  = exp(-axialDist * axialDist * 0.1);
    vec3 axialColor  = rimColor * axialGlow * effectIntensity;

    // Additive composition (screen blend)
	vec3 invDiskColor = vec3(1.) - diskColor.rgb;
    diskColor.rgb = vec3(1.) - invDiskColor * (vec3(1.) - rimGlow) * (vec3(1.) - axialColor);

    // Edge fade
    float edgeFade = smoothstep(-1.0, 1.0, axialDist);
    diskColor.a   *= edgeFade;

    // Black background + final composite
    vec4 finalColor = mix(vec4(0., 0., 0., 1.), diskColor, diskColor.a);
    finalColor.a = 1.;
    return finalColor;
}

// Effect dispatch: effect textures are solid-color markers whose RGB is a fixed
// signature ("SWI" in ASCII) and whose alpha encodes the effect ID. Requiring all
// 4 channels prevents random pixels of regular textures from triggering an effect.
const vec3 EFFECT_SIGNATURE_RGB = vec3(83., 87., 73.);

#define IF_EFFECT(effectId) if (checkEffectTexel(effectId))

bool checkEffectTexel(float effectId) {
    float tolerance = .5;
    vec4 texel = texture(Sampler0, texCoord0) * 255.;
    return all(lessThan(abs(texel - vec4(EFFECT_SIGNATURE_RGB, effectId)), vec4(tolerance)));
}

#ifndef OIT_ALPHA_ONLY
vec4 calculateFinalColor(vec4 color) {
    color.rgb = mix(overlayColor.rgb, color.rgb, overlayColor.a);
    color *= lightMapColor;

    #ifdef GLINT
    vec4 glintColor = GlintAlpha * texture(GlintSampler, texCoordGlint);// Glint color modulator?
    // Matches BlendFuntion.GLINT
    color.rgb += glintColor.rgb * glintColor.rgb;
    #endif

    #ifdef OIT_ACCUMULATE
    color = sampleColorForAccumulation(color);
    vec4 fogColor = vec4(FogColor.rgb * color.a, FogColor.a);
    #else
    vec4 fogColor = FogColor;
    #endif

    return apply_fog(color, sphericalVertexDistance, cylindricalVertexDistance, FogEnvironmentalStart, FogEnvironmentalEnd, FogRenderDistanceStart, FogRenderDistanceEnd, fogColor);
}
#endif

void main() {
    // An effect texel is translucent, so with Improved Transparency it goes through every OIT pass as a fully opaque surface
    IF_EFFECT(254) {
        #if defined(OIT_ALPHA_ONLY)
        executeAlphaOnlyPhase(gl_FragCoord.z, 1.0);
        #elif defined(OIT_ACCUMULATE)
        fragColor = sampleColorForAccumulation(computeBlackHole());
        #else
        fragColor = computeBlackHole();
        #endif
        return;
    }

    vec4 color = texture(Sampler0, texCoord0);
    #ifdef ALPHA_CUTOUT
    if (color.a < ALPHA_CUTOUT) {
        discard;
    }
    #endif

    color *= vertexColor * ColorModulator;

    #ifdef GLINT
    color.a = max(color.a, GlintAlpha);
    #endif

    #ifdef OIT_ALPHA_ONLY
    executeAlphaOnlyPhase(gl_FragCoord.z, color.a);
    #else
    fragColor = calculateFinalColor(color);
    #endif
}

"""

ITEM_VSH = """#version 330
#extension GL_ARB_separate_shader_objects : require

#include <minecraft:light.glsl>
#include <minecraft:fog.glsl>
#include <minecraft:dynamictransforms.glsl>
#include <minecraft:projection.glsl>
#include <minecraft:sample_lightmap.glsl>

layout(location = 0) in vec3 Position;
layout(location = 1) in vec4 Color;
layout(location = 2) in vec2 UV0;
layout(location = 3) in ivec2 UV1;
layout(location = 4) in ivec2 UV2;
#ifdef GLINT_SPECIAL
layout(location = 5) in vec2 UV3;
#endif
layout(location = 6) in vec3 Normal;

#ifndef OIT_ALPHA_ONLY
uniform sampler2D Sampler1;
uniform sampler2D Sampler2;

layout(location = 0) out float sphericalVertexDistance;
layout(location = 1) out float cylindricalVertexDistance;
#endif
layout(location = 2) out vec4 vertexColor;
#ifndef OIT_ALPHA_ONLY
layout(location = 3) out vec4 lightMapColor;
layout(location = 4) out vec4 overlayColor;
#endif

layout(location = 5) out vec2 texCoord0;
#ifdef GLINT
layout(location = 6) out vec2 texCoordGlint;
#endif
layout(location = 7) out vec3 vPos;
layout(location = 8) out vec4 vNearPos;

void main() {
    gl_Position = ProjMat * ModelViewMat * vec4(Position, 1.0);

    #ifndef OIT_ALPHA_ONLY
    sphericalVertexDistance = fog_spherical_distance(Position);
    cylindricalVertexDistance = fog_cylindrical_distance(Position);
    #endif
    vertexColor = minecraft_mix_light(Light0_Direction, Light1_Direction, Normal, Color);
    #ifndef OIT_ALPHA_ONLY
    lightMapColor = sample_lightmap(Sampler2, UV2);
    overlayColor = texelFetch(Sampler1, UV1, 0);
    #endif

    texCoord0 = UV0;
    #ifdef GLINT
    #ifdef GLINT_SPECIAL
    texCoordGlint = (TextureMat * vec4(UV3, 0.0, 1.0)).xy;
    #else
    texCoordGlint = (TextureMat * vec4(UV0, 0.0, 1.0)).xy;
    #endif
    #endif

    vPos = Position;
    // Kept as a vec4: the perspective divide must happen after interpolation to stay linear.
    vNearPos = inverse(ProjMat * ModelViewMat) * gl_Position.xyww;
}
"""


def write_shaders() -> None:
	""" Register the vanilla core/item shader override under minecraft. """
	minecraft = Mem.ctx.assets["minecraft"]
	minecraft.fragment_shaders["core/item"] = FragmentShader(ITEM_FSH)
	minecraft.vertex_shaders["core/item"] = VertexShader(ITEM_VSH)

