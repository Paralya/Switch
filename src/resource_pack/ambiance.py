""" Ambiances: `/posteffect` chains a player keeps for a whole game, fading in over FADE_TICKS from the tick they are added.

Their clock settles after 1200 ticks with the fade held at 1, so an ambiance lasts until the server takes it off.
"""
# Imports
from beet import FragmentShader
from stewbeet import POST_SHADER_HEADER, JsonDict, Mem, post_uniform, timed_post_effect

from .intro.card import BLUR_TARGETS, blur_passes

# Constants
FADE_TICKS: int = 40
""" The ambiance blends in from the untouched frame over these ticks. """

GRADE_FSH: str = """
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
"""
""" Apply pass of the GRADES chains. """

BRIGHT_FSH: str = """
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
"""
""" Shrinks the frame into the bloom target, keeping only what is brighter than 0.4 on its strongest channel. """

NEON_FSH: str = """
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
"""
""" Apply pass of the neon chain: a bloom of the bright parts, stronger colours and a light vignette. """

GRADES: dict[str, list[JsonDict]] = {
	"dark": [
		post_uniform("Tint", "vec3", [0.85, 0.95, 1.0]), post_uniform("Vignette", "float", 0.75),
		post_uniform("Desaturate", "float", 0.35), post_uniform("Breath", "float", 0.06),
	],
	"infected": [
		post_uniform("Tint", "vec3", [0.91, 1.0, 0.91]), post_uniform("Vignette", "float", 0.0),
		post_uniform("Desaturate", "float", 0.15), post_uniform("Breath", "float", 0.0),
	],
}
""" Ambiances drawn by GRADE_FSH alone. The infected tint is 15 percent of a zombie green, so the other players keep their colours. """

AMBIANCES: tuple[str, ...] = (*GRADES, "neon")
""" Every ambiance, each one taken off by its own id since `posteffect clear` would also take off the effects of other packs. """


# Functions
def write_ambiances() -> None:
	""" Register the ambiance shaders and one chain per ambiance. """
	ns: str = Mem.ctx.project_id
	shaders = Mem.ctx.assets[ns].fragment_shaders
	header: str = f"{POST_SHADER_HEADER}\n#include <minecraft:globals.glsl>\n#include <{ns}:clock.glsl>\n\n#define FADE_TICKS {FADE_TICKS}.0\n"
	shaders["post/grade"] = FragmentShader(header + GRADE_FSH)
	shaders["post/bright"] = FragmentShader(POST_SHADER_HEADER + BRIGHT_FSH)
	shaders["post/neon"] = FragmentShader(header + NEON_FSH)

	for ambiance, uniforms in GRADES.items():
		timed_post_effect(ambiance_effect_path(ambiance), f"{ns}:post/grade", {"GradeConfig": uniforms})
	timed_post_effect(
		ambiance_effect_path("neon"), f"{ns}:post/neon",
		{"NeonConfig": [post_uniform("Strength", "float", 1.0), post_uniform("Vignette", "float", 0.3), post_uniform("Saturate", "float", 0.25)]},
		inputs=[{"sampler_name": "Bloom", "target": "blur", "bilinear": True}],
		pre_passes=blur_passes(f"{ns}:post/bright"),
		targets=BLUR_TARGETS,
	)


def ambiance_effect_path(ambiance: str) -> str:
	""" Path of an ambiance chain under the project namespace.

	>>> ambiance_effect_path("dark")
	'ambiance/dark'
	"""
	return f"ambiance/{ambiance}"

