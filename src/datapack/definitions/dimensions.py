
# Imports
from typing import Any

from beet.contrib.worldgen import Dimension, DimensionType
from beet.library.data_pack import Timeline, WorldClock
from stewbeet.core import Mem, set_json_encoder


def void_generator(dimension_type: str) -> dict[str, Any]:
	""" A fresh flat-void dimension of the given type (shared shape by the game, void and build_battle dimensions). """
	return {
		"type": dimension_type,
		"generator": {
			"type": "minecraft:flat",
			"settings": {
				"biome": "minecraft:the_void",
				"lakes": False,
				"features": False,
				"layers": [],
				"structure_overrides": [],
			},
		},
	}


def keyframes(*frames: tuple[int, Any]) -> list[dict[str, Any]]:
	return [{"ticks": ticks, "value": value} for ticks, value in frames]


SKY_ANGLE_EASE: dict[str, list[float]] = {"cubic_bezier": [0.362, 0.241, 0.638, 0.759]}

DAY_TRACKS: dict[str, dict[str, Any]] = {
	"minecraft:audio/firefly_bush_sounds": {"keyframes": keyframes((12600, True), (23401, False)), "modifier": "or"},
	"minecraft:gameplay/bees_stay_in_hive": {"keyframes": keyframes((12542, True), (23460, False)), "modifier": "or"},
	"minecraft:gameplay/cat_waking_up_gift_chance": {"ease": "constant", "keyframes": keyframes((362, 0.0), (23667, 0.7)), "modifier": "maximum"},
	"minecraft:gameplay/creaking_active": {"keyframes": keyframes((12600, True), (23401, False)), "modifier": "or"},
	"minecraft:gameplay/eyeblossom_open": {"keyframes": keyframes((12600, True), (23401, False))},
	"minecraft:gameplay/monsters_burn": {"keyframes": keyframes((12542, False), (23460, True)), "modifier": "or"},
	"minecraft:gameplay/sky_light_level": {"keyframes": keyframes((133, 1.0), (11867, 1.0), (13670, 0.26666668), (22330, 0.26666668)), "modifier": "multiply"},
	"minecraft:gameplay/turtle_egg_hatch_chance": {"ease": "constant", "keyframes": keyframes((21062, 1.0), (21905, 0.002)), "modifier": "maximum"},
	"minecraft:visual/cloud_color": {"keyframes": keyframes((133, "#ffffffff"), (11867, "#ffffffff"), (13670, "#ff191926"), (22330, "#ff191926")), "modifier": "multiply"},
	"minecraft:visual/fog_color": {"keyframes": keyframes((133, "#ffffff"), (11867, "#ffffff"), (13670, "#0f0f16"), (22330, "#0f0f16")), "modifier": "multiply"},
	"minecraft:visual/moon_angle": {"ease": SKY_ANGLE_EASE, "keyframes": keyframes((6000, 540.0), (6000, 180.0))},
	"minecraft:visual/sky_color": {"keyframes": keyframes((133, "#ffffff"), (11867, "#ffffff"), (13670, "#000000"), (22330, "#000000")), "modifier": "multiply"},
	"minecraft:visual/sky_light_color": {"keyframes": keyframes((730, "#ffffff"), (11270, "#ffffff"), (13140, "#7a7aff"), (22860, "#7a7aff")), "modifier": "multiply"},
	"minecraft:visual/sky_light_factor": {"keyframes": keyframes((730, 1.0), (11270, 1.0), (13140, 0.24), (22860, 0.24)), "modifier": "multiply"},
	"minecraft:visual/star_angle": {"ease": SKY_ANGLE_EASE, "keyframes": keyframes((6000, 360.0), (6000, 0.0))},
	"minecraft:visual/star_brightness": {"keyframes": keyframes(
		(92, 0.037), (627, 0.0), (11373, 0.0), (11732, 0.016), (11959, 0.044), (12399, 0.143),
		(12729, 0.258), (13228, 0.5), (22772, 0.5), (23032, 0.364), (23356, 0.225), (23758, 0.101),
	), "modifier": "maximum"},
	"minecraft:visual/sun_angle": {"ease": SKY_ANGLE_EASE, "keyframes": keyframes((6000, 360.0), (6000, 0.0))},
	"minecraft:visual/sunrise_sunset_color": {"keyframes": keyframes(
		(71, "#5fefa333"), (310, "#29f5ba33"), (565, "#06fbd433"), (730, "#00ffe533"), (11270, "#00ffe533"),
		(11397, "#04fcd833"), (11522, "#0ff9cb33"), (11690, "#29f5ba33"), (11929, "#5fefa333"), (12243, "#b1e78733"),
		(12358, "#cce47e33"), (12512, "#e9e07233"), (12613, "#f6dd6b33"), (12732, "#feda6333"), (12841, "#fed75c33"),
		(13035, "#ecd25133"), (13252, "#c1cc4733"), (13775, "#36be3733"), (13888, "#1fbb3533"), (14039, "#09b73333"),
		(14192, "#00b33333"), (21807, "#00b23333"), (21961, "#09b73333"), (22112, "#1fbb3533"), (22225, "#36be3733"),
		(22748, "#c1cc4733"), (22965, "#ecd25133"), (23159, "#fed75c33"), (23272, "#feda6333"), (23488, "#e9e07233"),
		(23642, "#cce47e33"), (23757, "#b1e78733"),
	)},
}
""" The tracks of vanilla `minecraft:day` (26.3 server data), so a game night looks and plays like a vanilla one. """


def write_dimensions() -> None:
	""" Build the shared dimensions explicitly under the switch namespace.
		(Dimension and DimensionType are registered as custom types in load_datapack_json beforehand.)

		Games run on the clock `switch:game`, so `time of switch:game set` leaves the lobby's `minecraft:overworld` clock alone.
		Their type is vanilla `minecraft:overworld` with that clock and a `switch:day` timeline driven by it.
		A server restart is needed to load a changed type, clock or timeline: /reload ignores them.
	"""
	ns: str = Mem.ctx.project_id
	switch = Mem.ctx.data[ns]
	switch.world_clocks["game"] = set_json_encoder(WorldClock({}))
	switch.timelines["day"] = set_json_encoder(Timeline({"clock": f"{ns}:game", "period_ticks": 24000, "tracks": DAY_TRACKS}))
	switch[DimensionType]["game"] = set_json_encoder(DimensionType({
		"ambient_light": 0.0,
		"attributes": {
			"minecraft:audio/ambient_sounds": {"mood": {"block_search_extent": 8, "offset": 2.0, "sound": "minecraft:ambient.cave", "tick_delay": 6000}},
			"minecraft:audio/background_music": {
				"creative": {"max_delay": 24000, "min_delay": 12000, "sound": "minecraft:music.creative"},
				"default": {"max_delay": 24000, "min_delay": 12000, "sound": "minecraft:music.game"},
			},
			"minecraft:gameplay/bed_rule": {"can_set_spawn": "always", "can_sleep": "when_dark", "error_message": {"translate": "block.minecraft.bed.no_sleep"}},
			"minecraft:gameplay/nether_portal_spawns_piglin": True,
			"minecraft:gameplay/respawn_anchor_works": False,
			"minecraft:gameplay/straw_bed_rule": {
				"can_set_spawn": "never", "can_sleep": "when_dark", "destroy_on_leave": True, "error_message": {"translate": "block.minecraft.bed.no_sleep"},
			},
			"minecraft:visual/ambient_light_color": "#0a0a0a",
			"minecraft:visual/cloud_color": "#ccffffff",
			"minecraft:visual/cloud_height": 192.33,
			"minecraft:visual/fog_color": "#c0d8ff",
			"minecraft:visual/sky_color": "#78a7ff",
		},
		"coordinate_scale": 1.0,
		"default_clock": f"{ns}:game",
		"has_ceiling": False,
		"has_ender_dragon_fight": False,
		"has_skylight": True,
		"height": 384,
		"infiniburn": "#minecraft:infiniburn_overworld",
		"logical_height": 384,
		"min_y": -64,
		"monster_spawn_block_light_limit": 0,
		"monster_spawn_light_level": {"type": "minecraft:uniform", "max_inclusive": 7, "min_inclusive": 0},
		"timelines": ["minecraft:villager_schedule", f"{ns}:day", "minecraft:moon", "minecraft:early_game"],
	}))
	switch[Dimension]["game"] = set_json_encoder(Dimension(void_generator(f"{ns}:game")))
	switch[Dimension]["void"] = set_json_encoder(Dimension(void_generator("minecraft:overworld")))

