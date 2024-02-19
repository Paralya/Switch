
## Python script that converts datapacks made with the "Note Block Studio" program to another format

# Stop if the execution is not in the same folder as the script
import os
if os.getcwd() != os.path.dirname(os.path.realpath(__file__)):
	print("Please execute this script in the same folder as the script")
	exit()
	pass

## Setup
import shutil
import zipfile
INPUTS_FOLDER = "script_inputs/"
FINAL_ZIP_FILE = "../../../../../switch_musics.zip"
ALL_BPM = 80
PLAYSOUND_VOLUME_MULTIPLIER = 1

# Score objectives
objectives = []

# With zip file opening
with zipfile.ZipFile(FINAL_ZIP_FILE + ".git", "w") as zip_file:

	# For each .zip file in the input folder
	for file in os.listdir(INPUTS_FOLDER):
		if file.endswith(".zip"):

			# Open the file
			length = 0
			bpm = 80
			with zipfile.ZipFile(INPUTS_FOLDER + file, "r") as zip_file_to_read:

				# Copy every file from the functions folder of zip_file_to_read to the one in the zip_file
				for file_to_copy in zip_file_to_read.namelist():
					if "switch/functions/" in file_to_copy and "notes" in file_to_copy and file_to_copy.endswith(".mcfunction"):

						# Keep playsound lines
						file_content = zip_file_to_read.read(file_to_copy).decode("utf-8").split("\n")

						# Get a higher volume
						playsounds = []
						for i, line in enumerate(file_content):
							if line.startswith("playsound"):
								playsound = line.split(" ")
								playsound[7] = str(round(float(playsound[7]) * PLAYSOUND_VOLUME_MULTIPLIER, 5))
								playsounds.append(" ".join(playsound))
						file_content = "\n".join(playsounds)

						# Write file
						zip_file.writestr(file_to_copy.replace("functions/","functions/music/").replace("notes/",""), file_content.encode("utf-8"))

						# Remember length if higher
						length = max(length, int(file_to_copy.split("/")[-1].split(".")[0]))
					
					elif "load.mcfunction" in file_to_copy:
						bpm = int(zip_file_to_read.read(file_to_copy).decode("utf-8").split(" ")[-1])

			# Add this objective
			objectives.append((file.replace(".zip",""), length, bpm))

	# Add a pack.mcmeta file
	zip_file.writestr("pack.mcmeta", """{
	"pack": {
		"pack_format": 18,
		"description": "Musics made with NoteBlock Studio"
	}
}
""")

# Duplicate .git file
shutil.copyfile(FINAL_ZIP_FILE + ".git", FINAL_ZIP_FILE)
os.remove(FINAL_ZIP_FILE + ".git")

# Write load file
with open("load.mcfunction", "w", encoding="utf-8") as load_file:

	# Write start
	load_file.write(f"""
## This file is auto-generated by the script in the same folder, do not edit this file
scoreboard objectives add switch.music.current dummy
scoreboard objectives add switch.music.progress dummy
scoreboard objectives add switch.music.loop_state dummy
scoreboard players set #last_index switch.music.current {len(objectives)+99}
""")
	# Write the objectives
	for objective in objectives:
		load_file.write(f"scoreboard players set #{objective[0]} switch.music.progress {objective[1]}\n")

# Write tick file
os.makedirs("ticks", exist_ok = True)
with open("player_tick.mcfunction", "w", encoding="utf-8") as tick_file:

	# Write start
	tick_file.write("""
## This file is auto-generated by the script in the same folder, do not edit this file
""")

	# Write the objectives
	for i, objective in enumerate(objectives):

		# Write the tick condition
		remaining_bpm = objective[2]
		while remaining_bpm > 0:
			tick_file.write(f"execute if score @s switch.music.current matches {i+100} run function switch:music/ticks/{objective[0]}\n")
			remaining_bpm -= ALL_BPM

		# Write the tick function
		with open(f"ticks/{objective[0]}.mcfunction", "w", encoding="utf-8") as tick_function:
			tick_function.write(f"""
## This file is auto-generated by the script in the same folder, do not edit this file
scoreboard players add @s switch.music.progress 1
data modify storage switch:temp input set value {{tick:0,name:"{objective[0]}"}}
scoreboard players operation #temp switch.data = @s switch.music.progress
scoreboard players remove #temp switch.data 20
execute store result storage switch:temp input.tick int 1 run scoreboard players get #temp switch.data
function switch:music/tick_macro with storage switch:temp input

# Stop if the music is over
execute if score #temp switch.data >= #{objective[0]} switch.music.progress run function switch:music/music_over

""")
	
	# Write end
	tick_file.write(f"execute if score @s switch.music.current matches -1 run function switch:music/next_music\n\n")


# Write the browser file (tellraws)
with open("browser.mcfunction", "w", encoding="utf-8") as browser_file:

	# Write start
	# 🔀 ⏮ ⏯ ⏭ (🔁🔂)bouton
	browser_file.write("""
## This file is auto-generated by the script in the same folder, do not edit this file
# Top
tellraw @s ["\\n",{"nbt":"ParalyaMusic","storage":"switch:main","interpret":true},{"text":" 🔀","color":"light_purple","clickEvent":{"action":"run_command","value":"/trigger switch.trigger.music set 2"},"hoverEvent":{"action":"show_text","value":{"text":"Randomize","color":"gray"}}},{"text":" ⏮","color":"light_purple","clickEvent":{"action":"run_command","value":"/trigger switch.trigger.music set 3"},"hoverEvent":{"action":"show_text","value":{"text":"Previous","color":"gray"}}},{"text":" ⏯","color":"light_purple","clickEvent":{"action":"run_command","value":"/trigger switch.trigger.music set 4"},"hoverEvent":{"action":"show_text","value":{"text":"Play/Pause","color":"gray"}}},{"text":" ⏭","color":"light_purple","clickEvent":{"action":"run_command","value":"/trigger switch.trigger.music set 5"},"hoverEvent":{"action":"show_text","value":{"text":"Next","color":"gray"}}},{"text":" 🔁","color":"light_purple","clickEvent":{"action":"run_command","value":"/trigger switch.trigger.music set 6"},"hoverEvent":{"action":"show_text","value":{"text":"Repeat","color":"gray"}}}]
tellraw @s ""

# For each music, write a line
""")
	
	# Write the musics line
	lines = []
	for i, objective in enumerate(objectives):
		duration = int(objective[1] // 20 // (objective[2] / ALL_BPM))
		if duration > 60:
			duration = f"{duration // 60}m{duration % 60:02}"
		lines.append(f"""execute if score @s switch.music.current matches {i+100} run tellraw @s [{{"text":"➤ {objective[0].replace("_"," ").title()} (Currently playing)","color":"#FFC0CB","clickEvent":{{"action":"run_command","value":"/trigger switch.trigger.music set {i+100}"}},"hoverEvent":{{"action":"show_text","value":{{"text":"Play the music (Duration: {duration}s)","color":"gray"}}}}}}]""")
		lines.append(f"""execute unless score @s switch.music.current matches {i+100} run tellraw @s [{{"text":"➤ {objective[0].replace("_"," ").title()}","color":"light_purple","clickEvent":{{"action":"run_command","value":"/trigger switch.trigger.music set {i+100}"}},"hoverEvent":{{"action":"show_text","value":{{"text":"Play the music (Duration: {duration}s)","color":"gray"}}}}}}]""")
	browser_file.write("\n".join(lines) + "\n\n")
	
