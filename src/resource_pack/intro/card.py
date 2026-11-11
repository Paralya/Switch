""" Game intro card: one `/posteffect` chain per mode and per language, applied when the vote ends.

The server only sends an effect id, so everything a mode shows is baked into its chain:
the accent colour as a uniform, the mode name and its rules as a texture of text lines.
The whole sequence is timed by the shader, from the tick the effect is applied.
"""
# Imports
from beet import FragmentShader, Texture
from beet.contrib.vanilla import Vanilla
from stewbeet import SCREENQUAD_VERTEX_SHADER, JsonDict, Mem, post_uniform, timed_post_effect

from ...datapack.modes.catalogue import DISABLED_MODES, MODES
from ...datapack.modes.definitions import LANG_PRETEXT
from ...datapack.modes.spec import ModeSpec
from .shader import RULE_TICKS, intro_fragment_shader
from .text import LINE_HEIGHT, TEXT_WIDTH, Glyph, text_texture, vanilla_glyphs

# Constants
BLUR_SIZE: tuple[int, int] = (480, 270)
""" Size of the blurred backdrop targets. A target size is absolute, never relative to the screen. """


# Functions
def write_intro_effects() -> None:
	""" Register the intro shader and one chain per mode and per language. """
	ns: str = Mem.ctx.project_id
	Mem.ctx.assets[ns].fragment_shaders["post/intro"] = FragmentShader(intro_fragment_shader(ns))

	vanilla = Vanilla(ctx=Mem.ctx)
	vanilla.mount("assets/minecraft/font")
	glyphs: dict[str, Glyph] = vanilla_glyphs(vanilla.mount("assets/minecraft/textures/font").assets)

	for mode in (*MODES, *DISABLED_MODES):
		for lang in LANG_PRETEXT:
			effect_id: str = intro_effect_path(mode.id, lang)
			rules: tuple[str, ...] = mode.rules.fr if lang == "fr" else mode.rules.en
			assert len(rules) <= len(RULE_TICKS), f"{mode.id} has {len(rules)} rules, an intro card shows {len(RULE_TICKS)}"

			# Every texture holds the same number of lines, so the shader never samples outside of one
			lines: tuple[str, ...] = (mode.display_name(lang), *rules, *[""] * (len(RULE_TICKS) - len(rules)))
			Mem.ctx.assets[ns].textures[f"effect/{effect_id}"] = Texture(text_texture(lines, glyphs))
			timed_post_effect(
				effect_id, f"{ns}:post/intro", {"IntroConfig": [post_uniform("Accent", "vec3", accent_of(mode))]},
				inputs=[
					{"sampler_name": "Blur", "target": "blur", "bilinear": True},
					{"sampler_name": "Depth", "target": "minecraft:main", "use_depth_buffer": True},
					{"sampler_name": "Text", "location": f"{ns}:{effect_id}", "width": TEXT_WIDTH, "height": LINE_HEIGHT * len(lines)},
				],
				pre_passes=blur_passes(ns),
				targets={name: {"width": BLUR_SIZE[0], "height": BLUR_SIZE[1]} for name in ("blur", "blur_swap")},
			)


def intro_effect_path(mode_id: str, lang: str) -> str:
	""" Path of a mode's intro chain under the project namespace, also the path of its text texture.

	>>> intro_effect_path("tnt_run", "fr")
	'intro/tnt_run_fr'
	"""
	return f"intro/{mode_id}_{lang}"


def accent_of(mode: ModeSpec) -> list[float]:
	""" The accent colour of a mode as the three floats of its uniform.

	>>> accent_of(MODES[0]) == [int(MODES[0].accent[i:i + 2], 16) / 255 for i in (1, 3, 5)]
	True
	"""
	return [int(mode.accent[index:index + 2], 16) / 255 for index in (1, 3, 5)]


def blur_passes(ns: str) -> list[JsonDict]:
	""" Passes filling the `blur` target: the frame shrunk to BLUR_SIZE, then two rounds of the vanilla box blur. """
	passes: list[JsonDict] = [{
		"vertex_shader": SCREENQUAD_VERTEX_SHADER,
		"fragment_shader": f"{ns}:post/copy",
		"inputs": [{"sampler_name": "In", "target": "minecraft:main", "bilinear": True}],
		"output": "blur",
	}]

	for source, output, direction in (("blur", "blur_swap", [1.0, 0.0]), ("blur_swap", "blur", [0.0, 1.0])) * 2:
		passes.append({
			"vertex_shader": SCREENQUAD_VERTEX_SHADER,
			"fragment_shader": "minecraft:post/box_blur",
			"inputs": [{"sampler_name": "In", "target": source, "bilinear": True}],
			"output": output,
			"uniforms": {"BlurConfig": [post_uniform("BlurDir", "vec2", direction), post_uniform("Radius", "float", 6.0)]},
		})
	return passes

