
# Imports
import os
import zipfile

import stouputils as stp
from beet import Cache
from stewbeet.core import Mem

# Constants
ALL_BPM: int = 80
INPUTS_FOLDER: str = "note_block_studio/datapacks"
REQUIRED_PATH_PARTS: list[str] = ["notes/", ".mcfunction"]
LIB_TO_WRITE: str = "datapack/switch_music.zip"


# Songs listing (the order of the files is what gives each song its music index, so never sort it)
def get_songs() -> list[tuple[str, str, str]]:
	""" Get every song of the inputs folder.

	Returns:
		list[tuple[str, str, str]]: (file name, author, song name) of each song, in the music index order.
	"""
	songs: list[tuple[str, str, str]] = []
	for file in os.listdir(INPUTS_FOLDER):
		if file.endswith(".zip"):
			author, song = file.replace(".zip", "").replace(" ", "_").split("_sss_")
			songs.append((file, author, song))
	return songs

def get_song_score(name: str) -> int:
	""" Get the "{ns}.music.current" score that plays a song, so the index is never hardcoded in the datapack.

	Args:
		name: Name of the song, as written after "_sss_" in the file name (ex: "stay_inside_me").
	Returns:
		int: The score to play the song (the first song of the folder is the score 100).
	"""
	songs: list[str] = [song for _, _, song in get_songs()]
	if name not in songs:
		raise ValueError(f"Song '{name}' not found in '{INPUTS_FOLDER}', available songs: {songs}")
	return 100 + songs.index(name)


# Main function
def write_note_block_studio() -> None:
	ns: str = Mem.ctx.project_id
	libs_folder: str = str(Mem.ctx.meta.get("stewbeet", {}).get("libs_folder", "libs"))
	lib_file: str = f"{libs_folder}/{LIB_TO_WRITE}"

	# Skip the generation when the zip is there and no source song was modified, added or removed
	cache: Cache = Mem.ctx.cache["switch"]
	sources: list[str] = [f"{INPUTS_FOLDER}/{file}" for file, _, _ in get_songs()]
	if os.path.exists(lib_file) and not cache.has_changed(*sources) and cache.json.get("note_block_studio_sources") == sources:
		return

	with stp.MeasureTime(message="Generated the NoteBlock Studio songs zip file") as measure_time:
		with zipfile.ZipFile(lib_file, "w") as lib:
			objectives: list[tuple[str, int, int]] = [copy_song_notes(lib, ns, file, song_name) for file, _, song_name in get_songs()]
			lib.writestr("pack.mcmeta", stp.json_dump({"pack":{**Mem.ctx.data.mcmeta.data["pack"],"description":"Musics made with NoteBlock Studio"}}))
			write_player_functions(lib, ns, objectives, [author for _, author, _ in get_songs()])

		# Remember the sources only once the zip is fully written, so a failed generation is never considered up-to-date
		cache.has_changed(*sources)
		cache.json["note_block_studio_sources"] = sources
		measure_time.message = f"The NoteBlock Studio songs zip file has been generated at '{stp.relative_path(lib_file)}' with {len(objectives)} songs"


def copy_song_notes(lib: zipfile.ZipFile, ns: str, file: str, song_name: str) -> tuple[str, int, int]:
	""" Copy the louder playsound lines of one song into the lib, one function per tick rescaled to ALL_BPM.

	Args:
		file:      Song zip name inside INPUTS_FOLDER.
		song_name: Name of the song, as written after "_sss_" in the file name.
	Returns:
		tuple[str, int, int]: The song name, its last tick at ALL_BPM, and its original bpm
	"""
	length: int = 0
	with zipfile.ZipFile(f"{INPUTS_FOLDER}/{file}", "r") as zf:
		files: list[str] = sorted(zf.namelist())
		load_file: str = next(x for x in files if "load.mcfunction" in x)
		bpm: int = int(zf.read(load_file).decode("utf-8").split(" ")[-1])

		for file_to_copy in files:
			if not all(x in file_to_copy for x in REQUIRED_PATH_PARTS):
				continue

			# Only keep the playsound lines, with their volume (8th argument) raised to 1
			playsounds: list[list[str]] = [line.split(" ") for line in zf.read(file_to_copy).decode("utf-8").split("\n") if line.startswith("playsound")]
			file_content: str = "\n".join(" ".join([*words[:7], "1", *words[8:]]) for words in playsounds)

			music_namespace, note_file = file_to_copy.replace("notes/", "").split("/")[-2:]
			note: int = int(note_file.split(".")[0]) * ALL_BPM // bpm
			lib.writestr(f"data/{ns}/function/music/{music_namespace}/{note}.mcfunction", file_content.encode("utf-8"))
			length = max(length, note)
	return song_name, length, bpm


def write_player_functions(lib: zipfile.ZipFile, ns: str, objectives: list[tuple[str, int, int]], authors: list[str]) -> None:
	""" Write the load, tick and browser functions that play the songs to each player.

	Args:
		objectives: The (song name, last tick, bpm) of each song, in the music index order.
		authors:    The author of each song, in the same order.
	"""
	load_content = f"""
	scoreboard objectives add {ns}.music.current dummy
	scoreboard objectives add {ns}.music.progress dummy
	scoreboard objectives add {ns}.music.loop_state dummy
	scoreboard players set #last_index {ns}.music.current {len(objectives)+99}
	"""
	for song, length, _ in objectives:
		load_content += f"scoreboard players set #{song} {ns}.music.progress {length}\n"

	# Write the full content at once
	lib.writestr(f"data/{ns}/function/music/load.mcfunction", load_content)

	# Write the tick functions
	player_tick_content = ""
	for i, (song, _, _) in enumerate(objectives):
		player_tick_content += f"execute if score @s {ns}.music.current matches {i+100} run function {ns}:music/ticks/{song}\n"

		tick_song_content = f"""
	scoreboard players add @s {ns}.music.progress 1
	data modify storage {ns}:temp input set value {{tick:0,name:"{song}"}}
	scoreboard players operation #temp {ns}.data = @s {ns}.music.progress
	scoreboard players remove #temp {ns}.data 20
	execute store result storage {ns}:temp input.tick int 1 run scoreboard players get #temp {ns}.data
	function {ns}:music/tick_macro with storage {ns}:temp input

	# Stop if the music is over
	execute if score #temp {ns}.data >= #{song} {ns}.music.progress run function {ns}:music/music_over
	"""
		lib.writestr(f"data/{ns}/function/music/ticks/{song}.mcfunction", tick_song_content)

	player_tick_content += f"execute if score @s {ns}.music.current matches -1 run function {ns}:music/next_music"
	lib.writestr(f"data/{ns}/function/music/player_tick.mcfunction", player_tick_content)

	# Write the browser file (tellraws)
	browser_content = f"""
	# Top
	tellraw @s ["\\n",{{"nbt":"ParalyaMusic","storage":"{ns}:main","interpret":true}},{{"text":" [🔀]","color":"light_purple","click_event":{{"action":"run_command","command":"/trigger {ns}.trigger.music set 2"}},"hover_event":{{"action":"show_text","value":{{"text":"Randomize","color":"gray"}}}}}},{{"text":" [⏮]","color":"light_purple","click_event":{{"action":"run_command","command":"/trigger {ns}.trigger.music set 3"}},"hover_event":{{"action":"show_text","value":{{"text":"Previous","color":"gray"}}}}}},{{"text":" [⏯]","color":"light_purple","click_event":{{"action":"run_command","command":"/trigger {ns}.trigger.music set 4"}},"hover_event":{{"action":"show_text","value":{{"text":"Play/Pause","color":"gray"}}}}}},{{"text":" [⏭]","color":"light_purple","click_event":{{"action":"run_command","command":"/trigger {ns}.trigger.music set 5"}},"hover_event":{{"action":"show_text","value":{{"text":"Next","color":"gray"}}}}}},{{"text":" [🔁]","color":"light_purple","click_event":{{"action":"run_command","command":"/trigger {ns}.trigger.music set 6"}},"hover_event":{{"action":"show_text","value":{{"text":"Repeat","color":"gray"}}}}}},"\\n"]

	# For each music, write a line"""

	for i, (song, length, bpm) in enumerate(objectives):
		duration_seconds: int = int(length // 20 // (bpm / ALL_BPM))
		duration: str = f"{duration_seconds // 60}m{duration_seconds % 60:02}" if duration_seconds > 60 else str(duration_seconds)
		display: str = authors[i].replace("_"," ") + " - " + song.replace("_"," ").title()
		browser_content += f"""
	execute if score @s {ns}.music.current matches {i+100} run tellraw @s [{{"text":"➤ {display} (Currently playing)","color":"#FFC0CB","click_event":{{"action":"run_command","command":"/trigger {ns}.trigger.music set {i+100}"}},"hover_event":{{"action":"show_text","value":{{"text":"Play the music (Duration: {duration}s)","color":"gray"}}}}}}]
	execute unless score @s {ns}.music.current matches {i+100} run tellraw @s [{{"text":"➤ {display}","color":"light_purple","click_event":{{"action":"run_command","command":"/trigger {ns}.trigger.music set {i+100}"}},"hover_event":{{"action":"show_text","value":{{"text":"Play the music (Duration: {duration}s)","color":"gray"}}}}}}]
	"""

	lib.writestr(f"data/{ns}/function/music/browser.mcfunction", browser_content)

