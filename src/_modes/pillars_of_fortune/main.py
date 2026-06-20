
# Imports
from stewbeet import Mem, write_function
from ..common import write_classic_death, write_modes_calls
from .translations import write_translations


def write_mode():
	ns: str = Mem.ctx.project_id
	mode: str = "pillars_of_fortune"
	path: str = f"{ns}:modes/{mode}"
	translations: str = f"{path}/translations"

	# Write /calls/ and /translations/ functions
	write_modes_calls(mode)
	write_translations()


	# /death
	write_classic_death(f"{path}/death")

	# /joined
	write_function(f"{path}/joined", f"""
function {path}/death
""")

	# /place_player
	write_function(f"{path}/place_player", f"""
# Remove temporary tag
tag @s remove switch.place_pillar

# Teleport player to the pillar
$execute positioned ^ ^ ^$(distance_to_center) align xyz run tp @s ~0.5 ~0.5 ~0.5 ~180 0

# Prepare entity to ride
execute at @s run summon item_display ~ ~ ~ {{Tags:["switch.pillars_of_fortune"]}}

# Continue loop
$execute rotated ~$(angle_difference) 0 as @e[tag=switch.place_pillar,sort=random,limit=1] run function {path}/place_player with storage switch:temp input
""")

	# /process_end
	write_function(f"{path}/process_end", f"""
scoreboard players add #process_end switch.data 1

execute if score #process_end switch.data matches 1 if score #remaining_players switch.data matches 1 store result score #health switch.data run data get entity @r[gamemode=survival] Health
execute if score #process_end switch.data matches 1 if score #remaining_players switch.data matches 1 as @a[tag=!detached,gamemode=survival] at @s run function switch:engine/add_win
function switch:translations/common/process_end_winner_health
execute if score #process_end switch.data matches 1 as @a[tag=!detached] run function {path}/death
execute if score #process_end switch.data matches 1 as @a[tag=!detached] run function switch:player/trigger/rating/print_current_game

execute if score #process_end switch.data matches 200 run function switch:engine/restart
""")

	# /second
	write_function(f"{path}/second", f"""
# Classic timer
scoreboard players add #pillars_of_fortune_seconds switch.data 1
scoreboard players remove #remaining_time switch.data 1
function {path}/xp_bar

# Remove mounts
execute if score #pillars_of_fortune_seconds switch.data matches 1 as @a[tag=!detached,gamemode=survival,predicate=switch:has_vehicle] run ride @s dismount
execute if score #pillars_of_fortune_seconds switch.data matches 1 run kill @e[tag=switch.pillars_of_fortune]

# Give random item every 3 seconds
scoreboard players operation #temp switch.data = #pillars_of_fortune_seconds switch.data
scoreboard players operation #temp switch.data %= #3 switch.data
execute if score #pillars_of_fortune_seconds switch.data matches 1.. if score #temp switch.data matches 0 as @a[tag=!detached,gamemode=survival] run loot give @s loot switch:random/vanilla

# Forbidden effects
effect clear @a[tag=!detached] mining_fatigue

# Swap (grounded) players positions every minute after 3 minutes, and give 16 mangrove planks
execute if score #pillars_of_fortune_seconds switch.data matches 180.. run scoreboard players operation #swap switch.data = #pillars_of_fortune_seconds switch.data
execute if score #pillars_of_fortune_seconds switch.data matches 180.. run scoreboard players operation #swap switch.data %= #60 switch.data
execute if score #pillars_of_fortune_seconds switch.data matches 180.. if score #swap switch.data matches 55 as @a[tag=!detached,gamemode=survival] at @s unless block ~ ~-0.1 ~ air run tag @s add switch.to_swap
execute if score #pillars_of_fortune_seconds switch.data matches 180.. if score #swap switch.data matches 55 if entity @a[tag=switch.to_swap] run function {path}/swap/main
execute if score #pillars_of_fortune_seconds switch.data matches 180.. if score #swap switch.data matches 55 run give @a[tag=!detached,gamemode=survival] mangrove_planks 16

# Title action bar
scoreboard players operation #mins switch.data = #remaining_time switch.data
scoreboard players operation #mins switch.data /= #60 switch.data
scoreboard players operation #secs switch.data = #remaining_time switch.data
scoreboard players operation #secs switch.data %= #60 switch.data
function {translations}/second
""")

	# /start (brace-heavy: plain string, translation ref rewritten)
	write_function(f"{path}/start", """
gamemode survival @a[tag=!detached]
effect give @a[tag=!detached] weakness 5 255 true
effect give @a[tag=!detached] saturation 5 255 true
effect give @a[tag=!detached] resistance 5 255 true
effect give @a[tag=!detached] regeneration 5 255 true
function switch:utils/set_dynamic_time

## Téléportation des joueurs
scoreboard players set #do_spreadplayers switch.data 0
function switch:utils/choose_map_for {id:"pillars_of_fortune", maps:["pillars_of_fortune", "slimy_ground", "eternal_void", "floor_is_lava", "leather_boots", "ocean_waste", "void_desert"]}
function switch:modes/pillars_of_fortune/translations/start

execute in switch:game run gamerule minecraft:mob_griefing true

scoreboard players set #remaining_time switch.data 605
scoreboard players set #pillars_of_fortune_seconds switch.data -10
scoreboard players set #pillars_of_fortune_ticks switch.data 0
scoreboard players set #process_end switch.data 0
scoreboard objectives setdisplay list switch.health

## Count the number of players to compute the angle difference between pillars (360 / number of players = angle difference)
# 360.000 for precision
execute store result score #count switch.data if entity @a[tag=!detached]
#execute as @e[limit=2] as @e[limit=2] as @e[limit=2] as @e[limit=2] run summon armor_stand ~ ~ ~ {Tags:["switch.place_pillar"]}
#scoreboard players add #count switch.data 16
scoreboard players set #angle_difference switch.data 360000
scoreboard players operation #angle_difference switch.data /= #count switch.data

## Compute the radius
# distance = 1.4 * count
scoreboard players set #distance_to_center switch.data 1400
scoreboard players operation #distance_to_center switch.data *= #count switch.data
# Clamp between 5000 (5 blocks) and 45000 (45 blocks)
execute if score #distance_to_center switch.data matches ..4999 run scoreboard players set #distance_to_center switch.data 5000
execute if score #distance_to_center switch.data matches 45001.. run scoreboard players set #distance_to_center switch.data 45000

## Prepare a storage for the angle to increment for each player we'll teleport
data modify storage switch:temp input set value {angle_difference: 0.0f, distance_to_center: 0.0f}
execute store result storage switch:temp input.angle_difference float 0.001 run scoreboard players get #angle_difference switch.data
execute store result storage switch:temp input.distance_to_center float 0.001 run scoreboard players get #distance_to_center switch.data

# Place players on pillars
tag @a[tag=!detached] add switch.place_pillar
execute if data storage switch:main {map:"pillars_of_fortune"} in switch:game positioned 161050 142 161050 rotated 0 0 as @e[tag=switch.place_pillar,sort=random,limit=1] run function switch:modes/pillars_of_fortune/place_player with storage switch:temp input
execute if data storage switch:main {map:"slimy_ground"} in switch:game positioned 60050 142 60050 rotated 0 0 as @e[tag=switch.place_pillar,sort=random,limit=1] run function switch:modes/pillars_of_fortune/place_player with storage switch:temp input
execute if data storage switch:main {map:"eternal_void"} in switch:game positioned 61050 142 61050 rotated 0 0 as @e[tag=switch.place_pillar,sort=random,limit=1] run function switch:modes/pillars_of_fortune/place_player with storage switch:temp input
execute if data storage switch:main {map:"floor_is_lava"} in switch:game positioned 62050 142 62050 rotated 0 0 as @e[tag=switch.place_pillar,sort=random,limit=1] run function switch:modes/pillars_of_fortune/place_player with storage switch:temp input
execute if data storage switch:main {map:"leather_boots"} in switch:game positioned 63050 142 63050 rotated 0 0 as @e[tag=switch.place_pillar,sort=random,limit=1] run function switch:modes/pillars_of_fortune/place_player with storage switch:temp input
execute if data storage switch:main {map:"ocean_waste"} in switch:game positioned 64050 142 64050 rotated 0 0 as @e[tag=switch.place_pillar,sort=random,limit=1] run function switch:modes/pillars_of_fortune/place_player with storage switch:temp input
execute if data storage switch:main {map:"void_desert"} in switch:game positioned 68050 142 68050 rotated 0 0 as @e[tag=switch.place_pillar,sort=random,limit=1] run function switch:modes/pillars_of_fortune/place_player with storage switch:temp input
""")

	# /stop (empty)
	write_function(f"{path}/stop", "\n")

	# /tick
	write_function(f"{path}/tick", f"""
scoreboard players add #pillars_of_fortune_ticks switch.data 1

## Death system
execute in switch:game run spawnpoint @a[tag=!detached] 0 70 0
function switch:utils/on_death_run_function {{function:"{path}/death"}}

## Don't move and make pillars
execute if score #pillars_of_fortune_seconds switch.data matches ..0 as @a[tag=!detached,gamemode=survival,predicate=!switch:has_vehicle] at @s run ride @s mount @e[tag=switch.pillars_of_fortune,sort=nearest,limit=1]
execute if score #pillars_of_fortune_seconds switch.data matches ..0 at @e[tag=switch.pillars_of_fortune] run fill ~ 110 ~ ~ ~-2 ~ bedrock
execute if score #pillars_of_fortune_seconds switch.data matches ..0 if data storage switch:main {{map:"void_desert"}} at @e[tag=switch.pillars_of_fortune] run fill ~ 111 ~ ~ ~-2 ~ red_sand
execute if score #pillars_of_fortune_seconds switch.data matches ..0 at @e[tag=switch.pillars_of_fortune] run setblock ~ ~ ~ light


## End game
scoreboard players set #remaining_players switch.data 0
execute store result score #remaining_players switch.data if entity @a[tag=!detached,gamemode=survival]
execute if score #pillars_of_fortune_seconds switch.data matches 1.. if score #remaining_players switch.data matches ..1 run function {path}/process_end
execute if score #remaining_time switch.data matches ..0 run function {path}/process_end
""")

	# /xp_bar
	write_function(f"{path}/xp_bar", """
# 600 seconds = 100%
# 1 seconds = 1,111%
# 0 seconds = 0%
scoreboard players operation #points switch.data = #pillars_of_fortune_seconds switch.data
scoreboard players operation #points switch.data *= #1000000 switch.data
scoreboard players set #divide switch.data 600000
function switch:modes/_common/xp_bar/points

scoreboard players operation #levels switch.data = #remaining_time switch.data
function switch:modes/_common/xp_bar/levels
""")

	# === swap ===

	# /swap/main
	write_function(f"{path}/swap/main", f"""
# Swap one player with another
execute as @r[tag=switch.to_swap] at @s run function {path}/swap/player_1

# Recursive call if remaining players to swap
execute if entity @a[tag=switch.to_swap] run function {path}/swap/main
""")

	# /swap/player_1
	write_function(f"{path}/swap/player_1", f"""
# Summon temporary marker to keep player's position
summon marker ~ ~ ~ {{Tags:["switch.swap_marker"]}}

# Add temporary tag & remove to_swap
tag @s add switch.player_1
tag @s remove switch.to_swap

# Execute function for player 2
execute as @r[tag=switch.to_swap] at @s run function {path}/swap/player_2

# Remove temporary tag since players have been swapped
tag @s remove switch.player_1
""")

	# /swap/player_2
	write_function(f"{path}/swap/player_2", """
# Teleport player 1 to self
tp @p[tag=switch.player_1] ~ ~ ~ ~ ~

# Teleport self to marker and kill it
tp @s @e[tag=switch.swap_marker,limit=1]
kill @e[tag=switch.swap_marker,limit=1]

# Remove to_swap
tag @s remove switch.to_swap
""")
