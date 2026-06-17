
# Imports
import stouputils as stp
from stewbeet import write_function


@stp.measure_time(message="Generated music files")
def main() -> None:
	path: str = "switch:music"

	# /actions/next
	write_function(f"{path}/actions/next", """
# Go next song
scoreboard players add @s switch.music.current 1
execute if score @s switch.music.current > #last_index switch.music.current run scoreboard players set @s switch.music.current 100

# In every case reset progress
execute if score @s switch.music.progress matches 1.. run scoreboard players set @s switch.music.progress 1
execute if score @s switch.music.progress matches ..-1 run scoreboard players set @s switch.music.progress -1

function switch:music/browser
""")

	# /actions/previous
	write_function(f"{path}/actions/previous", """
# Go previous song if not playing or if playing and less than 5 seconds
execute unless score @s switch.music.progress matches 1.. if score @s switch.music.current matches 100.. run scoreboard players remove @s switch.music.current 1
execute unless score @s switch.music.progress matches 1.. if score @s switch.music.current matches 99 run scoreboard players operation @s switch.music.current = #last_index switch.music.current
execute if score @s switch.music.progress matches 1..99 if score @s switch.music.current matches 100.. run scoreboard players remove @s switch.music.current 1
execute if score @s switch.music.progress matches 1..99 if score @s switch.music.current matches 99 run scoreboard players operation @s switch.music.current = #last_index switch.music.current

# In every case reset progress
execute if score @s switch.music.progress matches 1.. run scoreboard players set @s switch.music.progress 1
execute if score @s switch.music.progress matches ..-1 run scoreboard players set @s switch.music.progress -1

function switch:music/browser
""")

	# /actions/random
	write_function(f"{path}/actions/random", """
scoreboard players operation #modulo_rand switch.data = #last_index switch.music.current
scoreboard players remove #modulo_rand switch.data 99
function switch:utils/get_random/main

scoreboard players add #random switch.data 100
execute if score #random switch.data = @s switch.music.current run function switch:music/actions/random
scoreboard players operation @s switch.music.current = #random switch.data
scoreboard players set @s switch.music.progress 1
""")

	# /actions/repeat_all
	write_function(f"{path}/actions/repeat_all", """
## File attribut: Ignore translations
tellraw @s {"text":"Work in progress","color":"red"}
""")

	# /actions/repeat_only_same (intentionally empty)
	write_function(f"{path}/actions/repeat_only_same", "\n")

	# /music_over
	write_function(f"{path}/music_over", """
execute unless score @s switch.music.loop_state matches 1.. run scoreboard players set @s switch.music.current -1
execute unless score @s switch.music.loop_state matches 1.. run scoreboard players set @s switch.music.progress 0
""")

	# /next_music
	write_function(f"{path}/next_music", """
## TODO
""")

	# /tick_macro (macro)
	write_function(f"{path}/tick_macro", """
$function switch:music/$(name)/$(tick)
""")
