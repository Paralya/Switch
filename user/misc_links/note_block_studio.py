
# Imports
from config import *
from python_datapack.utils.database_helper import *
import zipfile

# Constants
ALL_BPM: int = 80
INPUTS_FOLDER: str = f"{ROOT}/script_inputs"
REQUIRED_PATH_PARTS: list[str] = ["switch/functions/", "notes/", ".mcfunction"]
LIB_TO_WRITE: str = f"{LIBS_FOLDER}/datapack/switch_music.zip"

# Main function
def main(config: dict) -> None:
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
		lib.writestr("pack.mcmeta", super_json_dump({"pack":{"pack_format":DATAPACK_FORMAT,"description":"Musics made with NoteBlock Studio"}}))
		pass

	# Write the objectives
	write_to_function(config, "switch:music/load", f"""
scoreboard objectives add switch.music.current dummy
scoreboard objectives add switch.music.progress dummy
scoreboard objectives add switch.music.loop_state dummy
scoreboard players set #last_index switch.music.current {len(objectives)+99}
""")
	for song, length, bpm in objectives:
		write_to_function(config, "switch:music/load", f"scoreboard players set #{song} switch.music.progress {length}\n")

	# Write the tick function
	#write_to_function(config, "switch:music/tick", "")
	for i, (song, length, bpm) in enumerate(objectives):
		write_to_function(config, "switch:music/player_tick", f"execute if score @s switch.music.current matches {i+100} run function switch:music/ticks/{song}\n")
		write_to_function(config, f"switch:music/ticks/{song}", f"""
scoreboard players add @s switch.music.progress 1
data modify storage switch:temp input set value {{tick:0,name:"{song}"}}
scoreboard players operation #temp switch.data = @s switch.music.progress
scoreboard players remove #temp switch.data 20
execute store result storage switch:temp input.tick int 1 run scoreboard players get #temp switch.data
function switch:music/tick_macro with storage switch:temp input

# Stop if the music is over
execute if score #temp switch.data >= #{song} switch.music.progress run function switch:music/music_over
""")
	write_to_function(config, "switch:music/player_tick", "execute if score @s switch.music.current matches -1 run function switch:music/next_music")

	# Write the browser file (tellraws)
	write_to_function(config, "switch:music/browser", """
# Top
tellraw @s ["\\n",{"nbt":"ParalyaMusic","storage":"switch:main","interpret":true},{"text":" [🔀]","color":"light_purple","clickEvent":{"action":"run_command","value":"/trigger switch.trigger.music set 2"},"hoverEvent":{"action":"show_text","value":{"text":"Randomize","color":"gray"}}},{"text":" [⏮]","color":"light_purple","clickEvent":{"action":"run_command","value":"/trigger switch.trigger.music set 3"},"hoverEvent":{"action":"show_text","value":{"text":"Previous","color":"gray"}}},{"text":" [⏯]","color":"light_purple","clickEvent":{"action":"run_command","value":"/trigger switch.trigger.music set 4"},"hoverEvent":{"action":"show_text","value":{"text":"Play/Pause","color":"gray"}}},{"text":" [⏭]","color":"light_purple","clickEvent":{"action":"run_command","value":"/trigger switch.trigger.music set 5"},"hoverEvent":{"action":"show_text","value":{"text":"Next","color":"gray"}}},{"text":" [🔁]","color":"light_purple","clickEvent":{"action":"run_command","value":"/trigger switch.trigger.music set 6"},"hoverEvent":{"action":"show_text","value":{"text":"Repeat","color":"gray"}}},"\\n"]

# For each music, write a line""")
	for i, (song, length, bpm) in enumerate(objectives):
		duration: int = int(length // 20 // (bpm / ALL_BPM))
		if duration > 60:
			duration: str = f"{duration // 60}m{duration % 60:02}"
		display: str = authors[i].replace("_"," ") + f" - " + song.replace("_"," ").title()
		write_to_function(config, "switch:music/browser", f"""
execute if score @s switch.music.current matches {i+100} run tellraw @s [{{"text":"➤ {display} (Currently playing)","color":"#FFC0CB","clickEvent":{{"action":"run_command","value":"/trigger switch.trigger.music set {i+100}"}},"hoverEvent":{{"action":"show_text","value":{{"text":"Play the music (Duration: {duration}s)","color":"gray"}}}}}}]
execute unless score @s switch.music.current matches {i+100} run tellraw @s [{{"text":"➤ {display}","color":"light_purple","clickEvent":{{"action":"run_command","value":"/trigger switch.trigger.music set {i+100}"}},"hoverEvent":{{"action":"show_text","value":{{"text":"Play the music (Duration: {duration}s)","color":"gray"}}}}}}]""")

	progress(f"Linked {len(objectives)} NoteBlock Studio musics")
	pass

