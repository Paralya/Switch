
# Imports
import stouputils as stp
from stewbeet import Mem, write_function


@stp.measure_time(message="Generated music files")
def main() -> None:
	ns: str = Mem.ctx.project_id
	path: str = f"{ns}:music"

	# /actions/next
	write_function(f"{path}/actions/next", f"""
# Go next song
scoreboard players add @s {ns}.music.current 1
execute if score @s {ns}.music.current > #last_index {ns}.music.current run scoreboard players set @s {ns}.music.current 100

# In every case reset progress
function {ns}:music/reset_progress

function {ns}:music/browser
""")

	# /actions/previous
	write_function(f"{path}/actions/previous", f"""
# Go previous song if not playing or if playing and less than 5 seconds
execute unless score @s {ns}.music.progress matches 1.. if score @s {ns}.music.current matches 100.. run scoreboard players remove @s {ns}.music.current 1
execute unless score @s {ns}.music.progress matches 1.. if score @s {ns}.music.current matches 99 run scoreboard players operation @s {ns}.music.current = #last_index {ns}.music.current
execute if score @s {ns}.music.progress matches 1..99 if score @s {ns}.music.current matches 100.. run scoreboard players remove @s {ns}.music.current 1
execute if score @s {ns}.music.progress matches 1..99 if score @s {ns}.music.current matches 99 run scoreboard players operation @s {ns}.music.current = #last_index {ns}.music.current

# In every case reset progress
function {ns}:music/reset_progress

function {ns}:music/browser
""")

	# /actions/random
	write_function(f"{path}/actions/random", f"""
scoreboard players operation #modulo_rand {ns}.data = #last_index {ns}.music.current
scoreboard players remove #modulo_rand {ns}.data 99
function {ns}:utils/get_random/main

scoreboard players add #random {ns}.data 100
execute if score #random {ns}.data = @s {ns}.music.current run function {ns}:music/actions/random
scoreboard players operation @s {ns}.music.current = #random {ns}.data
scoreboard players set @s {ns}.music.progress 1
""")

	# /actions/repeat_all
	write_function(f"{path}/actions/repeat_all", """
tellraw @s {"text":"Work in progress","color":"red"}
""")

	# /actions/repeat_only_same (intentionally empty)
	write_function(f"{path}/actions/repeat_only_same", "\n")

	# /reset_progress (clamp the song progress back to its idle bounds: 1.. -> 1, ..-1 -> -1)
	write_function(f"{path}/reset_progress", f"""
execute if score @s {ns}.music.progress matches 1.. run scoreboard players set @s {ns}.music.progress 1
execute if score @s {ns}.music.progress matches ..-1 run scoreboard players set @s {ns}.music.progress -1
""")

	# /music_over
	write_function(f"{path}/music_over", f"""
execute unless score @s {ns}.music.loop_state matches 1.. run scoreboard players set @s {ns}.music.current -1
execute unless score @s {ns}.music.loop_state matches 1.. run scoreboard players set @s {ns}.music.progress 0
""")

	# /next_music
	write_function(f"{path}/next_music", """
## TODO
""")

	# /tick_macro (macro)
	write_function(f"{path}/tick_macro", f"""
$function {ns}:music/$(name)/$(tick)
""")
