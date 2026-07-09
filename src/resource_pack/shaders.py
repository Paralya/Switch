
# ruff: noqa: E501
# Imports
from beet import FragmentShader, GlslShader, VertexShader
from stewbeet.core import Mem

# GLSL shaders inlined as Python strings (only .png/.ogg/.nbt binaries stay as files).
# Stored with LF; written with CRLF to match the upstream (Windows-authored) files.
# core/item adds the black-hole item effect (effect id 254).

ITEM_FSH = """#version 330

layout(std140) uniform Fog {
    vec4 FogColor;
    float FogEnvironmentalStart;
    float FogEnvironmentalEnd;
    float FogRenderDistanceStart;
    float FogRenderDistanceEnd;
    float FogSkyEnd;
    float FogCloudsEnd;
};

float linear_fog_value(float vertexDistance, float fogStart, float fogEnd) {
    if (vertexDistance <= fogStart) {
        return 0.0;
    } else if (vertexDistance >= fogEnd) {
        return 1.0;
    }
    return (vertexDistance - fogStart) / (fogEnd - fogStart);
}

float total_fog_value(float sphericalVertexDistance, float cylindricalVertexDistance, float environmentalStart, float environmantalEnd, float renderDistanceStart, float renderDistanceEnd) {
    return max(linear_fog_value(sphericalVertexDistance, environmentalStart, environmantalEnd), linear_fog_value(cylindricalVertexDistance, renderDistanceStart, renderDistanceEnd));
}

vec4 apply_fog(vec4 inColor, float sphericalVertexDistance, float cylindricalVertexDistance, float environmentalStart, float environmantalEnd, float renderDistanceStart, float renderDistanceEnd, vec4 fogColor) {
    float fogValue = total_fog_value(sphericalVertexDistance, cylindricalVertexDistance, environmentalStart, environmantalEnd, renderDistanceStart, renderDistanceEnd);
    return vec4(mix(inColor.rgb, fogColor.rgb, fogValue * fogColor.a), inColor.a);
}

#moj_import <minecraft:dynamictransforms.glsl>
#moj_import <minecraft:globals.glsl>

uniform sampler2D Sampler0;

in float sphericalVertexDistance;
in float cylindricalVertexDistance;
in vec4 vertexColor;
in vec4 lightMapColor;
in vec2 texCoord0;
in vec3 a_;  // vertex position (must match vertex shader name)
in vec3 c_;  // interpolated vertex position (used as ray direction)

out vec4 fragColor;

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
    for (float stepDist = 0., stepSize = 0., iterCount = 0.; iterCount < BH_MARCH_STEPS; iterCount++) {
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
    vec3 viewDir       = normalize(c_);
	viewDir = vec3(-viewDir.x, viewDir.y, -viewDir.z);  // 180° yaw rotation
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

// Effect dispatch: reads effect ID from texture alpha channel
#define IF_EFFECT(effectId) if (checkEffectAlpha(effectId))

bool checkEffectAlpha(float effectId) {
    float tolerance  = .5;
    float alphaValue = texture(Sampler0, texCoord0).a * 255.;
    return abs(alphaValue - effectId) < tolerance;
}

void main() {
    vec4 color = texture(Sampler0, texCoord0) * vertexColor * ColorModulator;

    IF_EFFECT(254) { fragColor = computeBlackHole(); return; }
    // IF_EFFECT(253) { fragColor = sd(); return; }

#ifdef ALPHA_CUTOUT
    if (color.a < ALPHA_CUTOUT) {
        discard;
    }
#endif

    color    *= lightMapColor;
    fragColor = apply_fog(color, sphericalVertexDistance, cylindricalVertexDistance, FogEnvironmentalStart, FogEnvironmentalEnd, FogRenderDistanceStart, FogRenderDistanceEnd, FogColor);
}

"""

ITEM_VSH = """#version 330

#define MINECRAFT_LIGHT_POWER   (0.6)
#define MINECRAFT_AMBIENT_LIGHT (0.4)

layout(std140) uniform Lighting {
    vec3 Light0_Direction;
    vec3 Light1_Direction;
};

vec2 minecraft_compute_light(vec3 lightDir0, vec3 lightDir1, vec3 normal) {
    return vec2(dot(lightDir0, normal), dot(lightDir1, normal));
}

vec4 minecraft_mix_light_separate(vec2 light, vec4 color) {
    vec2 lightValue = max(vec2(0.0), light);
    float lightAccum = min(1.0, (lightValue.x + lightValue.y) * MINECRAFT_LIGHT_POWER + MINECRAFT_AMBIENT_LIGHT);
    return vec4(color.rgb * lightAccum, color.a);
}

vec4 minecraft_mix_light(vec3 lightDir0, vec3 lightDir1, vec3 normal, vec4 color) {
    vec2 light = minecraft_compute_light(lightDir0, lightDir1, normal);
    return minecraft_mix_light_separate(light, color);
}

layout(std140) uniform Fog {
    vec4 FogColor;
    float FogEnvironmentalStart;
    float FogEnvironmentalEnd;
    float FogRenderDistanceStart;
    float FogRenderDistanceEnd;
    float FogSkyEnd;
    float FogCloudsEnd;
};

float fog_spherical_distance(vec3 pos) {
    return length(pos);
}

float fog_cylindrical_distance(vec3 pos) {
    float distXZ = length(pos.xz);
    float distY = abs(pos.y);
    return max(distXZ, distY);
}

#moj_import <minecraft:dynamictransforms.glsl>
#moj_import <minecraft:projection.glsl>

in vec3 Position;
in vec4 Color;
in vec2 UV0;
in ivec2 UV2;
in vec3 Normal;

uniform sampler2D Sampler2;

out float sphericalVertexDistance;
out float cylindricalVertexDistance;
out vec4 vertexColor;
out vec4 lightMapColor;
out vec2 texCoord0;
out vec3 a_;
out vec3 c_;

void main() {
    gl_Position = ProjMat * ModelViewMat * vec4(Position, 1.0);
    sphericalVertexDistance = fog_spherical_distance(Position);
    cylindricalVertexDistance = fog_cylindrical_distance(Position);
    vertexColor = minecraft_mix_light(Light0_Direction, Light1_Direction, Normal, Color);
    lightMapColor = texture(Sampler2, (vec2(UV2) + 8.0) / 256.0);
    texCoord0 = UV0;
    a_ = Position;
    c_ = Position;
}
"""

DYNAMICTRANSFORMS = """#version 330

layout(std140) uniform DynamicTransforms {
    mat4 ModelViewMat;
    vec4 ColorModulator;
    vec3 ModelOffset;
    mat4 TextureMat;
};

"""

GLOBALS = """#version 330

layout(std140) uniform Globals {
    ivec3 CameraBlockPos;
    vec3 CameraOffset;
    vec2 ScreenSize;
    float GlintAlpha;
    float GameTime;
    int MenuBlurRadius;
    int UseRgss;
};

"""

PROJECTION = """#version 330

layout(std140) uniform Projection {
    mat4 ProjMat;
};

vec4 projection_from_position(vec4 position) {
    vec4 projection = position * 0.5;
    projection.xy = vec2(projection.x + projection.w, projection.y + projection.w);
    projection.zw = position.zw;
    return projection;
}

"""


def write_shaders() -> None:
	""" Register the vanilla shader overrides (core/item + GLSL includes) under minecraft. """
	minecraft = Mem.ctx.assets["minecraft"]
	minecraft.fragment_shaders["core/item"] = FragmentShader(ITEM_FSH)
	minecraft.vertex_shaders["core/item"] = VertexShader(ITEM_VSH)
	minecraft.glsl_shaders["include/dynamictransforms"] = GlslShader(DYNAMICTRANSFORMS)
	minecraft.glsl_shaders["include/globals"] = GlslShader(GLOBALS)
	minecraft.glsl_shaders["include/projection"] = GlslShader(PROJECTION)

