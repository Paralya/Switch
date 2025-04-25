
# Imports
import zipfile
import stouputils as stp
from config import ROOT, LIBS_FOLDER
from python_datapack.utils.database_helper import *

# Constants
ALL_BPM: int = 80
INPUTS_FOLDER: str = f"{ROOT}/note_block_studio/datapacks"
REQUIRED_PATH_PARTS: list[str] = ["notes/", ".mcfunction"]
LIB_TO_WRITE: str = f"{LIBS_FOLDER}/datapack/switch_music.zip"
RELATIVE_LIB_TO_WRITE: str = LIB_TO_WRITE.replace(stp.clean_path(os.getcwd()) + "/", "")

# Main function
def main(config: dict) -> None:

	# Cache the zip file
	if os.path.exists(LIB_TO_WRITE):
		stp.progress(f"The NoteBlock Studio songs zip file already exists at '{RELATIVE_LIB_TO_WRITE}', skipping the generation")
		return

	objectives: list[tuple[str, int, int]] = []
	authors: list[str] = []
	with zipfile.ZipFile(LIB_TO_WRITE, "w") as lib:

		# For each .zip file in the input folder
		for file in os.listdir(INPUTS_FOLDER):
			if file.endswith(".zip"):
				length: int = 0
				bpm: int = ALL_BPM

				# For each file in the zip file that matches the required path parts
				with zipfile.ZipFile(f"{INPUTS_FOLDER}/{file}", "r") as zf:
					files: list[str] = sorted(zf.namelist())
					load_file: str = [x for x in files if "load.mcfunction" in x][0]
					bpm = int(zf.read(load_file).decode("utf-8").split(" ")[-1])

					for file_to_copy in files:
						if all(x in file_to_copy for x in REQUIRED_PATH_PARTS):
							
							# Only keep the playsound lines
							playsounds: list[str] = zf.read(file_to_copy).decode("utf-8").split("\n")
							playsounds = [line for line in playsounds if line.startswith("playsound")]

							# Get a higher volume
							for i, line in enumerate(playsounds):
								splitted: list[str] = line.split(" ")
								splitted[7] = "1"
								playsounds[i] = " ".join(splitted)
							file_content: str = "\n".join(playsounds)

							# Write the file
							splitted_destination: list[str] = file_to_copy.replace("notes/", "").split("/")[-2:]
							music_namespace: str = splitted_destination[0]
							note: str = splitted_destination[1].split(".")[0]
							note = str(int(note) * ALL_BPM // bpm)
							destination_file: str = f"data/switch/function/music/{music_namespace}/{note}.mcfunction"
							lib.writestr(destination_file, file_content.encode("utf-8"))

							# Remember the highest length
							length = max(length, int(note))

				# Add the objective
				song: str = file.replace(".zip", "").replace(" ", "_").split("_sss_")
				authors.append(song[0])
				objectives.append((song[1], length, bpm))
		
		# Add a pack.mcmeta file
		lib.writestr("pack.mcmeta", stp.super_json_dump({"pack":{"pack_format":DATAPACK_FORMAT,"description":"Musics made with NoteBlock Studio"}}))
		pass

		# Write the objectives
		# Write all objectives to a single string first
		load_content = f"""
scoreboard objectives add switch.music.current dummy
scoreboard objectives add switch.music.progress dummy
scoreboard objectives add switch.music.loop_state dummy
scoreboard players set #last_index switch.music.current {len(objectives)+99}
"""
		for song, length, bpm in objectives:
			load_content += f"scoreboard players set #{song} switch.music.progress {length}\n"
			
		# Write the full content at once
		lib.writestr("data/switch/function/music/load.mcfunction", load_content)

		# Write the tick functions
		player_tick_content = ""
		for i, (song, length, bpm) in enumerate(objectives):
			player_tick_content += f"execute if score @s switch.music.current matches {i+100} run function switch:music/ticks/{song}\n"
			
			tick_song_content = f"""
scoreboard players add @s switch.music.progress 1
data modify storage switch:temp input set value {{tick:0,name:"{song}"}}
scoreboard players operation #temp switch.data = @s switch.music.progress
scoreboard players remove #temp switch.data 20
execute store result storage switch:temp input.tick int 1 run scoreboard players get #temp switch.data
function switch:music/tick_macro with storage switch:temp input

# Stop if the music is over
execute if score #temp switch.data >= #{song} switch.music.progress run function switch:music/music_over
"""
			lib.writestr(f"data/switch/function/music/ticks/{song}.mcfunction", tick_song_content)

		player_tick_content += "execute if score @s switch.music.current matches -1 run function switch:music/next_music"
		lib.writestr("data/switch/function/music/player_tick.mcfunction", player_tick_content)

		# Write the browser file (tellraws)
		browser_content = """
# Top
tellraw @s ["\\n",{"nbt":"ParalyaMusic","storage":"switch:main","interpret":true},{"text":" [🔀]","color":"light_purple","click_event":{"action":"run_command","command":"/trigger switch.trigger.music set 2"},"hover_event":{"action":"show_text","value":{"text":"Randomize","color":"gray"}}},{"text":" [⏮]","color":"light_purple","click_event":{"action":"run_command","command":"/trigger switch.trigger.music set 3"},"hover_event":{"action":"show_text","value":{"text":"Previous","color":"gray"}}},{"text":" [⏯]","color":"light_purple","click_event":{"action":"run_command","command":"/trigger switch.trigger.music set 4"},"hover_event":{"action":"show_text","value":{"text":"Play/Pause","color":"gray"}}},{"text":" [⏭]","color":"light_purple","click_event":{"action":"run_command","command":"/trigger switch.trigger.music set 5"},"hover_event":{"action":"show_text","value":{"text":"Next","color":"gray"}}},{"text":" [🔁]","color":"light_purple","click_event":{"action":"run_command","command":"/trigger switch.trigger.music set 6"},"hover_event":{"action":"show_text","value":{"text":"Repeat","color":"gray"}}},"\\n"]

# For each music, write a line"""

		for i, (song, length, bpm) in enumerate(objectives):
			duration: int = int(length // 20 // (bpm / ALL_BPM))
			if duration > 60:
				duration: str = f"{duration // 60}m{duration % 60:02}"
			display: str = authors[i].replace("_"," ") + f" - " + song.replace("_"," ").title()
			browser_content += f"""
execute if score @s switch.music.current matches {i+100} run tellraw @s [{{"text":"➤ {display} (Currently playing)","color":"#FFC0CB","click_event":{{"action":"run_command","command":"/trigger switch.trigger.music set {i+100}"}},"hover_event":{{"action":"show_text","value":{{"text":"Play the music (Duration: {duration}s)","color":"gray"}}}}}}]
execute unless score @s switch.music.current matches {i+100} run tellraw @s [{{"text":"➤ {display}","color":"light_purple","click_event":{{"action":"run_command","command":"/trigger switch.trigger.music set {i+100}"}},"hover_event":{{"action":"show_text","value":{{"text":"Play the music (Duration: {duration}s)","color":"gray"}}}}}}]
"""

		lib.writestr("data/switch/function/music/browser.mcfunction", browser_content)
		pass

	stp.progress(f"The NoteBlock Studio songs zip file has been generated at '{RELATIVE_LIB_TO_WRITE}'")

