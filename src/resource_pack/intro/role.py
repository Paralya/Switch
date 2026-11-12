""" Role card: one `/posteffect` chain per role and per language, shown to a player over the game when their mode hands them a role.

It leaves the middle of the screen clear: a band in the upper third holds the role name, its goal sits under it, the edges take the role colour.
"""
# Imports
from beet import FragmentShader, Texture
from stewbeet import POST_SHADER_HEADER, Mem, post_uniform, timed_post_effect

from ...datapack.modes.catalogue import DISABLED_MODES, MODES
from ...datapack.modes.definitions import LANG_PRETEXT
from .card import hex_floats
from .text import LINE_HEIGHT, TEXT_GLSL, TEXT_WIDTH, Glyph, text_texture

# Constants
ROLE_TICKS: int = 76
""" Ticks after which the shader shows the game untouched, so the effect can be taken off any time later. """

ROLE_PREFIX: dict[str, str] = {"fr": "Vous êtes", "en": "You are"}
""" First line of every role card, above the role name. """

ROLE_FSH: str = """
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
"""
""" The apply pass of every role chain, its timeline #defined in role_fragment_shader. """


# Functions
def write_role_effects(glyphs: dict[str, Glyph]) -> None:
	""" Register the role shader and one chain per role of every mode and per language. """
	ns: str = Mem.ctx.project_id
	timeline: str = f"#define ROLE_TICKS {ROLE_TICKS}.0\n#define NAME_TICK 4.0\n#define GOAL_TICK 14.0"
	Mem.ctx.assets[ns].fragment_shaders["post/role"] = FragmentShader(
		f"{POST_SHADER_HEADER}\n#include <minecraft:globals.glsl>\n#include <{ns}:clock.glsl>\n\n{timeline}\n{TEXT_GLSL}\n{ROLE_FSH}"
	)

	for mode in (*MODES, *DISABLED_MODES):
		for role in mode.roles:
			for lang in LANG_PRETEXT:
				effect_id: str = role_effect_path(mode.id, role.id, lang)
				name, goal = (role.name.fr, role.goal.fr) if lang == "fr" else (role.name.en, role.goal.en)
				lines: tuple[str, ...] = (ROLE_PREFIX[lang], *name, *goal)
				Mem.ctx.assets[ns].textures[f"effect/{effect_id}"] = Texture(text_texture(lines, glyphs))
				timed_post_effect(
					effect_id, f"{ns}:post/role", {"RoleConfig": [post_uniform("Color", "vec3", hex_floats(role.color))]},
					inputs=[{"sampler_name": "Text", "location": f"{ns}:{effect_id}", "width": TEXT_WIDTH, "height": LINE_HEIGHT * len(lines)}],
				)


def role_effect_path(mode_id: str, role_id: str, lang: str) -> str:
	""" Path of a role chain under the project namespace, also the path of its text texture.

	>>> role_effect_path("traitors_game", "traitor", "fr")
	'role/traitors_game/traitor_fr'
	"""
	return f"role/{mode_id}/{role_id}_{lang}"

