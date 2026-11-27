# Imports
from stewbeet import Mem, write_function


def write_display() -> None:
	""" Write the stats displays summoned in the lobby, including the jump times leaderboard. """
	ns: str = Mem.ctx.project_id
	path: str = f"{ns}:stats"

	# Rows of the top 15 displays: "#N name (display)", display being the text of a time or a value
	top_rows: str = ",".join(
		f'{{"text":"#{i + 1} ","color":"gold"}},{{"nbt":"array[{i}].name","storage":"{ns}:temp","color":"yellow","interpret":true}},{{"text":" (","color":"aqua"}},{{"nbt":"array[{i}].display","storage":"{ns}:temp","color":"aqua","interpret":true}},{{"text":")' + ("\\n" if i < 14 else "") + '","color":"aqua"}'
		for i in range(15)
	)

	# /display/jump_times_summon
	write_function(f"{path}/display/jump_times_summon", rf"""
## Input macro: jump = "brown", path = "jump_brown", label = "Best Times"

# Get the sorted best times list
$data modify storage {ns}:temp array set from storage {ns}:jumps $(jump)

# Summon the text display
$summon text_display ~ ~ ~ {{UUID:uuid("$(uuid)"),billboard:"vertical",default_background:true,alignment:"center",Tags:["$(path)","{ns}.stat_display"],text:[{{"text":"$(label)\n","color":"green"}},{top_rows}]}}

# Advertise that the display is ready
$scoreboard players set #display_$(path) {ns}.data 1
""")

	# /display/format_values
	write_function(f"{path}/display/format_values", "# An nbt text component shows a float with its f suffix, even when plain\n" + "\n".join(f"""
data modify storage {ns}:temp array[{i}].display set string storage {ns}:temp array[{i}].value
data modify storage {ns}:temp suffix set string storage {ns}:temp array[{i}].value -1
execute if data storage {ns}:temp {{suffix:"f"}} run data modify storage {ns}:temp array[{i}].display set string storage {ns}:temp array[{i}].value 0 -1"""
		for i in range(15)
	))

	# /display/summon
	write_function(f"{path}/display/summon", rf"""
## Input macro: path = "all.modes.pitch_creep.played", label = "Parties jouées\n", mode = 1 (array), 2 (value) or 4 (advancements array)

# Get the array or value
$scoreboard players set #mode {ns}.data $(mode)
$execute if score #mode {ns}.data matches 1 run data modify storage {ns}:temp array set from storage {ns}:stats $(path)
$execute if score #mode {ns}.data matches 2 store result score #value {ns}.data run data get storage {ns}:stats $(path)
$execute if score #mode {ns}.data matches 4 run data modify storage {ns}:temp array set from storage {ns}:advancements $(path)
execute unless score #mode {ns}.data matches 2 run function {ns}:stats/display/format_values

# Summon the text display
$execute unless score #mode {ns}.data matches 2 run summon text_display ~ ~ ~ {{UUID:uuid("$(uuid)"),billboard:"vertical",default_background:true,alignment:"center",Tags:["$(path)","{ns}.stat_display"],text:[{{"text":"$(label)\n","color":"green"}},{top_rows}],transformation:{{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.69f,0.69f,0.69f]}}}}
$execute if score #mode {ns}.data matches 2 run summon text_display ~ ~ ~ {{UUID:uuid("$(uuid)"),billboard:"center",default_background:true,alignment:"center",Tags:["$(path)","{ns}.stat_display"],text:[{{"text":"$(label)\n","color":"green"}},{{"text":"Total of ","color":"gold"}},{{"score":{{"name":"#value","objective":"{ns}.data"}},"color":"yellow"}},{{"text":" games","color":"gold"}}],transformation:{{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.69f,0.69f,0.69f]}}}}

# Advertise that the display is ready
$scoreboard players set #display_$(path) {ns}.data 1
""")

