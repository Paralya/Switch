
# Imports
from stewbeet import Mem, write_function

from ..common import write_modes_calls, write_no_drop, write_time_xp_bar
from .translations import write_translations


def write_mode():
	ns: str = Mem.ctx.project_id
	mode: str = "one_shot"
	path: str = f"{ns}:modes/{mode}"
	translations: str = f"{path}/translations"

	# Write /calls/ and /translations/ functions
	write_modes_calls(mode)
	write_translations()


	# /death
	write_function(f"{path}/death", f"""
execute unless score @s {ns}.alive matches 1.. run scoreboard players add @s {ns}.stats.deaths 1
gamemode adventure @s[gamemode=!adventure]
function {path}/respawn/main
""")

	# /give_items
	write_function(f"{path}/give_items", """
# Give items to the player
clear @s
give @s bow[unbreakable={},enchantments={infinity:1,power:123},tooltip_display={"hidden_components":["minecraft:enchantments"]},item_name={"text":"Boowie","italic":true,"color":"light_purple"}]
give @s netherite_sword[enchantments={sharpness:123},item_name={"text":"Swordy Sword","italic":true,"color":"green"}]
give @s arrow 1
attribute @s attack_speed base set 1024
attribute @s max_health base set 1
""")

	# /joined
	write_function(f"{path}/joined", f"""
function {path}/death
function {path}/give_items
""")

	# /no_drop
	write_no_drop(f"{path}/no_drop")

	# /process_end
	write_function(f"{path}/process_end", f"""
scoreboard players add #process_end {ns}.data 1

# Reward the player(s) with the most kills (reaching 18 kills ends the game early, on timeout the current leader(s) win)
scoreboard players set #max_kills {ns}.data 0
execute if score #process_end {ns}.data matches 1 as @a[tag=!detached] run scoreboard players operation #max_kills {ns}.data > @s {ns}.temp.kills
execute if score #process_end {ns}.data matches 1 if score #max_kills {ns}.data matches 1.. as @a[tag=!detached] if score @s {ns}.temp.kills = #max_kills {ns}.data at @s run function {ns}:engine/add_win
function {translations}/process_end
execute if score #process_end {ns}.data matches 1 run gamemode spectator @a[tag=!detached]
execute if score #process_end {ns}.data matches 1 as @a[tag=!detached] run function {ns}:player/trigger/rating/print_current_game

execute if score #process_end {ns}.data matches 200 run function {ns}:engine/restart
""")

	# /second
	write_function(f"{path}/second", f"""
# Timers
scoreboard players add #one_shot_seconds {ns}.data 1
execute if score #remaining_time {ns}.data matches 0.. run scoreboard players remove #remaining_time {ns}.data 1
function {path}/xp_bar

# Give items on start
execute if score #one_shot_seconds {ns}.data matches 0 as @a[tag=!detached] at @s run function {path}/give_items
execute if score #one_shot_seconds {ns}.data matches 0 run clear @a[tag=!detached] arrow
execute if score #one_shot_seconds {ns}.data matches 1 run give @a[tag=!detached] arrow 1

# Glowing effect for everyone every 31 seconds
scoreboard players operation #temp {ns}.data = #one_shot_seconds {ns}.data
scoreboard players operation #temp {ns}.data %= #31 {ns}.data
execute if score #temp {ns}.data matches 0 run effect give @a[tag=!detached,gamemode=!spectator] glowing 4 2 true

# PVP Warning & Remaining time
function {ns}:modes/_common/compute_mins_secs
function {translations}/second
""")

	# /start
	write_function(f"{path}/start", f"""
function {ns}:utils/set_dynamic_time

execute in {ns}:game run gamerule minecraft:fall_damage false
execute in {ns}:game run gamerule minecraft:keep_inventory true
execute in {ns}:game run gamerule minecraft:show_death_messages true
effect give @a[tag=!detached] regeneration 5 255 true
effect give @a[tag=!detached] resistance 6 255 true
effect give @a[tag=!detached] slowness 6 255 true
effect give @a[tag=!detached] blindness 4 255 true

## Téléportation des joueurs
function {ns}:utils/choose_map_for {{id:"one_shot", maps:["friends_pvpbox_hills","jn_one_in_the_chamber_1","jn_one_in_the_chamber_2"]}}
function {translations}/start

scoreboard objectives add {ns}.temp.damages dummy
scoreboard objectives add {ns}.temp.kills playerKillCount {{"text":"[Goal: 18 Kills]","color":"gold"}}
scoreboard objectives setdisplay sidebar {ns}.temp.kills

scoreboard players set #remaining_time {ns}.data 600
scoreboard players set #one_shot_seconds {ns}.data -10
scoreboard players set #one_shot_ticks {ns}.data 0
scoreboard players set #process_end {ns}.data 0
scoreboard players set #winner {ns}.data 0

# donner blindness et slownees pendant 5 secondes
effect give @a[tag=!detached] blindness 5 2 true
effect give @a[tag=!detached] slowness 5 2 true
effect give @a[tag=!detached] resistance infinite 0 true

# Summon 64 markers for respawn system
scoreboard players set #respawn_marker_count {ns}.data 0
execute summon marker run function {path}/respawn/spawn_marker
execute as @e[limit=2] as @e[limit=2] as @e[limit=2] as @e[limit=2] as @e[limit=2] as @e[limit=2] summon marker run function {path}/respawn/spawn_marker

# Make players spawn
execute as @a[tag=!detached] run function {path}/respawn/main
""")

	# /stop
	write_function(f"{path}/stop", f"""
scoreboard objectives remove {ns}.temp.damages
scoreboard objectives remove {ns}.temp.kills
""")

	# /tick
	write_function(f"{path}/tick", f"""
scoreboard players add #one_shot_ticks {ns}.data 1

# Prevent drop
execute as @e[type=item,tag=!{ns}.checked] run function {path}/no_drop

# Custom Saturation & Mort
execute as @a[tag=!detached,gamemode=!spectator] unless data entity @s {{foodLevel:20}} run effect give @s saturation 1 0 true
function {ns}:utils/on_death_run_function {{function:"{path}/death"}}

# Kill arrows that are in ground
kill @e[type=arrow,nbt={{inGround:1b}}]

## Dynamic spawn marker for respawn system (Always spawn new marker and kill the worst one)
execute if score #respawn_marker_count {ns}.data matches ..8 summon marker run function {path}/respawn/spawn_marker
execute if score #respawn_marker_count {ns}.data matches 9.. run function {path}/respawn/kill_worst_marker


## Détection de fin de partie
execute if score #winner {ns}.data matches 0 if entity @a[tag=!detached,scores={{{ns}.temp.kills=18..}}] run scoreboard players set #winner {ns}.data 1
execute if score #winner {ns}.data matches 1 run return run function {path}/process_end
execute if score #remaining_time {ns}.data matches ..0 run function {path}/process_end
""")

	# /xp_bar
	write_time_xp_bar(f"{path}/xp_bar", 600)

	# === respawn ===

	# /respawn/compare_distance
	write_function(f"{path}/respawn/compare_distance", f"""
## Real
# Get the distance
execute store result score #x {ns}.data run data get entity @s Pos[0]
execute store result score #y {ns}.data run data get entity @s Pos[1]
execute store result score #z {ns}.data run data get entity @s Pos[2]
scoreboard players operation #x {ns}.data -= #resp_x {ns}.data
scoreboard players operation #y {ns}.data -= #resp_y {ns}.data
scoreboard players operation #z {ns}.data -= #resp_z {ns}.data
execute if score #x {ns}.data matches ..-1 run scoreboard players operation #x {ns}.data *= #-1 {ns}.data
execute if score #y {ns}.data matches ..-1 run scoreboard players operation #y {ns}.data *= #-1 {ns}.data
execute if score #z {ns}.data matches ..-1 run scoreboard players operation #z {ns}.data *= #-1 {ns}.data

# Compare
scoreboard players operation #x {ns}.data += #y {ns}.data
scoreboard players operation #x {ns}.data += #z {ns}.data
execute if score #x {ns}.data < #min {ns}.data run scoreboard players operation #min {ns}.data = #x {ns}.data
""")

	# /respawn/get_marker_distance
	write_function(f"{path}/respawn/get_marker_distance", f"""
# Calculate the distance to the closest marker (sum of the absolute values of the coordinates difference)
scoreboard players operation #min {ns}.data = #positive_max {ns}.data
execute store result score #resp_x {ns}.data run data get entity @s Pos[0]
execute store result score #resp_y {ns}.data run data get entity @s Pos[1]
execute store result score #resp_z {ns}.data run data get entity @s Pos[2]
execute at @s as @n[tag={ns}.respawn,distance=0.1..] run function {path}/respawn/compare_distance

# Remember the minimal distance
scoreboard players operation @s {ns}.data = #min {ns}.data
""")

	# /respawn/get_player_distance
	write_function(f"{path}/respawn/get_player_distance", f"""
# At every player that is not dead, calculate the minimal distance
scoreboard players operation #min {ns}.data = #positive_max {ns}.data
execute store result score #resp_x {ns}.data run data get entity @s Pos[0]
execute store result score #resp_y {ns}.data run data get entity @s Pos[1]
execute store result score #resp_z {ns}.data run data get entity @s Pos[2]
execute as @a[tag=!detached] run function {path}/respawn/compare_distance

# Remember the minimal distance
scoreboard players operation @s {ns}.data = #min {ns}.data
""")

	# /respawn/kill_marker
	write_function(f"{path}/respawn/kill_marker", f"""
# Debug armor stand with glowing
#execute at @s run kill @n[tag={ns}.respawn_debug,distance=..1]

# Decrease the respawn marker count and kill the marker
scoreboard players remove #respawn_marker_count {ns}.data 1
kill @s
""")

	# /respawn/kill_worst_marker
	write_function(f"{path}/respawn/kill_worst_marker", f"""
# For each marker, get their distance to the closest marker
execute as @e[tag={ns}.respawn] run function {path}/respawn/get_marker_distance

# Kill the marker(s) with the lowest distance (the worst ones)
scoreboard players operation #min {ns}.data < @e[tag={ns}.respawn] {ns}.data
execute as @e[tag={ns}.respawn] if score @s {ns}.data = #min {ns}.data run function {path}/respawn/kill_marker
""")

	# /respawn/main
	write_function(f"{path}/respawn/main", f"""
# Get the respawn point with the highest distance to a player
execute as @e[tag={ns}.respawn] at @s run function {path}/respawn/get_player_distance
scoreboard players set #max {ns}.data 0
scoreboard players operation #max {ns}.data > @e[tag={ns}.respawn] {ns}.data
execute as @e[tag={ns}.respawn] if score @s {ns}.data = #max {ns}.data run tag @s add {ns}.respawn_max

# Teleport the player to the respawn point, and kill the respawn point
tp @s @n[tag={ns}.respawn_max]
execute at @s facing entity @p[distance=0.01..] feet run tp @s ~ ~ ~ ~ ~
execute as @n[tag={ns}.respawn_max] run function {path}/respawn/kill_marker

# Spawn a new marker
execute summon marker run function {path}/respawn/spawn_marker

# Give invisibility to the player for 2 seconds
effect give @s invisibility 2 0 true
""")

	# /respawn/spawn_marker
	write_function(f"{path}/respawn/spawn_marker", f"""
# Spawn a new marker
scoreboard players add #respawn_marker_count {ns}.data 1
function {ns}:maps/spread_one_player
tag @s add {ns}.respawn

# Debug armor stand with glowing
#execute at @s run summon armor_stand ~ ~ ~ {{Tags:["{ns}.respawn_debug"],Glowing:1b,Invulnerable:1b,NoGravity:1b,Small:1b}}

# Kill the marker if not on solid block
execute at @s if block ~ ~-0.1 ~ #minecraft:replaceable run return run function {path}/respawn/kill_marker

# Kill the marker if another marker is too close
tag @s add {ns}.respawn_check
execute at @s if entity @e[tag=!{ns}.respawn_check,tag={ns}.respawn,distance=..5] run return run function {path}/respawn/kill_marker
tag @s remove {ns}.respawn_check
""")
