
# ruff: noqa: E501
# Imports
import stouputils as stp
from stewbeet import write_function


@stp.measure_time(message="Generated stats files")
def main() -> None:
	path: str = "switch:stats"

	# /_player_stats_loop_body
	write_function(f"{path}/_player_stats_loop_body", """
# Copy the values from the player arrays to another temp arrays
data modify storage switch:temp copy_played set from storage switch:temp played
data modify storage switch:temp copy_wins set from storage switch:temp wins
data modify storage switch:temp copy_kills set from storage switch:temp kills
data modify storage switch:temp copy_deaths set from storage switch:temp deaths
data modify storage switch:temp copy_money set from storage switch:temp money
data modify storage switch:temp copy_played_win_ratio set from storage switch:temp played_win_ratio
data modify storage switch:temp copy_advancement_count set from storage switch:temp advancement_count

# Find the index of the highest value in the arrays
scoreboard players set #current_index switch.data 0
scoreboard players set #max_value_played switch.data 0
scoreboard players set #max_value_wins switch.data 0
scoreboard players set #max_value_kills switch.data 0
scoreboard players set #max_value_deaths switch.data 0
scoreboard players set #max_value_money switch.data 0
scoreboard players set #max_value_played_win_ratio switch.data 0
scoreboard players set #max_value_advancement_count switch.data 0
scoreboard players set #max_index_played switch.data 0
scoreboard players set #max_index_wins switch.data 0
scoreboard players set #max_index_kills switch.data 0
scoreboard players set #max_index_deaths switch.data 0
scoreboard players set #max_index_money switch.data 0
scoreboard players set #max_index_played_win_ratio switch.data 0
scoreboard players set #max_index_advancement_count switch.data 0
execute if data storage switch:temp copy_played[0] run function switch:stats/get_max_from_player_arrays

# Add the highest value to the new arrays
data modify storage switch:temp indexes set value {played:0,wins:0,kills:0,deaths:0,money:0,played_win_ratio:0,advancement_count:0}
execute store result storage switch:temp indexes.played int 1 run scoreboard players get #max_index_played switch.data
execute store result storage switch:temp indexes.wins int 1 run scoreboard players get #max_index_wins switch.data
execute store result storage switch:temp indexes.kills int 1 run scoreboard players get #max_index_kills switch.data
execute store result storage switch:temp indexes.deaths int 1 run scoreboard players get #max_index_deaths switch.data
execute store result storage switch:temp indexes.money int 1 run scoreboard players get #max_index_money switch.data
execute store result storage switch:temp indexes.played_win_ratio int 1 run scoreboard players get #max_index_played_win_ratio switch.data
execute store result storage switch:temp indexes.advancement_count int 1 run scoreboard players get #max_index_advancement_count switch.data
function switch:stats/macro_add_to_new_player_arrays with storage switch:temp indexes
""")

	# /_sort_player_stats_finalize
	write_function(f"{path}/_sort_player_stats_finalize", """
# Copy to new storage
data modify storage switch:stats all.player.total_played set from storage switch:temp new_played
data modify storage switch:stats all.player.total_wins set from storage switch:temp new_wins
data modify storage switch:stats all.player.total_kills set from storage switch:temp new_kills
data modify storage switch:stats all.player.total_deaths set from storage switch:temp new_deaths
data modify storage switch:stats all.player.total_money set from storage switch:temp new_money
data modify storage switch:stats all.player.played_win_ratio set from storage switch:temp new_played_win_ratio
data modify storage switch:stats all.player.advancement_count set from storage switch:temp new_advancement_count

# Reset temp storage
data remove storage switch:temp played
data remove storage switch:temp wins
data remove storage switch:temp kills
data remove storage switch:temp deaths
data remove storage switch:temp money
data remove storage switch:temp played_win_ratio
data remove storage switch:temp advancement_count
data remove storage switch:temp new_played
data remove storage switch:temp new_wins
data remove storage switch:temp new_kills
data remove storage switch:temp new_deaths
data remove storage switch:temp new_money
data remove storage switch:temp new_played_win_ratio
data remove storage switch:temp new_advancement_count
data remove storage switch:temp copy_played
data remove storage switch:temp copy_wins
data remove storage switch:temp copy_kills
data remove storage switch:temp copy_deaths
data remove storage switch:temp copy_money
data remove storage switch:temp copy_played_win_ratio
data remove storage switch:temp copy_advancement_count
""")

	# /_sort_player_stats_setup
	write_function(f"{path}/_sort_player_stats_setup", """
## Storage Format: all.player = {total_played:[{name:"Stoupy51",value:0}],total_wins:[],total_kills:[],total_deaths:[],total_money:[],played_win_ratio:[],advancement_count:[]}

# Copy stats to temp storage
data modify storage switch:temp played set from storage switch:stats all.player.total_played
data modify storage switch:temp wins set from storage switch:stats all.player.total_wins
data modify storage switch:temp kills set from storage switch:stats all.player.total_kills
data modify storage switch:temp deaths set from storage switch:stats all.player.total_deaths
data modify storage switch:temp money set from storage switch:stats all.player.total_money
data modify storage switch:temp played_win_ratio set from storage switch:stats all.player.played_win_ratio
data modify storage switch:temp advancement_count set from storage switch:stats all.player.advancement_count
data modify storage switch:temp new_played set value []
data modify storage switch:temp new_wins set value []
data modify storage switch:temp new_kills set value []
data modify storage switch:temp new_deaths set value []
data modify storage switch:temp new_money set value []
data modify storage switch:temp new_played_win_ratio set value []
data modify storage switch:temp new_advancement_count set value []
""")

	# /_update_every_single_stat
	write_function(f"{path}/_update_every_single_stat", """
function switch:player/update_stats_storage/every_player
function switch:stats/async/sort_player_stats
function switch:stats/sort_minigames_stats/async/main
""")

	# /async/loop_player_stats
	write_function(f"{path}/async/loop_player_stats", """
# Make the work (3 players by 3 players)
function switch:stats/async/work_loop_player_stats
function switch:stats/async/work_loop_player_stats
function switch:stats/async/work_loop_player_stats

# Loop through the rest of the values
execute if data storage switch:temp played[0] run schedule function switch:stats/async/loop_player_stats 1t
execute unless data storage switch:temp played[0] run schedule function switch:stats/async/register_new_player_stats 1t replace
""")

	# /async/register_new_player_stats
	write_function(f"{path}/async/register_new_player_stats", """
## Storage Format: all.player = {total_played:[{name:"Stoupy51",value:0}],total_wins:[],total_kills:[],total_deaths:[],total_money:[],played_win_ratio:[],advancement_count:[]}

function switch:stats/_sort_player_stats_finalize

kill @e[tag=switch.stat_display]
""")

	# /async/sort_player_stats
	write_function(f"{path}/async/sort_player_stats", """
function switch:stats/_sort_player_stats_setup

# Sort stats asynchronously
execute if data storage switch:temp played[0] run schedule function switch:stats/async/loop_player_stats 1t replace
""")

	# /async/work_loop_player_stats
	write_function(f"{path}/async/work_loop_player_stats", """
# Stop if no players
execute unless data storage switch:temp played[0] run return fail

function switch:stats/_player_stats_loop_body
""")

	# /display/adv_summon
	write_function(f"{path}/display/adv_summon", r"""
## Input macro: path = "jump_brown", label = "Ordre de complétion", mode = 4

# Get the array or value
$data modify storage switch:temp array set from storage switch:advancements $(adv_path)

# Summon the text display
$summon text_display ~ ~ ~ {UUID:uuid("$(uuid)"),billboard:"vertical",default_background:true,alignment:"center",Tags:["$(path)","switch.stat_display"],text:[{"text":"$(label)\n","color":"green"},{"text":"#1 ","color":"gold"},{"nbt":"array[0].name","storage":"switch:temp","color":"yellow","interpret":true},{"text":"\n","color":"aqua"},{"text":"#2 ","color":"gold"},{"nbt":"array[1].name","storage":"switch:temp","color":"yellow","interpret":true},{"text":"\n","color":"aqua"},{"text":"#3 ","color":"gold"},{"nbt":"array[2].name","storage":"switch:temp","color":"yellow","interpret":true},{"text":"\n","color":"aqua"},{"text":"#4 ","color":"gold"},{"nbt":"array[3].name","storage":"switch:temp","color":"yellow","interpret":true},{"text":"\n","color":"aqua"},{"text":"#5 ","color":"gold"},{"nbt":"array[4].name","storage":"switch:temp","color":"yellow","interpret":true},{"text":"\n","color":"aqua"},{"text":"#6 ","color":"gold"},{"nbt":"array[5].name","storage":"switch:temp","color":"yellow","interpret":true},{"text":"\n","color":"aqua"},{"text":"#7 ","color":"gold"},{"nbt":"array[6].name","storage":"switch:temp","color":"yellow","interpret":true},{"text":"\n","color":"aqua"},{"text":"#8 ","color":"gold"},{"nbt":"array[7].name","storage":"switch:temp","color":"yellow","interpret":true},{"text":"\n","color":"aqua"},{"text":"#9 ","color":"gold"},{"nbt":"array[8].name","storage":"switch:temp","color":"yellow","interpret":true},{"text":"\n","color":"aqua"},{"text":"#10 ","color":"gold"},{"nbt":"array[9].name","storage":"switch:temp","color":"yellow","interpret":true},{"text":"\n","color":"aqua"},{"text":"#11 ","color":"gold"},{"nbt":"array[10].name","storage":"switch:temp","color":"yellow","interpret":true},{"text":"\n","color":"aqua"},{"text":"#12 ","color":"gold"},{"nbt":"array[11].name","storage":"switch:temp","color":"yellow","interpret":true},{"text":"\n","color":"aqua"},{"text":"#13 ","color":"gold"},{"nbt":"array[12].name","storage":"switch:temp","color":"yellow","interpret":true},{"text":"\n","color":"aqua"},{"text":"#14 ","color":"gold"},{"nbt":"array[13].name","storage":"switch:temp","color":"yellow","interpret":true},{"text":"\n","color":"aqua"},{"text":"#15 ","color":"gold"},{"nbt":"array[14].name","storage":"switch:temp","color":"yellow","interpret":true}]}

# Advertise that the display is ready
$scoreboard players set #display_$(path) switch.data 1
""")

	# /display/summon
	write_function(f"{path}/display/summon", r"""
## Input macro: path = "all.modes.pitch_creep.played", label = "Parties jouées\n"
## Input scoreboard: #mode switch.data

# Get the array or value
$execute if score #mode switch.data matches 1 run data modify storage switch:temp array set from storage switch:stats $(path)
$execute if score #mode switch.data matches 2 store result score #value switch.data run data get storage switch:stats $(path)
$execute if score #mode switch.data matches 4 run data modify storage switch:temp array set from storage switch:advancements $(path)

# Summon the text display
$execute if score #mode switch.data matches 1 run summon text_display ~ ~ ~ {UUID:uuid("$(uuid)"),billboard:"vertical",default_background:true,alignment:"center",Tags:["$(path)","switch.stat_display"],text:[{"text":"$(label)\n","color":"green"},{"text":"#1 ","color":"gold"},{"nbt":"array[0].name","storage":"switch:temp","color":"yellow","interpret":true},{"text":" (","color":"aqua"},{"nbt":"array[0].value","storage":"switch:temp","color":"aqua","plain":true},{"text":")\n","color":"aqua"},{"text":"#2 ","color":"gold"},{"nbt":"array[1].name","storage":"switch:temp","color":"yellow","interpret":true},{"text":" (","color":"aqua"},{"nbt":"array[1].value","storage":"switch:temp","color":"aqua","plain":true},{"text":")\n","color":"aqua"},{"text":"#3 ","color":"gold"},{"nbt":"array[2].name","storage":"switch:temp","color":"yellow","interpret":true},{"text":" (","color":"aqua"},{"nbt":"array[2].value","storage":"switch:temp","color":"aqua","plain":true},{"text":")\n","color":"aqua"},{"text":"#4 ","color":"gold"},{"nbt":"array[3].name","storage":"switch:temp","color":"yellow","interpret":true},{"text":" (","color":"aqua"},{"nbt":"array[3].value","storage":"switch:temp","color":"aqua","plain":true},{"text":")\n","color":"aqua"},{"text":"#5 ","color":"gold"},{"nbt":"array[4].name","storage":"switch:temp","color":"yellow","interpret":true},{"text":" (","color":"aqua"},{"nbt":"array[4].value","storage":"switch:temp","color":"aqua","plain":true},{"text":")\n","color":"aqua"},{"text":"#6 ","color":"gold"},{"nbt":"array[5].name","storage":"switch:temp","color":"yellow","interpret":true},{"text":" (","color":"aqua"},{"nbt":"array[5].value","storage":"switch:temp","color":"aqua","plain":true},{"text":")\n","color":"aqua"},{"text":"#7 ","color":"gold"},{"nbt":"array[6].name","storage":"switch:temp","color":"yellow","interpret":true},{"text":" (","color":"aqua"},{"nbt":"array[6].value","storage":"switch:temp","color":"aqua","plain":true},{"text":")\n","color":"aqua"},{"text":"#8 ","color":"gold"},{"nbt":"array[7].name","storage":"switch:temp","color":"yellow","interpret":true},{"text":" (","color":"aqua"},{"nbt":"array[7].value","storage":"switch:temp","color":"aqua","plain":true},{"text":")\n","color":"aqua"},{"text":"#9 ","color":"gold"},{"nbt":"array[8].name","storage":"switch:temp","color":"yellow","interpret":true},{"text":" (","color":"aqua"},{"nbt":"array[8].value","storage":"switch:temp","color":"aqua","plain":true},{"text":")\n","color":"aqua"},{"text":"#10 ","color":"gold"},{"nbt":"array[9].name","storage":"switch:temp","color":"yellow","interpret":true},{"text":" (","color":"aqua"},{"nbt":"array[9].value","storage":"switch:temp","color":"aqua","plain":true},{"text":")\n","color":"aqua"},{"text":"#11 ","color":"gold"},{"nbt":"array[10].name","storage":"switch:temp","color":"yellow","interpret":true},{"text":" (","color":"aqua"},{"nbt":"array[10].value","storage":"switch:temp","color":"aqua","plain":true},{"text":")\n","color":"aqua"},{"text":"#12 ","color":"gold"},{"nbt":"array[11].name","storage":"switch:temp","color":"yellow","interpret":true},{"text":" (","color":"aqua"},{"nbt":"array[11].value","storage":"switch:temp","color":"aqua","plain":true},{"text":")\n","color":"aqua"},{"text":"#13 ","color":"gold"},{"nbt":"array[12].name","storage":"switch:temp","color":"yellow","interpret":true},{"text":" (","color":"aqua"},{"nbt":"array[12].value","storage":"switch:temp","color":"aqua","plain":true},{"text":")\n","color":"aqua"},{"text":"#14 ","color":"gold"},{"nbt":"array[13].name","storage":"switch:temp","color":"yellow","interpret":true},{"text":" (","color":"aqua"},{"nbt":"array[13].value","storage":"switch:temp","color":"aqua","plain":true},{"text":")\n","color":"aqua"},{"text":"#15 ","color":"gold"},{"nbt":"array[14].name","storage":"switch:temp","color":"yellow","interpret":true},{"text":" (","color":"aqua"},{"nbt":"array[14].value","storage":"switch:temp","color":"aqua","plain":true},{"text":")","color":"aqua"}],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.69f,0.69f,0.69f]}}
$execute if score #mode switch.data matches 2 run summon text_display ~ ~ ~ {UUID:uuid("$(uuid)"),billboard:"center",default_background:true,alignment:"center",Tags:["$(path)","switch.stat_display"],text:[{"text":"$(label)\n","color":"green"},{"text":"Total of ","color":"gold"},{"score":{"name":"#value","objective":"switch.data"},"color":"yellow"},{"text":" games","color":"gold"}],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.69f,0.69f,0.69f]}}
$execute if score #mode switch.data matches 4 run summon text_display ~ ~ ~ {UUID:uuid("$(uuid)"),billboard:"vertical",default_background:true,alignment:"center",Tags:["$(path)","switch.stat_display"],text:[{"text":"$(label)\n","color":"green"},{"text":"#1 ","color":"gold"},{"nbt":"array[0].name","storage":"switch:temp","color":"yellow","interpret":true},{"text":" (","color":"aqua"},{"nbt":"array[0].value","storage":"switch:temp","color":"aqua","plain":true},{"text":")\n","color":"aqua"},{"text":"#2 ","color":"gold"},{"nbt":"array[1].name","storage":"switch:temp","color":"yellow","interpret":true},{"text":" (","color":"aqua"},{"nbt":"array[1].value","storage":"switch:temp","color":"aqua","plain":true},{"text":")\n","color":"aqua"},{"text":"#3 ","color":"gold"},{"nbt":"array[2].name","storage":"switch:temp","color":"yellow","interpret":true},{"text":" (","color":"aqua"},{"nbt":"array[2].value","storage":"switch:temp","color":"aqua","plain":true},{"text":")\n","color":"aqua"},{"text":"#4 ","color":"gold"},{"nbt":"array[3].name","storage":"switch:temp","color":"yellow","interpret":true},{"text":" (","color":"aqua"},{"nbt":"array[3].value","storage":"switch:temp","color":"aqua","plain":true},{"text":")\n","color":"aqua"},{"text":"#5 ","color":"gold"},{"nbt":"array[4].name","storage":"switch:temp","color":"yellow","interpret":true},{"text":" (","color":"aqua"},{"nbt":"array[4].value","storage":"switch:temp","color":"aqua","plain":true},{"text":")\n","color":"aqua"},{"text":"#6 ","color":"gold"},{"nbt":"array[5].name","storage":"switch:temp","color":"yellow","interpret":true},{"text":" (","color":"aqua"},{"nbt":"array[5].value","storage":"switch:temp","color":"aqua","plain":true},{"text":")\n","color":"aqua"},{"text":"#7 ","color":"gold"},{"nbt":"array[6].name","storage":"switch:temp","color":"yellow","interpret":true},{"text":" (","color":"aqua"},{"nbt":"array[6].value","storage":"switch:temp","color":"aqua","plain":true},{"text":")\n","color":"aqua"},{"text":"#8 ","color":"gold"},{"nbt":"array[7].name","storage":"switch:temp","color":"yellow","interpret":true},{"text":" (","color":"aqua"},{"nbt":"array[7].value","storage":"switch:temp","color":"aqua","plain":true},{"text":")\n","color":"aqua"},{"text":"#9 ","color":"gold"},{"nbt":"array[8].name","storage":"switch:temp","color":"yellow","interpret":true},{"text":" (","color":"aqua"},{"nbt":"array[8].value","storage":"switch:temp","color":"aqua","plain":true},{"text":")\n","color":"aqua"},{"text":"#10 ","color":"gold"},{"nbt":"array[9].name","storage":"switch:temp","color":"yellow","interpret":true},{"text":" (","color":"aqua"},{"nbt":"array[9].value","storage":"switch:temp","color":"aqua","plain":true},{"text":")\n","color":"aqua"},{"text":"#11 ","color":"gold"},{"nbt":"array[10].name","storage":"switch:temp","color":"yellow","interpret":true},{"text":" (","color":"aqua"},{"nbt":"array[10].value","storage":"switch:temp","color":"aqua","plain":true},{"text":")\n","color":"aqua"},{"text":"#12 ","color":"gold"},{"nbt":"array[11].name","storage":"switch:temp","color":"yellow","interpret":true},{"text":" (","color":"aqua"},{"nbt":"array[11].value","storage":"switch:temp","color":"aqua","plain":true},{"text":")\n","color":"aqua"},{"text":"#13 ","color":"gold"},{"nbt":"array[12].name","storage":"switch:temp","color":"yellow","interpret":true},{"text":" (","color":"aqua"},{"nbt":"array[12].value","storage":"switch:temp","color":"aqua","plain":true},{"text":")\n","color":"aqua"},{"text":"#14 ","color":"gold"},{"nbt":"array[13].name","storage":"switch:temp","color":"yellow","interpret":true},{"text":" (","color":"aqua"},{"nbt":"array[13].value","storage":"switch:temp","color":"aqua","plain":true},{"text":")\n","color":"aqua"},{"text":"#15 ","color":"gold"},{"nbt":"array[14].name","storage":"switch:temp","color":"yellow","interpret":true},{"text":" (","color":"aqua"},{"nbt":"array[14].value","storage":"switch:temp","color":"aqua","plain":true},{"text":")","color":"aqua"}],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.69f,0.69f,0.69f]}}

# Advertise that the display is ready
$scoreboard players set #display_$(path) switch.data 1
""")

	# /display/tick_adv
	write_function(f"{path}/display/tick_adv", r"""
## Input macro: path = "jump_brown", label = "Ordre de complétion"
## Ex: execute positioned ~ 70.5 ~ run function switch:stats/display/tick_adv {adv_path:"all[{id:\"jump_bricks\"}].players",path:"jump_bricks",label:"Ordre de Complétion"}
#
# scoreboard value "#display_$(path) switch.data" is set to 1 if the display has been summoned, and set to 0 if it has been killed (to prevent ticking @e again)
# scoreboard value "#player_nearby switch.data" is set to 1 if there is a player nearby, and set to 0 if there is no player nearby
# scoreboard value "#display_nearby switch.data" is set to 1 if there is a display nearby, and set to 0 if there is no display nearby

# Set scoreboard values
scoreboard players set #player_nearby switch.data 0
scoreboard players set #display_nearby switch.data 0
execute if entity @a[distance=..64] run scoreboard players set #player_nearby switch.data 1
$execute if score #display_$(path) switch.data matches 1 if entity $(uuid) run scoreboard players set #display_nearby switch.data 1
$execute if score #display_$(path) switch.data matches 1 if score #display_nearby switch.data matches 0 run scoreboard players set #display_$(path) switch.data 0

# If there is no player nearby and the display is alive, kill it
$execute if score #player_nearby switch.data matches 0 if score #display_nearby switch.data matches 1 run kill $(uuid)
$execute if score #player_nearby switch.data matches 0 if score #display_nearby switch.data matches 1 run scoreboard players set #display_$(path) switch.data 0

# If there is a player nearby and the display is dead, summon it
$execute if score #player_nearby switch.data matches 1 if score #display_nearby switch.data matches 0 run function switch:stats/display/adv_summon {path:"$(path)",label:"$(label)",adv_path:"$(adv_path)",uuid:"$(uuid)"}
""")

	# /display/tick_macro
	write_function(f"{path}/display/tick_macro", r"""
## Input macro: path = "all.modes.pitch_creep.played", label = "Parties jouées\n", mode = 1
## Ex: execute positioned ~ 70.5 ~ run function switch:stats/display/tick_macro {path:"all.modes.minigolf.played",label:"Parties jouées",mode:1}
# mode = 1 : path leading to an array, mode = 2 : path leading to a value
#
# scoreboard value "#display_$(path) switch.data" is set to 1 if the display has been summoned, and set to 0 if it has been killed (to prevent ticking @e again)
# scoreboard value "#player_nearby switch.data" is set to 1 if there is a player nearby, and set to 0 if there is no player nearby
# scoreboard value "#display_nearby switch.data" is set to 1 if there is a display nearby, and set to 0 if there is no display nearby

# Stop if not in overworld
execute unless dimension minecraft:overworld run return fail

# Set scoreboard values
$scoreboard players set #mode switch.data $(mode)
scoreboard players set #player_nearby switch.data 0
execute if score #mode switch.data matches 1 if entity @a[distance=0.1..12] run scoreboard players set #player_nearby switch.data 1
execute if score #mode switch.data matches 2 if entity @a[distance=0.1..24] run scoreboard players set #player_nearby switch.data 1
execute if score #mode switch.data matches 3 if entity @a[distance=0.1..24] run scoreboard players set #player_nearby switch.data 1
execute if score #mode switch.data matches 3 run scoreboard players set #mode switch.data 1
scoreboard players set #display_nearby switch.data 0
$execute if score #display_$(path) switch.data matches 1 if entity $(uuid) run scoreboard players set #display_nearby switch.data 1
$execute if score #display_$(path) switch.data matches 1 if score #display_nearby switch.data matches 0 run scoreboard players set #display_$(path) switch.data 0

# If there is no player nearby and the display is alive, kill it
$execute if score #player_nearby switch.data matches 0 if score #display_nearby switch.data matches 1 run kill $(uuid)
$execute if score #player_nearby switch.data matches 0 if score #display_nearby switch.data matches 1 run scoreboard players set #display_$(path) switch.data 0

# If there is a player nearby and the display is dead, summon it
$execute if score #player_nearby switch.data matches 1 if score #display_nearby switch.data matches 0 run function switch:stats/display/summon {path:"$(path)",label:"$(label)",uuid:"$(uuid)"}
""")

	# /get_max_from_player_arrays
	write_function(f"{path}/get_max_from_player_arrays", """
# Compare for the played array
execute store result score #temp switch.data run data get storage switch:temp copy_played[0].value
execute if score #temp switch.data > #max_value_played switch.data run scoreboard players operation #max_index_played switch.data = #current_index switch.data
execute if score #temp switch.data > #max_value_played switch.data run scoreboard players operation #max_value_played switch.data = #temp switch.data

# Compare for the wins array
execute store result score #temp switch.data run data get storage switch:temp copy_wins[0].value
execute if score #temp switch.data > #max_value_wins switch.data run scoreboard players operation #max_index_wins switch.data = #current_index switch.data
execute if score #temp switch.data > #max_value_wins switch.data run scoreboard players operation #max_value_wins switch.data = #temp switch.data

# Compare for the kills array
execute store result score #temp switch.data run data get storage switch:temp copy_kills[0].value
execute if score #temp switch.data > #max_value_kills switch.data run scoreboard players operation #max_index_kills switch.data = #current_index switch.data
execute if score #temp switch.data > #max_value_kills switch.data run scoreboard players operation #max_value_kills switch.data = #temp switch.data

# Compare for the deaths array
execute store result score #temp switch.data run data get storage switch:temp copy_deaths[0].value
execute if score #temp switch.data > #max_value_deaths switch.data run scoreboard players operation #max_index_deaths switch.data = #current_index switch.data
execute if score #temp switch.data > #max_value_deaths switch.data run scoreboard players operation #max_value_deaths switch.data = #temp switch.data

# Compare for the money array
execute store result score #temp switch.data run data get storage switch:temp copy_money[0].value
execute if score #temp switch.data > #max_value_money switch.data run scoreboard players operation #max_index_money switch.data = #current_index switch.data
execute if score #temp switch.data > #max_value_money switch.data run scoreboard players operation #max_value_money switch.data = #temp switch.data

# Compare for the played_win_ratio array
execute store result score #temp switch.data run data get storage switch:temp copy_played_win_ratio[0].value 1000
execute if score #temp switch.data > #max_value_played_win_ratio switch.data run scoreboard players operation #max_index_played_win_ratio switch.data = #current_index switch.data
execute if score #temp switch.data > #max_value_played_win_ratio switch.data run scoreboard players operation #max_value_played_win_ratio switch.data = #temp switch.data

# Compare for the advancement_count array
execute store result score #temp switch.data run data get storage switch:temp copy_advancement_count[0].value
execute if score #temp switch.data > #max_value_advancement_count switch.data run scoreboard players operation #max_index_advancement_count switch.data = #current_index switch.data
execute if score #temp switch.data > #max_value_advancement_count switch.data run scoreboard players operation #max_value_advancement_count switch.data = #temp switch.data

# Go next (loop)
scoreboard players add #current_index switch.data 1
data remove storage switch:temp copy_played[0]
data remove storage switch:temp copy_wins[0]
data remove storage switch:temp copy_kills[0]
data remove storage switch:temp copy_deaths[0]
data remove storage switch:temp copy_money[0]
data remove storage switch:temp copy_played_win_ratio[0]
data remove storage switch:temp copy_advancement_count[0]
execute if data storage switch:temp copy_played[0] run function switch:stats/get_max_from_player_arrays
""")

	# /increment_minigame_played
	write_function(f"{path}/increment_minigame_played", """
scoreboard players set #total_games switch.data 0
$execute store result score #total_games switch.data run data get storage switch:stats all.modes.$(id).total_games
scoreboard players add #total_games switch.data 1
$execute store result storage switch:stats all.modes.$(id).total_games int 1 run scoreboard players get #total_games switch.data
""")

	# /loop_player_stats
	write_function(f"{path}/loop_player_stats", """
function switch:stats/_player_stats_loop_body

# Loop through the rest of the values
execute if data storage switch:temp played[0] run function switch:stats/loop_player_stats
""")

	# /macro_add_to_new_player_arrays
	write_function(f"{path}/macro_add_to_new_player_arrays", """
$data modify storage switch:temp new_played append from storage switch:temp played[$(played)]
$data modify storage switch:temp new_wins append from storage switch:temp wins[$(wins)]
$data modify storage switch:temp new_kills append from storage switch:temp kills[$(kills)]
$data modify storage switch:temp new_deaths append from storage switch:temp deaths[$(deaths)]
$data modify storage switch:temp new_money append from storage switch:temp money[$(money)]
$data modify storage switch:temp new_played_win_ratio append from storage switch:temp played_win_ratio[$(played_win_ratio)]
$data modify storage switch:temp new_advancement_count append from storage switch:temp advancement_count[$(advancement_count)]
$data remove storage switch:temp played[$(played)]
$data remove storage switch:temp wins[$(wins)]
$data remove storage switch:temp kills[$(kills)]
$data remove storage switch:temp deaths[$(deaths)]
$data remove storage switch:temp money[$(money)]
$data remove storage switch:temp played_win_ratio[$(played_win_ratio)]
$data remove storage switch:temp advancement_count[$(advancement_count)]
""")

	# /sort_minigames_stats/append_remaining
	write_function(f"{path}/sort_minigames_stats/append_remaining", """
# Append remaining unsorted elements from temp lists to new lists
data modify storage switch:temp sms_new_played append from storage switch:temp sms_played[]
data modify storage switch:temp sms_new_wins append from storage switch:temp sms_wins[]
data modify storage switch:temp sms_new_played_win_ratio append from storage switch:temp sms_played_win_ratio[]
""")

	# /sort_minigames_stats/update_and_remove (macro: apply one minigame update from $(id), then pop
	# it off sms_copy; shared head of the sync loop_minigame and the async loop_minigame_macro)
	write_function(f"{path}/sort_minigames_stats/update_and_remove", """
# Update the minigame
$data modify storage switch:main input set value {id:"$(id)"}
function switch:stats/sort_minigames_stats/update_minigame with storage switch:main input

# Go next minigame
data remove storage switch:main sms_copy[0]
""")

	# /sort_minigames_stats/async/loop_minigame_macro
	write_function(f"{path}/sort_minigames_stats/async/loop_minigame_macro", """
function switch:stats/sort_minigames_stats/update_and_remove with storage switch:main sms_copy[0]
execute if data storage switch:main sms_copy[0] run schedule function switch:stats/sort_minigames_stats/async/loop_minigame_no_macro 1t replace
""")

	# /sort_minigames_stats/async/loop_minigame_no_macro
	write_function(f"{path}/sort_minigames_stats/async/loop_minigame_no_macro", """
function switch:stats/sort_minigames_stats/async/loop_minigame_macro with storage switch:main sms_copy[0]
""")

	# /sort_minigames_stats/async/main
	write_function(f"{path}/sort_minigames_stats/async/main", """
# For each minigame
data modify storage switch:main sms_copy set from storage switch:main minigames
execute if data storage switch:main sms_copy[0] run schedule function switch:stats/sort_minigames_stats/async/loop_minigame_no_macro 1t replace
""")

	# /sort_minigames_stats/get_max_from_arrays
	write_function(f"{path}/sort_minigames_stats/get_max_from_arrays", """
# Compare for the played array
execute store result score #temp switch.data run data get storage switch:temp sms_copy_played[0].value
execute if score #temp switch.data > #max_value_played switch.data run scoreboard players operation #max_index_played switch.data = #current_index switch.data
execute if score #temp switch.data > #max_value_played switch.data run scoreboard players operation #max_value_played switch.data = #temp switch.data

# Compare for the wins array
execute store result score #temp switch.data run data get storage switch:temp sms_copy_wins[0].value
execute if score #temp switch.data > #max_value_wins switch.data run scoreboard players operation #max_index_wins switch.data = #current_index switch.data
execute if score #temp switch.data > #max_value_wins switch.data run scoreboard players operation #max_value_wins switch.data = #temp switch.data

# Compare for the played_win_ratio array
execute store result score #temp switch.data run data get storage switch:temp sms_copy_played_win_ratio[0].value
execute if score #temp switch.data > #max_value_played_win_ratio switch.data run scoreboard players operation #max_index_played_win_ratio switch.data = #current_index switch.data
execute if score #temp switch.data > #max_value_played_win_ratio switch.data run scoreboard players operation #max_value_played_win_ratio switch.data = #temp switch.data

# Go next (loop)
scoreboard players add #current_index switch.data 1
data remove storage switch:temp sms_copy_played[0]
data remove storage switch:temp sms_copy_wins[0]
data remove storage switch:temp sms_copy_played_win_ratio[0]
execute if data storage switch:temp sms_copy_played[0] run function switch:stats/sort_minigames_stats/get_max_from_arrays
""")

	# /sort_minigames_stats/loop_minigame
	write_function(f"{path}/sort_minigames_stats/loop_minigame", """
function switch:stats/sort_minigames_stats/update_and_remove with storage switch:main sms_copy[0]
execute if data storage switch:main sms_copy[0] run function switch:stats/sort_minigames_stats/loop_minigame with storage switch:main sms_copy[0]
""")

	# /sort_minigames_stats/loop_played_and_wins
	write_function(f"{path}/sort_minigames_stats/loop_played_and_wins", """
# Copy the played and wins arrays to the temp arrays
data modify storage switch:temp sms_copy_played set from storage switch:temp sms_played
data modify storage switch:temp sms_copy_wins set from storage switch:temp sms_wins
data modify storage switch:temp sms_copy_played_win_ratio set from storage switch:temp sms_played_win_ratio

# Find the index of the highest value in the played and wins arrays
scoreboard players set #current_index switch.data 0
scoreboard players set #max_value_played switch.data 0
scoreboard players set #max_value_wins switch.data 0
scoreboard players set #max_value_played_win_ratio switch.data 0
scoreboard players set #max_index_played switch.data 0
scoreboard players set #max_index_wins switch.data 0
scoreboard players set #max_index_played_win_ratio switch.data 0
execute if data storage switch:temp sms_copy_played[0] run function switch:stats/sort_minigames_stats/get_max_from_arrays

# Add the highest value to the new arrays
data modify storage switch:temp sms_indexes set value {played:0,wins:0,played_win_ratio:0}
execute store result storage switch:temp sms_indexes.played int 1 run scoreboard players get #max_index_played switch.data
execute store result storage switch:temp sms_indexes.wins int 1 run scoreboard players get #max_index_wins switch.data
execute store result storage switch:temp sms_indexes.played_win_ratio int 1 run scoreboard players get #max_index_played_win_ratio switch.data
function switch:stats/sort_minigames_stats/macro_add_to_new_arrays with storage switch:temp sms_indexes

# Increment sorted count
scoreboard players add #sorted_count switch.data 1

# Loop through the rest of the values (up to 15)
execute if score #sorted_count switch.data matches ..15 if data storage switch:temp sms_played[0] run return run function switch:stats/sort_minigames_stats/loop_played_and_wins

# If 15 elements were sorted, append the rest
execute if score #sorted_count switch.data matches 16 run function switch:stats/sort_minigames_stats/append_remaining
""")

	# /sort_minigames_stats/macro_add_to_new_arrays
	write_function(f"{path}/sort_minigames_stats/macro_add_to_new_arrays", """
$data modify storage switch:temp sms_new_played append from storage switch:temp sms_played[$(played)]
$data modify storage switch:temp sms_new_wins append from storage switch:temp sms_wins[$(wins)]
$data modify storage switch:temp sms_new_played_win_ratio append from storage switch:temp sms_played_win_ratio[$(played_win_ratio)]
$data remove storage switch:temp sms_played[$(played)]
$data remove storage switch:temp sms_wins[$(wins)]
$data remove storage switch:temp sms_played_win_ratio[$(played_win_ratio)]
""")

	# /sort_minigames_stats/main
	write_function(f"{path}/sort_minigames_stats/main", """
# For each minigame
data modify storage switch:main sms_copy set from storage switch:main minigames
execute if data storage switch:main sms_copy[0] run function switch:stats/sort_minigames_stats/loop_minigame with storage switch:main sms_copy[0]
""")

	# /sort_minigames_stats/update_minigame
	write_function(f"{path}/sort_minigames_stats/update_minigame", """
## Storage Format: switch:stats all.modes = {pitch_creep:{total_games:0,played:[],wins:[]}, minigolf:{...}, ...}
# Sort in descending order the played array
$data modify storage switch:temp list set from storage switch:stats all.modes.$(id).played
function switch:utils/list/desc/sort
$data modify storage switch:stats all.modes.$(id).played set from storage switch:temp list

# Sort in descending order the wins array
$data modify storage switch:temp list set from storage switch:stats all.modes.$(id).wins
function switch:utils/list/desc/sort
$data modify storage switch:stats all.modes.$(id).wins set from storage switch:temp list

# Sort in descending order the played_win_ratio array
$data modify storage switch:temp list set from storage switch:stats all.modes.$(id).played_win_ratio
function switch:utils/list/desc/sort
$data modify storage switch:stats all.modes.$(id).played_win_ratio set from storage switch:temp list

# Check if a player have a number of played games superior to the total games played
scoreboard players set #max_played switch.data 0
scoreboard players set #total_games switch.data 0
$execute store result score #total_games switch.data run data get storage switch:stats all.modes.$(id).total_games
$execute store result score #max_played switch.data run data get storage switch:stats all.modes.$(id).played[0].value
$execute if score #max_played switch.data > #total_games switch.data store result storage switch:stats all.modes.$(id).total_games int 1 run scoreboard players get #max_played switch.data
""")

	# /sort_player_stats
	write_function(f"{path}/sort_player_stats", """
function switch:stats/_sort_player_stats_setup

# Sort stats and copy to new storage
execute if data storage switch:temp played[0] run function switch:stats/loop_player_stats
function switch:stats/_sort_player_stats_finalize
""")

	# /util_update_player
	write_function(f"{path}/util_update_player", """
function switch:player/update_stats_storage/main
function switch:stats/async/sort_player_stats
""")

