# Imports
from stewbeet import Mem, write_function


def write_display() -> None:
	""" Write the stats displays summoned in the lobby, including the jump times leaderboard. """
	ns: str = Mem.ctx.project_id
	path: str = f"{ns}:stats"

	# /display/jump_times_summon
	# Rows of the jump best times displays: "#N name (time)"
	jump_times_rows: str = ",".join(
		f'{{"text":"#{i + 1} ","color":"gold"}},{{"nbt":"array[{i}].name","storage":"{ns}:temp","color":"yellow","interpret":true}},{{"text":" (","color":"aqua"}},{{"nbt":"array[{i}].display","storage":"{ns}:temp","color":"aqua","interpret":true}},{{"text":")' + ("\\n" if i < 14 else "") + '","color":"aqua"}'
		for i in range(15)
	)
	write_function(f"{path}/display/jump_times_summon", rf"""
## Input macro: jump = "brown", path = "jump_brown", label = "Best Times"

# Get the sorted best times list
$data modify storage {ns}:temp array set from storage {ns}:jumps $(jump)

# Summon the text display
$summon text_display ~ ~ ~ {{UUID:uuid("$(uuid)"),billboard:"vertical",default_background:true,alignment:"center",Tags:["$(path)","{ns}.stat_display"],text:[{{"text":"$(label)\n","color":"green"}},{jump_times_rows}]}}

# Advertise that the display is ready
$scoreboard players set #display_$(path) {ns}.data 1
""")

	# /display/summon
	write_function(f"{path}/display/summon", rf"""
## Input macro: path = "all.modes.pitch_creep.played", label = "Parties jouées\n"
## Input scoreboard: #mode {ns}.data

# Get the array or value
$execute if score #mode {ns}.data matches 1 run data modify storage {ns}:temp array set from storage {ns}:stats $(path)
$execute if score #mode {ns}.data matches 2 store result score #value {ns}.data run data get storage {ns}:stats $(path)
$execute if score #mode {ns}.data matches 4 run data modify storage {ns}:temp array set from storage {ns}:advancements $(path)

# Summon the text display
$execute if score #mode {ns}.data matches 1 run summon text_display ~ ~ ~ {{UUID:uuid("$(uuid)"),billboard:"vertical",default_background:true,alignment:"center",Tags:["$(path)","{ns}.stat_display"],text:[{{"text":"$(label)\n","color":"green"}},{{"text":"#1 ","color":"gold"}},{{"nbt":"array[0].name","storage":"{ns}:temp","color":"yellow","interpret":true}},{{"text":" (","color":"aqua"}},{{"nbt":"array[0].value","storage":"{ns}:temp","color":"aqua","plain":true}},{{"text":")\n","color":"aqua"}},{{"text":"#2 ","color":"gold"}},{{"nbt":"array[1].name","storage":"{ns}:temp","color":"yellow","interpret":true}},{{"text":" (","color":"aqua"}},{{"nbt":"array[1].value","storage":"{ns}:temp","color":"aqua","plain":true}},{{"text":")\n","color":"aqua"}},{{"text":"#3 ","color":"gold"}},{{"nbt":"array[2].name","storage":"{ns}:temp","color":"yellow","interpret":true}},{{"text":" (","color":"aqua"}},{{"nbt":"array[2].value","storage":"{ns}:temp","color":"aqua","plain":true}},{{"text":")\n","color":"aqua"}},{{"text":"#4 ","color":"gold"}},{{"nbt":"array[3].name","storage":"{ns}:temp","color":"yellow","interpret":true}},{{"text":" (","color":"aqua"}},{{"nbt":"array[3].value","storage":"{ns}:temp","color":"aqua","plain":true}},{{"text":")\n","color":"aqua"}},{{"text":"#5 ","color":"gold"}},{{"nbt":"array[4].name","storage":"{ns}:temp","color":"yellow","interpret":true}},{{"text":" (","color":"aqua"}},{{"nbt":"array[4].value","storage":"{ns}:temp","color":"aqua","plain":true}},{{"text":")\n","color":"aqua"}},{{"text":"#6 ","color":"gold"}},{{"nbt":"array[5].name","storage":"{ns}:temp","color":"yellow","interpret":true}},{{"text":" (","color":"aqua"}},{{"nbt":"array[5].value","storage":"{ns}:temp","color":"aqua","plain":true}},{{"text":")\n","color":"aqua"}},{{"text":"#7 ","color":"gold"}},{{"nbt":"array[6].name","storage":"{ns}:temp","color":"yellow","interpret":true}},{{"text":" (","color":"aqua"}},{{"nbt":"array[6].value","storage":"{ns}:temp","color":"aqua","plain":true}},{{"text":")\n","color":"aqua"}},{{"text":"#8 ","color":"gold"}},{{"nbt":"array[7].name","storage":"{ns}:temp","color":"yellow","interpret":true}},{{"text":" (","color":"aqua"}},{{"nbt":"array[7].value","storage":"{ns}:temp","color":"aqua","plain":true}},{{"text":")\n","color":"aqua"}},{{"text":"#9 ","color":"gold"}},{{"nbt":"array[8].name","storage":"{ns}:temp","color":"yellow","interpret":true}},{{"text":" (","color":"aqua"}},{{"nbt":"array[8].value","storage":"{ns}:temp","color":"aqua","plain":true}},{{"text":")\n","color":"aqua"}},{{"text":"#10 ","color":"gold"}},{{"nbt":"array[9].name","storage":"{ns}:temp","color":"yellow","interpret":true}},{{"text":" (","color":"aqua"}},{{"nbt":"array[9].value","storage":"{ns}:temp","color":"aqua","plain":true}},{{"text":")\n","color":"aqua"}},{{"text":"#11 ","color":"gold"}},{{"nbt":"array[10].name","storage":"{ns}:temp","color":"yellow","interpret":true}},{{"text":" (","color":"aqua"}},{{"nbt":"array[10].value","storage":"{ns}:temp","color":"aqua","plain":true}},{{"text":")\n","color":"aqua"}},{{"text":"#12 ","color":"gold"}},{{"nbt":"array[11].name","storage":"{ns}:temp","color":"yellow","interpret":true}},{{"text":" (","color":"aqua"}},{{"nbt":"array[11].value","storage":"{ns}:temp","color":"aqua","plain":true}},{{"text":")\n","color":"aqua"}},{{"text":"#13 ","color":"gold"}},{{"nbt":"array[12].name","storage":"{ns}:temp","color":"yellow","interpret":true}},{{"text":" (","color":"aqua"}},{{"nbt":"array[12].value","storage":"{ns}:temp","color":"aqua","plain":true}},{{"text":")\n","color":"aqua"}},{{"text":"#14 ","color":"gold"}},{{"nbt":"array[13].name","storage":"{ns}:temp","color":"yellow","interpret":true}},{{"text":" (","color":"aqua"}},{{"nbt":"array[13].value","storage":"{ns}:temp","color":"aqua","plain":true}},{{"text":")\n","color":"aqua"}},{{"text":"#15 ","color":"gold"}},{{"nbt":"array[14].name","storage":"{ns}:temp","color":"yellow","interpret":true}},{{"text":" (","color":"aqua"}},{{"nbt":"array[14].value","storage":"{ns}:temp","color":"aqua","plain":true}},{{"text":")","color":"aqua"}}],transformation:{{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.69f,0.69f,0.69f]}}}}
$execute if score #mode {ns}.data matches 2 run summon text_display ~ ~ ~ {{UUID:uuid("$(uuid)"),billboard:"center",default_background:true,alignment:"center",Tags:["$(path)","{ns}.stat_display"],text:[{{"text":"$(label)\n","color":"green"}},{{"text":"Total of ","color":"gold"}},{{"score":{{"name":"#value","objective":"{ns}.data"}},"color":"yellow"}},{{"text":" games","color":"gold"}}],transformation:{{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.69f,0.69f,0.69f]}}}}
$execute if score #mode {ns}.data matches 4 run summon text_display ~ ~ ~ {{UUID:uuid("$(uuid)"),billboard:"vertical",default_background:true,alignment:"center",Tags:["$(path)","{ns}.stat_display"],text:[{{"text":"$(label)\n","color":"green"}},{{"text":"#1 ","color":"gold"}},{{"nbt":"array[0].name","storage":"{ns}:temp","color":"yellow","interpret":true}},{{"text":" (","color":"aqua"}},{{"nbt":"array[0].value","storage":"{ns}:temp","color":"aqua","plain":true}},{{"text":")\n","color":"aqua"}},{{"text":"#2 ","color":"gold"}},{{"nbt":"array[1].name","storage":"{ns}:temp","color":"yellow","interpret":true}},{{"text":" (","color":"aqua"}},{{"nbt":"array[1].value","storage":"{ns}:temp","color":"aqua","plain":true}},{{"text":")\n","color":"aqua"}},{{"text":"#3 ","color":"gold"}},{{"nbt":"array[2].name","storage":"{ns}:temp","color":"yellow","interpret":true}},{{"text":" (","color":"aqua"}},{{"nbt":"array[2].value","storage":"{ns}:temp","color":"aqua","plain":true}},{{"text":")\n","color":"aqua"}},{{"text":"#4 ","color":"gold"}},{{"nbt":"array[3].name","storage":"{ns}:temp","color":"yellow","interpret":true}},{{"text":" (","color":"aqua"}},{{"nbt":"array[3].value","storage":"{ns}:temp","color":"aqua","plain":true}},{{"text":")\n","color":"aqua"}},{{"text":"#5 ","color":"gold"}},{{"nbt":"array[4].name","storage":"{ns}:temp","color":"yellow","interpret":true}},{{"text":" (","color":"aqua"}},{{"nbt":"array[4].value","storage":"{ns}:temp","color":"aqua","plain":true}},{{"text":")\n","color":"aqua"}},{{"text":"#6 ","color":"gold"}},{{"nbt":"array[5].name","storage":"{ns}:temp","color":"yellow","interpret":true}},{{"text":" (","color":"aqua"}},{{"nbt":"array[5].value","storage":"{ns}:temp","color":"aqua","plain":true}},{{"text":")\n","color":"aqua"}},{{"text":"#7 ","color":"gold"}},{{"nbt":"array[6].name","storage":"{ns}:temp","color":"yellow","interpret":true}},{{"text":" (","color":"aqua"}},{{"nbt":"array[6].value","storage":"{ns}:temp","color":"aqua","plain":true}},{{"text":")\n","color":"aqua"}},{{"text":"#8 ","color":"gold"}},{{"nbt":"array[7].name","storage":"{ns}:temp","color":"yellow","interpret":true}},{{"text":" (","color":"aqua"}},{{"nbt":"array[7].value","storage":"{ns}:temp","color":"aqua","plain":true}},{{"text":")\n","color":"aqua"}},{{"text":"#9 ","color":"gold"}},{{"nbt":"array[8].name","storage":"{ns}:temp","color":"yellow","interpret":true}},{{"text":" (","color":"aqua"}},{{"nbt":"array[8].value","storage":"{ns}:temp","color":"aqua","plain":true}},{{"text":")\n","color":"aqua"}},{{"text":"#10 ","color":"gold"}},{{"nbt":"array[9].name","storage":"{ns}:temp","color":"yellow","interpret":true}},{{"text":" (","color":"aqua"}},{{"nbt":"array[9].value","storage":"{ns}:temp","color":"aqua","plain":true}},{{"text":")\n","color":"aqua"}},{{"text":"#11 ","color":"gold"}},{{"nbt":"array[10].name","storage":"{ns}:temp","color":"yellow","interpret":true}},{{"text":" (","color":"aqua"}},{{"nbt":"array[10].value","storage":"{ns}:temp","color":"aqua","plain":true}},{{"text":")\n","color":"aqua"}},{{"text":"#12 ","color":"gold"}},{{"nbt":"array[11].name","storage":"{ns}:temp","color":"yellow","interpret":true}},{{"text":" (","color":"aqua"}},{{"nbt":"array[11].value","storage":"{ns}:temp","color":"aqua","plain":true}},{{"text":")\n","color":"aqua"}},{{"text":"#13 ","color":"gold"}},{{"nbt":"array[12].name","storage":"{ns}:temp","color":"yellow","interpret":true}},{{"text":" (","color":"aqua"}},{{"nbt":"array[12].value","storage":"{ns}:temp","color":"aqua","plain":true}},{{"text":")\n","color":"aqua"}},{{"text":"#14 ","color":"gold"}},{{"nbt":"array[13].name","storage":"{ns}:temp","color":"yellow","interpret":true}},{{"text":" (","color":"aqua"}},{{"nbt":"array[13].value","storage":"{ns}:temp","color":"aqua","plain":true}},{{"text":")\n","color":"aqua"}},{{"text":"#15 ","color":"gold"}},{{"nbt":"array[14].name","storage":"{ns}:temp","color":"yellow","interpret":true}},{{"text":" (","color":"aqua"}},{{"nbt":"array[14].value","storage":"{ns}:temp","color":"aqua","plain":true}},{{"text":")","color":"aqua"}}],transformation:{{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.69f,0.69f,0.69f]}}}}

# Advertise that the display is ready
$scoreboard players set #display_$(path) {ns}.data 1
""")

	# /display/tick_jump_times
	write_function(f"{path}/display/tick_jump_times", rf"""
## Input macro: jump = "brown", path = "jump_brown", label = "Best Times"
## Ex: execute positioned ~ 70.5 ~ run function {ns}:stats/display/tick_jump_times {{jump:"bricks",path:"jump_bricks",label:"Best Times",uuid:"..."}}
#
# scoreboard value "#display_$(path) {ns}.data" is set to 1 if the display has been summoned, and set to 0 if it has been killed (to prevent ticking @e again)
# scoreboard value "#player_nearby {ns}.data" is set to 1 if there is a player nearby, and set to 0 if there is no player nearby
# scoreboard value "#display_nearby {ns}.data" is set to 1 if there is a display nearby, and set to 0 if there is no display nearby

# Set scoreboard values
scoreboard players set #player_nearby {ns}.data 0
scoreboard players set #display_nearby {ns}.data 0
execute if entity @a[distance=..64] run scoreboard players set #player_nearby {ns}.data 1
$execute if score #display_$(path) {ns}.data matches 1 if entity $(uuid) run scoreboard players set #display_nearby {ns}.data 1
$execute if score #display_$(path) {ns}.data matches 1 if score #display_nearby {ns}.data matches 0 run scoreboard players set #display_$(path) {ns}.data 0

# If there is no player nearby and the display is alive, kill it
$execute if score #player_nearby {ns}.data matches 0 if score #display_nearby {ns}.data matches 1 run kill $(uuid)
$execute if score #player_nearby {ns}.data matches 0 if score #display_nearby {ns}.data matches 1 run scoreboard players set #display_$(path) {ns}.data 0

# If there is a player nearby and the display is dead, summon it
$execute if score #player_nearby {ns}.data matches 1 if score #display_nearby {ns}.data matches 0 run function {ns}:stats/display/jump_times_summon {{jump:"$(jump)",path:"$(path)",label:"$(label)",uuid:"$(uuid)"}}
""")

	# /display/tick_macro
	write_function(f"{path}/display/tick_macro", rf"""
## Input macro: path = "all.modes.pitch_creep.played", label = "Parties jouées\n", mode = 1
## Ex: execute positioned ~ 70.5 ~ run function {ns}:stats/display/tick_macro {{path:"all.modes.minigolf.played",label:"Parties jouées",mode:1}}
# mode = 1 : path leading to an array, mode = 2 : path leading to a value
#
# scoreboard value "#display_$(path) {ns}.data" is set to 1 if the display has been summoned, and set to 0 if it has been killed (to prevent ticking @e again)
# scoreboard value "#player_nearby {ns}.data" is set to 1 if there is a player nearby, and set to 0 if there is no player nearby
# scoreboard value "#display_nearby {ns}.data" is set to 1 if there is a display nearby, and set to 0 if there is no display nearby

# Stop if not in overworld
execute unless dimension minecraft:overworld run return fail

# Set scoreboard values
$scoreboard players set #mode {ns}.data $(mode)
scoreboard players set #player_nearby {ns}.data 0
execute if score #mode {ns}.data matches 1 if entity @a[distance=0.1..12] run scoreboard players set #player_nearby {ns}.data 1
execute if score #mode {ns}.data matches 2 if entity @a[distance=0.1..24] run scoreboard players set #player_nearby {ns}.data 1
execute if score #mode {ns}.data matches 3 if entity @a[distance=0.1..24] run scoreboard players set #player_nearby {ns}.data 1
execute if score #mode {ns}.data matches 3 run scoreboard players set #mode {ns}.data 1
scoreboard players set #display_nearby {ns}.data 0
$execute if score #display_$(path) {ns}.data matches 1 if entity $(uuid) run scoreboard players set #display_nearby {ns}.data 1
$execute if score #display_$(path) {ns}.data matches 1 if score #display_nearby {ns}.data matches 0 run scoreboard players set #display_$(path) {ns}.data 0

# If there is no player nearby and the display is alive, kill it
$execute if score #player_nearby {ns}.data matches 0 if score #display_nearby {ns}.data matches 1 run kill $(uuid)
$execute if score #player_nearby {ns}.data matches 0 if score #display_nearby {ns}.data matches 1 run scoreboard players set #display_$(path) {ns}.data 0

# If there is a player nearby and the display is dead, summon it
$execute if score #player_nearby {ns}.data matches 1 if score #display_nearby {ns}.data matches 0 run function {ns}:stats/display/summon {{path:"$(path)",label:"$(label)",uuid:"$(uuid)"}}
""")

