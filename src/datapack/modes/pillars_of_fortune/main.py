
# ruff: noqa: E501
# Imports
from stewbeet import Mem, write_function

from ..common import write_modes_calls, write_time_xp_bar
from .translations import write_translations


def write_mode():
	ns: str = Mem.ctx.project_id
	mode: str = "pillars_of_fortune"
	path: str = f"{ns}:modes/{mode}"
	translations: str = f"{path}/translations"

	# Write /calls/ and /translations/ functions
	write_modes_calls(mode, targets={"joined": f"{ns}:utils/classic_death"})
	write_translations()


	# /place_player
	write_function(f"{path}/place_player", f"""
# Remove temporary tag
tag @s remove {ns}.place_pillar

# Teleport player to the pillar
$execute positioned ^ ^ ^$(distance_to_center) align xyz run tp @s ~0.5 ~0.5 ~0.5 ~180 0

# Prepare entity to ride
execute at @s run summon item_display ~ ~ ~ {{Tags:["{ns}.pillars_of_fortune"]}}

# Continue loop
$execute rotated ~$(angle_difference) 0 as @e[tag={ns}.place_pillar,sort=random,limit=1] run function {path}/place_player with storage {ns}:temp input
""")

	# /process_end
	write_function(f"{path}/process_end", f"""
function {ns}:modes/_common/process_end/winner_by_health {{death:"{ns}:utils/classic_death"}}

execute if score #process_end {ns}.data matches 200 run function {ns}:engine/restart
""")

	# /second
	write_function(f"{path}/second", f"""
# Classic timer
scoreboard players add #pillars_of_fortune_seconds {ns}.data 1
scoreboard players remove #remaining_time {ns}.data 1
function {path}/xp_bar

# Remove mounts
execute if score #pillars_of_fortune_seconds {ns}.data matches 1 as @a[tag=!detached,gamemode=survival,predicate={ns}:has_vehicle] run ride @s dismount
execute if score #pillars_of_fortune_seconds {ns}.data matches 1 run kill @e[tag={ns}.pillars_of_fortune]

# Give random item every 3 seconds
scoreboard players operation #temp {ns}.data = #pillars_of_fortune_seconds {ns}.data
scoreboard players operation #temp {ns}.data %= #3 {ns}.data
execute if score #pillars_of_fortune_seconds {ns}.data matches 1.. if score #temp {ns}.data matches 0 as @a[tag=!detached,gamemode=survival] run loot give @s loot {ns}:random/vanilla

# Forbidden effects
effect clear @a[tag=!detached] mining_fatigue

# Swap (grounded) players positions every minute after 3 minutes, and give 16 mangrove planks
execute if score #pillars_of_fortune_seconds {ns}.data matches 180.. run scoreboard players operation #swap {ns}.data = #pillars_of_fortune_seconds {ns}.data
execute if score #pillars_of_fortune_seconds {ns}.data matches 180.. run scoreboard players operation #swap {ns}.data %= #60 {ns}.data
execute if score #pillars_of_fortune_seconds {ns}.data matches 180.. if score #swap {ns}.data matches 55 as @a[tag=!detached,gamemode=survival] at @s unless block ~ ~-0.1 ~ air run tag @s add {ns}.to_swap
execute if score #pillars_of_fortune_seconds {ns}.data matches 180.. if score #swap {ns}.data matches 55 if entity @a[tag={ns}.to_swap] run function {path}/swap/main
execute if score #pillars_of_fortune_seconds {ns}.data matches 180.. if score #swap {ns}.data matches 55 run give @a[tag=!detached,gamemode=survival] mangrove_planks 16

# Title action bar
function {ns}:modes/_common/compute_mins_secs
function {translations}/second
""")

	# /start (brace-heavy: plain string, translation ref rewritten)
	write_function(f"{path}/start", f"""
gamemode survival @a[tag=!detached]
effect give @a[tag=!detached] weakness 5 255 true
effect give @a[tag=!detached] saturation 5 255 true
effect give @a[tag=!detached] resistance 5 255 true
effect give @a[tag=!detached] regeneration 5 255 true
function {ns}:utils/set_dynamic_time

## Téléportation des joueurs
scoreboard players set #do_spreadplayers {ns}.data 0
function {ns}:utils/choose_map_for {{id:"pillars_of_fortune", maps:["pillars_of_fortune", "slimy_ground", "eternal_void", "floor_is_lava", "leather_boots", "ocean_waste", "void_desert"]}}
function {ns}:modes/pillars_of_fortune/translations/start

execute in {ns}:game run gamerule minecraft:mob_griefing true

scoreboard players set #remaining_time {ns}.data 605
scoreboard players set #pillars_of_fortune_seconds {ns}.data -1
scoreboard players set #pillars_of_fortune_ticks {ns}.data 0
scoreboard players set #process_end {ns}.data 0
scoreboard objectives setdisplay list {ns}.health

## Count the number of players to compute the angle difference between pillars (360 / number of players = angle difference)
# 360.000 for precision
execute store result score #count {ns}.data if entity @a[tag=!detached]
#execute as @e[limit=2] as @e[limit=2] as @e[limit=2] as @e[limit=2] run summon armor_stand ~ ~ ~ {{Tags:["{ns}.place_pillar"]}}
#scoreboard players add #count {ns}.data 16
scoreboard players set #angle_difference {ns}.data 360000
scoreboard players operation #angle_difference {ns}.data /= #count {ns}.data

## Compute the radius
# distance = 1.4 * count
scoreboard players set #distance_to_center {ns}.data 1400
scoreboard players operation #distance_to_center {ns}.data *= #count {ns}.data
# Clamp between 5000 (5 blocks) and 45000 (45 blocks)
execute if score #distance_to_center {ns}.data matches ..4999 run scoreboard players set #distance_to_center {ns}.data 5000
execute if score #distance_to_center {ns}.data matches 45001.. run scoreboard players set #distance_to_center {ns}.data 45000

## Prepare a storage for the angle to increment for each player we'll teleport
data modify storage {ns}:temp input set value {{angle_difference: 0.0f, distance_to_center: 0.0f}}
execute store result storage {ns}:temp input.angle_difference float 0.001 run scoreboard players get #angle_difference {ns}.data
execute store result storage {ns}:temp input.distance_to_center float 0.001 run scoreboard players get #distance_to_center {ns}.data

# Place players on pillars
tag @a[tag=!detached] add {ns}.place_pillar
execute if data storage {ns}:main {{map:"pillars_of_fortune"}} in {ns}:game positioned 161050 142 161050 rotated 0 0 as @e[tag={ns}.place_pillar,sort=random,limit=1] run function {ns}:modes/pillars_of_fortune/place_player with storage {ns}:temp input
execute if data storage {ns}:main {{map:"slimy_ground"}} in {ns}:game positioned 60050 142 60050 rotated 0 0 as @e[tag={ns}.place_pillar,sort=random,limit=1] run function {ns}:modes/pillars_of_fortune/place_player with storage {ns}:temp input
execute if data storage {ns}:main {{map:"eternal_void"}} in {ns}:game positioned 61050 142 61050 rotated 0 0 as @e[tag={ns}.place_pillar,sort=random,limit=1] run function {ns}:modes/pillars_of_fortune/place_player with storage {ns}:temp input
execute if data storage {ns}:main {{map:"floor_is_lava"}} in {ns}:game positioned 62050 142 62050 rotated 0 0 as @e[tag={ns}.place_pillar,sort=random,limit=1] run function {ns}:modes/pillars_of_fortune/place_player with storage {ns}:temp input
execute if data storage {ns}:main {{map:"leather_boots"}} in {ns}:game positioned 63050 142 63050 rotated 0 0 as @e[tag={ns}.place_pillar,sort=random,limit=1] run function {ns}:modes/pillars_of_fortune/place_player with storage {ns}:temp input
execute if data storage {ns}:main {{map:"ocean_waste"}} in {ns}:game positioned 64050 142 64050 rotated 0 0 as @e[tag={ns}.place_pillar,sort=random,limit=1] run function {ns}:modes/pillars_of_fortune/place_player with storage {ns}:temp input
execute if data storage {ns}:main {{map:"void_desert"}} in {ns}:game positioned 68050 142 68050 rotated 0 0 as @e[tag={ns}.place_pillar,sort=random,limit=1] run function {ns}:modes/pillars_of_fortune/place_player with storage {ns}:temp input
""")

	# /stop (empty)
	write_function(f"{path}/stop", "\n")

	# /tick
	write_function(f"{path}/tick", f"""
scoreboard players add #pillars_of_fortune_ticks {ns}.data 1

## Death system
execute in {ns}:game run spawnpoint @a[tag=!detached] 0 70 0
function {ns}:utils/on_death_run_function {{function:"{ns}:utils/classic_death"}}

## Don't move and make pillars
execute if score #pillars_of_fortune_seconds {ns}.data matches ..0 as @a[tag=!detached,gamemode=survival,predicate=!{ns}:has_vehicle] at @s run ride @s mount @e[tag={ns}.pillars_of_fortune,sort=nearest,limit=1]
execute if score #pillars_of_fortune_seconds {ns}.data matches ..0 at @e[tag={ns}.pillars_of_fortune] run fill ~ 110 ~ ~ ~-2 ~ bedrock
execute if score #pillars_of_fortune_seconds {ns}.data matches ..0 if data storage {ns}:main {{map:"void_desert"}} at @e[tag={ns}.pillars_of_fortune] run fill ~ 111 ~ ~ ~-2 ~ red_sand
execute if score #pillars_of_fortune_seconds {ns}.data matches ..0 at @e[tag={ns}.pillars_of_fortune] run setblock ~ ~ ~ light


## End game
scoreboard players set #remaining_players {ns}.data 0
execute store result score #remaining_players {ns}.data if entity @a[tag=!detached,gamemode=survival]
execute if score #pillars_of_fortune_seconds {ns}.data matches 1.. if score #remaining_players {ns}.data matches ..1 run function {path}/process_end
execute if score #remaining_time {ns}.data matches ..0 run function {path}/process_end
""")

	# /xp_bar
	write_time_xp_bar(f"{path}/xp_bar", 600, "#pillars_of_fortune_seconds")

	# === swap ===

	# /swap/main
	write_function(f"{path}/swap/main", f"""
# Swap one player with another
execute as @r[tag={ns}.to_swap] at @s run function {path}/swap/player_1

# Recursive call if remaining players to swap
execute if entity @a[tag={ns}.to_swap] run function {path}/swap/main
""")

	# /swap/player_1
	write_function(f"{path}/swap/player_1", f"""
# Summon temporary marker to keep player's position
summon marker ~ ~ ~ {{Tags:["{ns}.swap_marker"]}}

# Add temporary tag & remove to_swap
tag @s add {ns}.player_1
tag @s remove {ns}.to_swap

# Execute function for player 2
execute as @r[tag={ns}.to_swap] at @s run function {path}/swap/player_2

# Remove temporary tag since players have been swapped
tag @s remove {ns}.player_1
""")

	# /swap/player_2
	write_function(f"{path}/swap/player_2", f"""
# Teleport player 1 to self
tp @p[tag={ns}.player_1] ~ ~ ~ ~ ~

# Teleport self to marker and kill it
tp @s @e[tag={ns}.swap_marker,limit=1]
kill @e[tag={ns}.swap_marker,limit=1]

# Remove to_swap
tag @s remove {ns}.to_swap
""")
