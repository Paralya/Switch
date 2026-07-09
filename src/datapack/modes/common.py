
# Imports
import glob
import os

import stouputils as stp
from beet import Sound, Structure
from stewbeet import Mem, write_advancement, write_function

ROOT: str = stp.get_root_path(__file__)


# Binary resource registration (the only non-.py files a mode may own)
def register_structures(mode: str) -> None:
	""" Register every .nbt under _modes/<mode>/structures/ as a switch structure, keyed by its
		path relative to that folder (which mirrors the switch:<...> template path). """
	ns: str = Mem.ctx.project_id
	root: str = f"{ROOT}/{mode}/structures"
	for path in sorted(glob.glob(f"{root}/**/*.nbt", recursive=True)):
		key: str = os.path.relpath(path, root).replace(os.sep, "/")[:-len(".nbt")]
		Mem.ctx.data[ns].structures[key] = Structure(source_path=path)


def register_sounds(mode: str, ns: str) -> None:
	""" Register every .ogg under _modes/<mode>/sounds/ as a sound in the given namespace, keyed by
		its path relative to that folder. """
	root: str = f"{ROOT}/{mode}/sounds"
	for path in sorted(glob.glob(f"{root}/**/*.ogg", recursive=True)):
		key: str = os.path.relpath(path, root).replace(os.sep, "/")[:-len(".ogg")]
		Mem.ctx.assets[ns].sounds[key] = Sound(source_path=path)


# Functions
def write_modes_calls(
	mode: str,
	calls: tuple[str, ...] = ("joined", "second", "start", "stop", "tick"),
	context: str = "",
	force_start: bool = True,
	targets: dict[str, str] | None = None,
) -> None:
	""" Write the /calls/* dispatch functions (and the standard /_force_start) for a mode.

	Args:
		mode        (str):              Mode id, e.g. "coin_chaser".
		calls       (tuple[str, ...]):  Which call hooks to generate.
		context     (str):              Optional execute sub-clause inserted before "run"
			(e.g. "in switch:build_battle " or "positioned 3000 128 3000 ").
		force_start (bool):             Whether to also write the standard /_force_start function.
		targets     (dict[str, str]):   Optional per-call dispatch override, mapping call -> function
			path (e.g. {"joined": "switch:utils/classic_death"}) so /calls/<call> dispatches straight
			to that function instead of switch:modes/<mode>/<call> — lets pure-redirect hooks be dropped.
	"""
	ns: str = Mem.ctx.project_id
	overrides: dict[str, str] = targets or {}
	for call in calls:
		target: str = overrides.get(call, f"{ns}:modes/{mode}/{call}")
		write_function(f"{ns}:modes/{mode}/calls/{call}", f"""
execute if data storage {ns}:main {{current_game:"{mode}"}} {context}run function {target}
""")

	if force_start:
		write_function(f"{ns}:modes/{mode}/_force_start", f"""
function {ns}:engine/force_start_macro {{id:"{mode}"}}
""")


def write_server_announce(path: str, fr: str, en: str) -> None:
	""" Write a bilingual server-prefixed announcement (the "[Paralya] ..." tellraw pair).

	Args:
		path (str):  Full function path, e.g. f"{path}/start".
		fr   (str):  French message text (inserted after the server-name prefix and a leading space).
		en   (str):  English message text.
	"""
	ns: str = Mem.ctx.project_id
	write_function(path, f"""
# French
tellraw @a[scores={{{ns}.lang=0}},tag=!detached] ["\\n",{{"nbt":"Paralya","storage":"{ns}:main","interpret":true}},{{"text":" {fr}"}}]

# English
tellraw @a[scores={{{ns}.lang=1}},tag=!detached] ["\\n",{{"nbt":"Paralya","storage":"{ns}:main","interpret":true}},{{"text":" {en}"}}]
""")


def register_break_obsidian_advancement(mode: str) -> None:
	""" Register the shared break_obsidian tick advancement for a mode (rush_the_flag / rush_the_point):
		grant once switch.temp.break_obsidian reaches 1, rewarding the mode's break_obsidian function. """
	ns: str = Mem.ctx.project_id
	write_advancement(f"{ns}:{mode}/break_obsidian", {
		"criteria": {"requirement": {
			"trigger": "minecraft:tick",
			"conditions": {"player": [{
				"condition": "minecraft:entity_scores",
				"entity": "this",
				"scores": {f"{ns}.temp.break_obsidian": {"min": 1}},
			}]},
		}},
		"rewards": {"function": f"{ns}:modes/{mode}/advancements/break_obsidian"},
	})


def write_no_drop(path: str) -> None:
	""" Write the shared /no_drop body: keep a thrown item from being picked up or despawning. """
	ns: str = Mem.ctx.project_id
	write_function(path, f"""
tag @s add {ns}.checked
data modify entity @s Owner set from entity @s Thrower
data modify entity @s PickupDelay set value 0s
""")


def write_time_xp_bar(path: str, seconds: int, points_score: str = "#remaining_time", levels_score: str = "#remaining_time") -> None:
	""" Write a time-based XP bar updater: full bar at `seconds`, empty at 0.

	Delegates the shared logic to the switch:modes/_common/xp_bar/time macro so every
	mode's xp_bar is a one-liner. Only the divide value and the two source scores vary.

	Args:
		path         (str):  Full function path, e.g. f"{path}/xp_bar".
		seconds      (int):  Full-bar value in seconds (the bar fills the #points score over seconds*1000).
		points_score (str):  Score driving the progress bar (#points). Defaults to #remaining_time.
		levels_score (str):  Score driving the XP level number. Defaults to #remaining_time.
	"""
	ns: str = Mem.ctx.project_id
	write_function(path, f"""
scoreboard players set #divide {ns}.data {seconds * 1000}
function {ns}:modes/_common/xp_bar/time {{points_score:"{points_score}",levels_score:"{levels_score}"}}
""")
