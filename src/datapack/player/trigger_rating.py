# Imports
from stewbeet import Mem, write_function


def write_trigger_rating() -> None:
	""" Write the rating trigger, where players rate the games they played. """
	ns: str = Mem.ctx.project_id
	path: str = f"{ns}:player"

	# /trigger/rating/action
	write_function(f"{path}/trigger/rating/action", f"""
# Get the digit
scoreboard players operation #digits {ns}.data = @s {ns}.trigger.rating
scoreboard players operation #digits {ns}.data %= #100 {ns}.data
scoreboard players operation #int {ns}.data = @s {ns}.trigger.rating
scoreboard players operation #int {ns}.data /= #100 {ns}.data

# Get game index
data modify storage {ns}:temp input set value {{index:0,index_hundred:0,digits:0}}
execute store result storage {ns}:temp input.index int 1 run scoreboard players get #int {ns}.data
execute store result storage {ns}:temp input.index_hundred int 100 run scoreboard players get #int {ns}.data
execute store result storage {ns}:temp input.digits int 1 run scoreboard players get #digits {ns}.data

# Get username
setblock 0 12 0 air
setblock 0 12 0 yellow_shulker_box
loot insert 0 12 0 loot {ns}:get_username
data modify storage {ns}:temp input.player set from block 0 12 0 Items[0].components."minecraft:profile".name
setblock 0 12 0 air

# If the digit is 0, print function
execute if score #digits {ns}.data matches 0 run function {ns}:player/trigger/rating/print with storage {ns}:temp input

# Else, take account the note if it's between 1 and 5
execute if score #digits {ns}.data matches 1..5 run function {ns}:player/trigger/rating/note with storage {ns}:temp input
""")

	# /trigger/rating/display
	write_function(f"{path}/trigger/rating/display", f"""
## For each of the game, print it in order
function {ns}:player/translations/trigger_rating_display

# Done advancements
data modify storage {ns}:temp copy set from storage {ns}:ratings all
execute if data storage {ns}:temp copy[0] run function {ns}:player/trigger/rating/display_loop with storage {ns}:temp copy[0]

scoreboard players set @s {ns}.trigger.rating 0
""")

	# /trigger/rating/display_loop
	write_function(f"{path}/trigger/rating/display_loop", f"""
# Tellraw
data modify storage {ns}:temp temp set from storage {ns}:temp copy[0]
$data modify storage {ns}:temp name_fr set from storage {ns}:main minigames[{{id:"$(id)"}}].name_fr
$data modify storage {ns}:temp name_en set from storage {ns}:main minigames[{{id:"$(id)"}}].name_en
execute store result score #digits {ns}.data run data get storage {ns}:temp temp.digits
execute store result score #nb_ratings {ns}.data if data storage {ns}:temp temp.players[]
function {ns}:player/translations/trigger_rating_display_loop with storage {ns}:temp temp

# Continue loop
data remove storage {ns}:temp copy[0]
execute if data storage {ns}:temp copy[0] run function {ns}:player/trigger/rating/display_loop with storage {ns}:temp copy[0]
""")

	# /trigger/rating/get_max_loop
	write_function(f"{path}/trigger/rating/get_max_loop", f"""
# Get max
scoreboard players set #int {ns}.data 0
scoreboard players set #digits {ns}.data 0
execute store result score #int {ns}.data run data get storage {ns}:main copy[0].int
execute store result score #digits {ns}.data run data get storage {ns}:main copy[0].digits
execute if score #int {ns}.data > #max_int {ns}.data run data modify storage {ns}:main max set from storage {ns}:main copy[0]
execute if score #int {ns}.data > #max_int {ns}.data run scoreboard players operation #max_digits {ns}.data = #digits {ns}.data
execute if score #int {ns}.data > #max_int {ns}.data run scoreboard players operation #max_int {ns}.data = #int {ns}.data
execute if score #int {ns}.data >= #max_int {ns}.data if score #digits {ns}.data > #max_digits {ns}.data run data modify storage {ns}:main max set from storage {ns}:main copy[0]
execute if score #int {ns}.data >= #max_int {ns}.data if score #digits {ns}.data > #max_digits {ns}.data run scoreboard players operation #max_int {ns}.data = #int {ns}.data
execute if score #int {ns}.data >= #max_int {ns}.data if score #digits {ns}.data > #max_digits {ns}.data run scoreboard players operation #max_digits {ns}.data = #digits {ns}.data

# Continue loop
data remove storage {ns}:main copy[0]
execute if data storage {ns}:main copy[0] run function {ns}:player/trigger/rating/get_max_loop
""")

	# /trigger/rating/main
	write_function(f"{path}/trigger/rating/main", f"""
# Display & Actions
execute if score @s {ns}.trigger.rating matches 1 run function {ns}:player/trigger/rating/display
execute if score @s {ns}.trigger.rating matches 100.. run function {ns}:player/trigger/rating/action
playsound ui.button.click ambient @s

# Reset
scoreboard players set @s {ns}.trigger.rating 0
""")

	# /trigger/rating/note
	write_function(f"{path}/trigger/rating/note", f"""
## Advancement
scoreboard objectives add {ns}.rates_given dummy
scoreboard players add @s {ns}.rates_given 1
execute unless score #test_mode {ns}.data matches 1 if score @s {ns}.rates_given matches 20.. run advancement grant @s only {ns}:visible/56


## {{index:0,index_hundred:0,digits:0,player:""}}
# Add player to list of players
scoreboard players set #previous {ns}.data 0
$execute store result score #previous {ns}.data run data get storage {ns}:ratings all[{{index:$(index)}}].players[{{name:"$(player)"}}].value
$execute if score #previous {ns}.data matches 0 run data modify storage {ns}:ratings all[{{index:$(index)}}].players append value {{name:"$(player)",value:$(digits)}}
$data modify storage {ns}:ratings all[{{index:$(index)}}].players[{{name:"$(player)"}}].value set value $(digits)

## Update game rating
# Calculate new points
$execute store result score #points {ns}.data run data get storage {ns}:ratings all[{{index:$(index)}}].points
scoreboard players operation #points {ns}.data -= #previous {ns}.data
$scoreboard players add #points {ns}.data $(digits)
$execute store result storage {ns}:ratings all[{{index:$(index)}}].points int 1 run scoreboard players get #points {ns}.data

# Calculate int and digits rating
$execute store result score #count {ns}.data run data get storage {ns}:ratings all[{{index:$(index)}}].players
scoreboard players operation #points {ns}.data *= #1000 {ns}.data
scoreboard players operation #digits {ns}.data = #points {ns}.data
scoreboard players operation #points {ns}.data /= #count {ns}.data
scoreboard players operation #points {ns}.data /= #1000 {ns}.data
scoreboard players operation #digits {ns}.data %= #count {ns}.data
$execute store result storage {ns}:ratings all[{{index:$(index)}}].int int 1 run scoreboard players get #points {ns}.data
$execute store result storage {ns}:ratings all[{{index:$(index)}}].digits int 1 run scoreboard players get #digits {ns}.data

# Verbose
$scoreboard players set #temp {ns}.data $(digits)
function {ns}:player/translations/trigger_rating_note with storage {ns}:temp input

# Sort all the ratings
function {ns}:player/trigger/rating/sort
""")

	# /trigger/rating/print
	write_function(f"{path}/trigger/rating/print", f"""
# Macro input {{index:0,index_hundred:0,digits:0}}

data remove storage {ns}:temp temp
$data modify storage {ns}:temp temp set from storage {ns}:ratings all[{{index:$(index)}}].players[{{name:"$(player)"}}].value
function {ns}:player/translations/trigger_rating_print with storage {ns}:temp input
""")

	# /trigger/rating/print_current_game
	write_function(f"{path}/trigger/rating/print_current_game", f"""
scoreboard players operation @s {ns}.trigger.rating = #current_game_index {ns}.data
scoreboard players operation @s {ns}.trigger.rating *= #100 {ns}.data
function {ns}:player/trigger/main
""")

	# /trigger/rating/remove_max
	write_function(f"{path}/trigger/rating/remove_max", f"""
$data remove storage {ns}:ratings all[{{index:$(index)}}]
""")

	# /trigger/rating/sort
	write_function(f"{path}/trigger/rating/sort", f"""
data modify storage {ns}:temp sorted set value []
function {ns}:player/trigger/rating/sort_loop
data modify storage {ns}:ratings all set from storage {ns}:temp sorted
""")

	# /trigger/rating/sort_loop
	write_function(f"{path}/trigger/rating/sort_loop", f"""
# Search for the highest value
data modify storage {ns}:main copy set from storage {ns}:ratings all
data modify storage {ns}:main max set from storage {ns}:main copy[0]
scoreboard players set #max_int {ns}.data 0
scoreboard players set #max_digits {ns}.data 0
execute store result score #max_int {ns}.data run data get storage {ns}:main max.int
execute store result score #max_digits {ns}.data run data get storage {ns}:main max.digits
data remove storage {ns}:main copy[0]
execute if data storage {ns}:main copy[0] run function {ns}:player/trigger/rating/get_max_loop

# Remove the highest value from the stats list and add it to the sorted list
data modify storage {ns}:temp sorted append from storage {ns}:main max
function {ns}:player/trigger/rating/remove_max with storage {ns}:main max

# Continue loop
execute if data storage {ns}:ratings all[0] run function {ns}:player/trigger/rating/sort_loop
""")

