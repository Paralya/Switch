""" Scaffold a new minigame: creates its package and prints the MODES entry to paste.

The generated mode builds and is playable right away through its _force_start, so a contributor
can see something in game before reading anything about the pipeline.
"""
# Imports
import re
import sys
from pathlib import Path

import stouputils as stp

# Constants
MODES_FOLDER: Path = Path(__file__).resolve().parent.parent / "src" / "datapack" / "modes"
""" Folder receiving one package per minigame. """

VALID_ID: re.Pattern[str] = re.compile(r"^[a-z][a-z0-9_]*$")
""" A mode id is a lowercase python identifier: it is both a folder name and a storage key. """

MAIN_TEMPLATE: str = '''
# Imports
from stewbeet import Mem, write_function

from ..emit import write_modes_calls, write_time_xp_bar
from .translations import write_translations

DURATION: int = 300
""" How long a game lasts, in seconds. """


def write_mode():
	ns: str = Mem.ctx.project_id
	mode: str = "__MODE__"
	path: str = f"{ns}:modes/{mode}"

	# Write /calls/ (the dispatch the engine goes through) and /translations/
	write_modes_calls(mode)
	write_translations()

	# /death (called when a player dies: turn them into a spectator)
	write_function(f"{path}/death", f"""
function {path}/translations/death
function {ns}:modes/_common/death_spectator
""")

	# /joined (a player joining a running game only gets to watch)
	write_function(f"{path}/joined", f"""
gamemode spectator @s
function {path}/death
""")

	# /process_end (end the game once a single player is left standing)
	write_function(f"{path}/process_end", f"""
function {ns}:modes/_common/process_end/last_survivor {{death:"{path}/death"}}
""")

	# /start (once, when the game begins: pick a map and reset the counters)
	write_function(f"{path}/start", f"""
effect give @a[tag=!detached] saturation infinite 255 true

# Pick the arena among the maps declared in survival_maps/definitions.py
scoreboard players set #do_spreadplayers {ns}.data 1
function {ns}:utils/choose_map_for {{id:"{mode}", maps:["switch_space"]}}

function {path}/translations/start

scoreboard players set #__MODE___seconds {ns}.data -6
scoreboard players set #process_end {ns}.data 0
""")

	# /second (once per game second: countdown, then the time limit)
	write_function(f"{path}/second", f"""
scoreboard players add #__MODE___seconds {ns}.data 1
function {path}/xp_bar

execute if score #__MODE___seconds {ns}.data matches -5..0 as @a[tag=!detached] at @s run playsound entity.experience_orb.pickup ambient @s
function {path}/translations/second

execute if score #__MODE___seconds {ns}.data matches {DURATION}.. run function {path}/process_end
""")

	# /tick (every game tick: catch deaths and check whether the game is over)
	write_function(f"{path}/tick", f"""
function {ns}:utils/on_death_run_function {{function:"{path}/death"}}

scoreboard players set #remaining_players {ns}.data 0
execute store result score #remaining_players {ns}.data if entity @a[tag=!detached,gamemode=!spectator]
execute if score #__MODE___seconds {ns}.data matches 1.. if score #remaining_players {ns}.data matches ..1 run function {path}/process_end
""")

	# /stop (clean up everything /start created)
	write_function(f"{path}/stop", f"""
scoreboard players reset #__MODE___seconds {ns}.data
""")

	# /xp_bar (the XP bar doubles as the remaining time gauge)
	write_time_xp_bar(f"{path}/xp_bar", DURATION, "#__MODE___seconds", "#__MODE___seconds")

'''
""" Body of a new mode's main.py, with __MODE__ standing for its id. """

TRANSLATIONS_TEMPLATE: str = '''
# Imports
from stewbeet import Mem, write_function

from ..emit import write_server_announce


def write_translations():
	""" Write the __MODE__ translation functions at switch:modes/__MODE__/translations/* """
	ns: str = Mem.ctx.project_id
	path: str = f"{ns}:modes/__MODE__/translations"

	# /death
	write_function(f"{path}/death", f"""
# French
execute if entity @s[gamemode=!spectator] run tellraw @a[scores={{{ns}.lang=0}},tag=!detached] [{{"selector":"@s","color":"red"}},{{"text":" est mort !"}}]

# English
execute if entity @s[gamemode=!spectator] run tellraw @a[scores={{{ns}.lang=1}},tag=!detached] [{{"selector":"@s","color":"red"}},{{"text":" died!"}}]
""")

	# /second (the 5 second countdown before the game starts)
	write_function(f"{path}/second", "\\n".join(
		f"""execute if score #__MODE___seconds {ns}.data matches {-second} run title @a[scores={{{ns}.lang={lang}}},tag=!detached] title {{"text":"{second}","color":"red"}}"""
		for lang in (0, 1) for second in (5, 4, 3, 2, 1)
	) + "\\n" + "\\n".join(
		f"""execute if score #__MODE___seconds {ns}.data matches 0 run title @a[scores={{{ns}.lang={lang}}},tag=!detached] title {{"text":"{go}","color":"red"}}"""
		for lang, go in ((0, "GO !"), (1, "GO!"))
	))

	# /start
	write_server_announce(f"{path}/start", "Lancement de la partie de __MODE__ !", "__MODE__ game is starting!")

'''
""" Body of a new mode's translations.py, with __MODE__ standing for its id. """

SPEC_TEMPLATE: str = '''	ModeSpec(
		id="__MODE__", name_fr="__NAME__",
		min_players=2, max_players=UNLIMITED,
		estimated_time="2-5 mins", inspiration="?", suggested_by="?", developed_by="?",
		description=Localized(
			fr=("Première ligne de description.", "Deuxième ligne."),
			en=("First description line.", "Second line."),
		),
	),'''
""" MODES entry to paste in definitions.py, with __MODE__ and __NAME__ standing for the mode. """


# Classes
class NewMode:

	@staticmethod
	def display_name(mode: str) -> str:
		""" Default human readable name built from a mode id.

		Args:
			mode (str): The mode id, ex: "tnt_run"
		Returns:
			str: The name, ex: "Tnt Run"

		Examples:
			>>> NewMode.display_name("tnt_run")
			'Tnt Run'
		"""
		return mode.replace("_", " ").title()

	@staticmethod
	def create(mode: str) -> Path:
		""" Write the package of a new mode.

		Args:
			mode (str): The mode id, ex: "tnt_run"
		Returns:
			Path: The created folder
		"""
		folder: Path = MODES_FOLDER / mode
		folder.mkdir()
		(folder / "__init__.py").write_text("", encoding="utf-8")
		(folder / "main.py").write_text(MAIN_TEMPLATE.replace("__MODE__", mode), encoding="utf-8")
		(folder / "translations.py").write_text(TRANSLATIONS_TEMPLATE.replace("__MODE__", mode), encoding="utf-8")
		return folder

	@staticmethod
	def main() -> int:
		""" Read the mode id from the command line, scaffold it, then print what is left to do.

		Returns:
			int: Process exit code
		"""
		if len(sys.argv) != 2:
			stp.error("usage: python tools/new_mode.py <mode_id>")
			return 1

		mode: str = sys.argv[1]
		if not VALID_ID.match(mode):
			stp.error(f"'{mode}' is not a valid mode id: lowercase letters, digits and underscores only")
			return 1
		if (MODES_FOLDER / mode).exists():
			stp.error(f"src/datapack/modes/{mode}/ already exists")
			return 1

		stp.info(f"Created {NewMode.create(mode)}")
		stp.info("It already builds. Launch it in game with:")
		stp.info(f"  /function switch:test_mode\n  /function switch:modes/{mode}/_force_start")
		stp.info("To put it in the vote, paste this into MODES in src/datapack/modes/definitions.py:\n")
		print(SPEC_TEMPLATE.replace("__MODE__", mode).replace("__NAME__", NewMode.display_name(mode)))
		return 0


if __name__ == "__main__":
	sys.exit(NewMode.main())

