
# Imports
from stewbeet import Mem, write_function

from ..common import write_modes_calls, write_time_xp_bar
from .translations import write_translations


def write_mode():
	ns: str = Mem.ctx.project_id
	mode: str = "minigolf"
	path: str = f"{ns}:modes/{mode}"
	translations: str = f"{path}/translations"

	# Write /calls/ and /translations/ functions
	write_modes_calls(mode, targets={"joined": f"{ns}:utils/classic_death"})
	write_translations()


	# /check_lost_ball
	write_function(f"{path}/check_lost_ball", f"""
# Check if the ball is really lost
execute as @e[tag=golf_ball.display] at @s run function golf_ball:ball/ride_vehicle_macro with entity @s item.components."minecraft:profile"
scoreboard players set #success {ns}.data 0
execute on vehicle run scoreboard players set #success {ns}.data 1
execute if score #success {ns}.data matches 1 run return 1

# Finished (the in_hole tag is tracked while riding, as the ball kill may dismount the player beside the hole)
scoreboard players set #finished {ns}.data 0
execute if entity @s[tag={ns}.in_hole] run scoreboard players set #finished {ns}.data 1
execute positioned over world_surface if block ~ ~-1 ~ barrier if entity @s[distance=..5] run scoreboard players set #finished {ns}.data 1
execute if block ~ ~-1 ~ barrier run scoreboard players set #finished {ns}.data 1
execute if block ~ ~-2 ~ barrier run scoreboard players set #finished {ns}.data 1
execute if block ~ ~-3 ~ barrier run scoreboard players set #finished {ns}.data 1
execute if block ~ ~-4 ~ barrier run scoreboard players set #finished {ns}.data 1
tag @s remove {ns}.in_hole
execute if score #finished {ns}.data matches 1 run scoreboard players operation @s {ns}.alive = #minigolf_seconds {ns}.data
execute unless score #test_mode {ns}.data matches 1 if score #finished {ns}.data matches 1 if score @s golf_ball.shots matches ..5 run advancement grant @s only {ns}:visible/48

# Gave up
function {translations}/check_lost_ball
execute if score #finished {ns}.data matches 0 run scoreboard players reset @s golf_ball.shots
execute if score #finished {ns}.data matches 0 run scoreboard players reset @s {ns}.alive

# Spec
gamemode spectator @s
""")

	# /check_respawn
	write_function(f"{path}/check_respawn", f"""
execute if block ~ ~.5 ~ structure_void run scoreboard players add @s {ns}.temp.respawn 10
execute if block ~ ~1.5 ~ structure_void run scoreboard players add @s {ns}.temp.respawn 10
execute if block ~ ~.5 ~ lava run scoreboard players add @s {ns}.temp.respawn 10
execute if block ~ ~-.5 ~ lava run scoreboard players add @s {ns}.temp.respawn 10
execute if block ~ ~.5 ~ water run scoreboard players add @s {ns}.temp.respawn 2
execute if block ~ ~-.5 ~ water run scoreboard players add @s {ns}.temp.respawn 2

execute if score @s {ns}.temp.respawn matches 20.. run function golf_ball:respawn
execute if score @s {ns}.temp.respawn matches 20.. run scoreboard players reset @s {ns}.temp.respawn
""")

	# /process_end
	write_function(f"{path}/process_end", f"""
scoreboard players add #process_end {ns}.data 1

# Get the winner (the player with the less shots)
execute if score #process_end {ns}.data matches 1 run tag @a remove {ns}.winner
execute if score #process_end {ns}.data matches 1 run scoreboard players set #min {ns}.data 1000000
execute if score #process_end {ns}.data matches 1 run scoreboard players operation #min {ns}.data < @a[tag=!detached,scores={{golf_ball.shots=1..}}] golf_ball.shots
execute if score #process_end {ns}.data matches 1 as @a[tag=!detached,scores={{golf_ball.shots=1..}}] if score @s golf_ball.shots = #min {ns}.data run tag @s add {ns}.winner

# Give the winner money and tellraw
execute if score #process_end {ns}.data matches 1 as @a[tag=!detached,tag={ns}.winner] at @s run function {ns}:engine/add_win
execute if score #process_end {ns}.data matches 1 as @a[tag=!detached,tag={ns}.winner] run function {path}/record_save with storage {ns}:records minigolf
function {translations}/process_end
execute if score #process_end {ns}.data matches 1 run tag @a remove {ns}.winner

# Other stuff
execute if score #process_end {ns}.data matches 1 as @a[tag=!detached,predicate=golf_ball:has_vehicle] at @s run function golf_ball:ball/exit_player
execute if score #process_end {ns}.data matches 1 run clear @a[tag=!detached]
execute if score #process_end {ns}.data matches 1 run gamemode spectator @a[tag=!detached]
execute if score #process_end {ns}.data matches 1 as @a[tag=!detached] run function {ns}:player/trigger/rating/print_current_game
execute if score #process_end {ns}.data matches 200 run function {ns}:engine/restart
""")

	# /record_save
	write_function(f"{path}/record_save", f"""
# Get username
loot replace entity @s hotbar.0 loot {ns}:get_username

# Get last record on the map (shots and time)
scoreboard players set #record {ns}.data 100000
scoreboard players set #time {ns}.data 100000
$execute if data storage {ns}:records minigolf.$(current_map) store result score #record {ns}.data run data get storage {ns}:records minigolf.$(current_map).shots
$execute if data storage {ns}:records minigolf.$(current_map) store result score #time {ns}.data run data get storage {ns}:records minigolf.$(current_map).time

# Check if it's better
execute if score #min {ns}.data < #record {ns}.data run scoreboard players set #new_record {ns}.data 1
execute if score #min {ns}.data = #record {ns}.data if score @s {ns}.alive < #time {ns}.data run scoreboard players set #new_record {ns}.data 1

# If it's better, save it
$execute if score #new_record {ns}.data matches 1 store result storage {ns}:records minigolf.$(current_map).shots int 1 run scoreboard players get #min {ns}.data
$execute if score #new_record {ns}.data matches 1 store result storage {ns}:records minigolf.$(current_map).time int 1 run scoreboard players get @s {ns}.alive
$execute if score #new_record {ns}.data matches 1 run data modify storage {ns}:records minigolf.$(current_map).player set from entity @s Inventory[0].components."minecraft:profile".name
execute if score #new_record {ns}.data matches 1 as @a[tag=!detached] at @s run playsound ui.toast.challenge_complete ambient @s ~ ~ ~ 0.5
$execute if score #new_record {ns}.data matches 1 run function {path}/record_tellraw_macro with storage {ns}:records minigolf.$(current_map)
""")

	# /record_tellraw
	write_function(f"{path}/record_tellraw", f"""
$execute if data storage {ns}:records minigolf.$(current_map) run function {path}/record_tellraw_macro with storage {ns}:records minigolf.$(current_map)
""")

	# /record_tellraw_macro (translation ref)
	write_function(f"{path}/record_tellraw_macro", f"""
$function {translations}/record_tellraw_macro {{shots:"$(shots)",player:"$(player)",time:"$(time)"}}
scoreboard players reset #new_record {ns}.data
""")

	# /second
	write_function(f"{path}/second", f"""
# Timer
scoreboard players add #minigolf_seconds {ns}.data 1
execute if score #remaining_time {ns}.data matches 0.. run scoreboard players remove #remaining_time {ns}.data 1

# Summon golf balls
execute if score #minigolf_seconds {ns}.data matches 0 run scoreboard players set #summon_balls {ns}.data 1
execute if score #minigolf_seconds {ns}.data matches 0 in {ns}:game run function {path}/teleport_all

# XP bar update
function {path}/xp_bar
""")

	# /start
	write_function(f"{path}/start", f"""
gamemode spectator @a[tag=!detached]
team join {ns}.no_pvp @a[tag=!detached]
team modify {ns}.no_pvp seeFriendlyInvisibles false
effect give @a[tag=!detached] resistance infinite 255 true
effect give @a[tag=!detached] saturation infinite 255 true
function {ns}:utils/set_dynamic_time

execute in {ns}:game run gamerule minecraft:fall_damage false
execute in {ns}:game run gamerule minecraft:fire_damage false
execute in {ns}:game run gamerule minecraft:drowning_damage false
execute in {ns}:game run gamerule minecraft:freeze_damage false

## Téléportation des joueurs
function {ns}:utils/choose_map_for {{id:"minigolf", maps:["gg_grass_1","gg_grass_2","gg_grass_3","gg_snow_1","gg_snow_2","gg_ice_1","gg_temple","gg_volcano","gg_desert_1","gg_end_1","gg_chamber"]}}


scoreboard players set #minigolf_seconds {ns}.data -1
scoreboard players set #minigolf_ticks {ns}.data 0
scoreboard players set #remaining_time {ns}.data 245
scoreboard players set #process_end {ns}.data 0
scoreboard objectives add {ns}.temp.respawn dummy

scoreboard players set #default_do_collision golf_ball.data 0

# Choose map
function {path}/teleport_all

# Record
scoreboard players reset #new_record {ns}.data
execute unless data storage {ns}:records minigolf run data modify storage {ns}:records minigolf set value {{}}
data modify storage {ns}:records minigolf.current_map set from storage {ns}:main map
function {path}/record_tellraw with storage {ns}:records minigolf
function {translations}/start
""")

	# /stop
	write_function(f"{path}/stop", f"""
scoreboard objectives remove {ns}.temp.respawn
tag @a remove {ns}.in_hole
""")

	# /teleport_all
	write_function(f"{path}/teleport_all", f"""
execute if data storage {ns}:main {{map:"gg_grass_1"}} run tp @a[tag=!detached] 124036 117 124082 90 0
execute if data storage {ns}:main {{map:"gg_grass_2"}} run tp @a[tag=!detached] 124006 117 124040 -90 0
execute if data storage {ns}:main {{map:"gg_grass_3"}} run tp @a[tag=!detached] 124129 125 124133 -110 0
execute if data storage {ns}:main {{map:"gg_snow_1"}} run tp @a[tag=!detached] 124055 121 124010 -45 0
execute if data storage {ns}:main {{map:"gg_snow_2"}} run tp @a[tag=!detached] 124067 123 124080 -135 0
execute if data storage {ns}:main {{map:"gg_ice_1"}} run tp @a[tag=!detached] 124099 122 124058 -60 0
execute if data storage {ns}:main {{map:"gg_temple"}} run tp @a[tag=!detached] 124088 117 124032 -160 0
execute if data storage {ns}:main {{map:"gg_volcano"}} run tp @a[tag=!detached] 124143 140 124016 -5 48
execute if data storage {ns}:main {{map:"gg_desert_1"}} run tp @a[tag=!detached] 124155 117 124083 175 0
execute if data storage {ns}:main {{map:"gg_end_1"}} run tp @a[tag=!detached] 124111 139 124102 -15 0
execute if data storage {ns}:main {{map:"gg_chamber"}} run tp @a[tag=!detached] 124070 125 124120 160 0

execute if score #summon_balls {ns}.data matches 1 run scoreboard players reset * golf_ball.shots
execute if score #summon_balls {ns}.data matches 1 as @a[tag=!detached] at @s run function golf_ball:summon
execute if score #summon_balls {ns}.data matches 1 run scoreboard players set @a[tag=!detached] golf_ball.cooldown 50
execute if score #summon_balls {ns}.data matches 1 run scoreboard players set @a[tag=!detached] golf_ball.shots 0
execute if score #summon_balls {ns}.data matches 1 run scoreboard objectives setdisplay sidebar golf_ball.shots
execute if score #summon_balls {ns}.data matches 1 run scoreboard players set @a[tag=!detached] {ns}.alive 1
execute if score #summon_balls {ns}.data matches 1 run gamemode adventure @a[tag=!detached]
scoreboard players set #summon_balls {ns}.data 0
""")

	# /tick
	write_function(f"{path}/tick", f"""
# Respawn tick
scoreboard players add #minigolf_ticks {ns}.data 1
scoreboard players remove @a[scores={{{ns}.temp.respawn=1..}}] {ns}.temp.respawn 1
execute as @a[scores={{{ns}.alive=1}},predicate=golf_ball:has_vehicle] at @s run function {path}/check_respawn

# Track riding players whose ball is resting in a hole shaft (barrier floor), so that the
# dismount on exit can eject the player beside the hole without losing the finish detection
tag @a[scores={{{ns}.alive=1}},predicate=golf_ball:has_vehicle] remove {ns}.in_hole
execute as @a[scores={{{ns}.alive=1}},predicate=golf_ball:has_vehicle] at @s if block ~ ~-1 ~ barrier run tag @s add {ns}.in_hole
execute as @a[scores={{{ns}.alive=1}},predicate=golf_ball:has_vehicle] at @s if block ~ ~-2 ~ barrier run tag @s add {ns}.in_hole
execute as @a[scores={{{ns}.alive=1}},predicate=golf_ball:has_vehicle] at @s if block ~ ~-3 ~ barrier run tag @s add {ns}.in_hole
execute as @a[scores={{{ns}.alive=1}},predicate=golf_ball:has_vehicle] at @s if block ~ ~-4 ~ barrier run tag @s add {ns}.in_hole

# Check if some players lost their ball (finished or give up)
execute as @a[scores={{{ns}.alive=1}},predicate=!golf_ball:has_vehicle] at @s run function {path}/check_lost_ball

## End game
execute if score #minigolf_seconds {ns}.data matches 1.. if score #remaining_time {ns}.data matches 1.. unless entity @a[scores={{{ns}.alive=1}}] run scoreboard players set #remaining_time {ns}.data 0
execute if score #remaining_time {ns}.data matches ..0 run function {path}/process_end
""")

	# /xp_bar
	write_time_xp_bar(f"{path}/xp_bar", 240)
