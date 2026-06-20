
# Imports
from stewbeet import Mem, write_function


# Functions
def write_modes_calls(
	mode: str,
	calls: tuple[str, ...] = ("joined", "second", "start", "stop", "tick"),
	context: str = "",
	force_start: bool = True,
) -> None:
	""" Write the /calls/* dispatch functions (and the standard /_force_start) for a mode.

	Args:
		mode        (str):              Mode id, e.g. "coin_chaser".
		calls       (tuple[str, ...]):  Which call hooks to generate.
		context     (str):              Optional execute sub-clause inserted before "run"
			(e.g. "in switch:build_battle " or "positioned 3000 128 3000 ").
		force_start (bool):             Whether to also write the standard /_force_start function.
	"""
	ns: str = Mem.ctx.project_id
	for call in calls:
		write_function(f"{ns}:modes/{mode}/calls/{call}", f"""
execute if data storage switch:main {{current_game:"{mode}"}} {context}run function switch:modes/{mode}/{call}
""")

	if force_start:
		write_function(f"{ns}:modes/{mode}/_force_start", f"""
function switch:engine/force_start_macro {{id:"{mode}"}}
""")


def write_server_announce(path: str, fr: str, en: str) -> None:
	""" Write a bilingual server-prefixed announcement (the "[Paralya] ..." tellraw pair).

	Args:
		path (str):  Full function path, e.g. f"{path}/start".
		fr   (str):  French message text (inserted after the server-name prefix and a leading space).
		en   (str):  English message text.
	"""
	write_function(path, f"""
# French
tellraw @a[scores={{switch.lang=0}},tag=!detached] ["\\n",{{"nbt":"Paralya","storage":"switch:main","interpret":true}},{{"text":" {fr}"}}]

# English
tellraw @a[scores={{switch.lang=1}},tag=!detached] ["\\n",{{"nbt":"Paralya","storage":"switch:main","interpret":true}},{{"text":" {en}"}}]
""")


def write_classic_death(path: str) -> None:
	""" Write a function whose body is just the shared switch:utils/classic_death call. """
	write_function(path, """
function switch:utils/classic_death
""")


def write_no_drop(path: str) -> None:
	""" Write the shared /no_drop body: keep a thrown item from being picked up or despawning. """
	write_function(path, """
tag @s add switch.checked
data modify entity @s Owner set from entity @s Thrower
data modify entity @s PickupDelay set value 0s
""")


def write_time_xp_bar(path: str, seconds: int) -> None:
	""" Write a time-based XP bar updater: full bar at `seconds` remaining, empty at 0.

	Args:
		path    (str):  Full function path, e.g. f"{path}/xp_bar".
		seconds (int):  Total game duration in seconds (full bar value).
	"""
	write_function(path, f"""
# {seconds} seconds = 100%
# 0 seconds = 0%
scoreboard players operation #points switch.data = #remaining_time switch.data
scoreboard players operation #points switch.data *= #1000000 switch.data
scoreboard players set #divide switch.data {seconds * 1000}
function switch:modes/_common/xp_bar/points

scoreboard players operation #levels switch.data = #remaining_time switch.data
function switch:modes/_common/xp_bar/levels
""")
