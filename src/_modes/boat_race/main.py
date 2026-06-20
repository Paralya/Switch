
# Imports
from stewbeet import Mem, write_function
from ..common import write_modes_calls
from .translations import write_translations


def write_mode():
	ns: str = Mem.ctx.project_id
	mode: str = "boat_race"
	path: str = f"{ns}:modes/{mode}"
	translations: str = f"{path}/translations"

	# Write /calls/ and /translations/ functions
	write_modes_calls(mode)
	write_translations()

	# /start
	write_function(f"{path}/start", f"""
# Choose map
scoreboard players set #dont_regenerate switch.data 1
function switch:utils/choose_map_for {{id:"boat_race", maps:["boat_race_1","boat_race_2"]}}

scoreboard players set @a[tag=!detached] switch.alive 1
effect give @a[tag=!detached] saturation infinite 255 true
effect give @a[tag=!detached] weakness infinite 255 true
effect give @a[tag=!detached] resistance infinite 255 true

function switch:utils/set_dynamic_time

function {translations}/start

scoreboard players set #remaining_time switch.data 488
scoreboard players set #boat_race_seconds switch.data -8
scoreboard players set #boat_race_ticks switch.data 0
scoreboard players set #process_end switch.data 0
scoreboard players set #detect_end switch.data 0
""")

	# /stop
	write_function(f"{path}/stop", "\n")

	# /tick
	write_function(f"{path}/tick", f"""
scoreboard players add #boat_race_ticks switch.data 1

# Fall in void or unknown death
function switch:utils/on_death_run_function {{function:"{path}/death/"}}
execute as @a[scores={{switch.alive=1..}}] at @s if entity @s[y=-64,dy=64] run function {path}/death

# Détecte si tous les joueurs ont finis
scoreboard players set #alives switch.data 0
scoreboard players set #finished switch.data 0
execute store result score #alives switch.data if entity @a[scores={{switch.alive=-1..}}]
execute store result score #finished switch.data if entity @a[scores={{switch.alive=-1}}]
execute if score #alives switch.data = #finished switch.data run scoreboard players set #detect_end switch.data 1

execute in switch:game as @a[tag=!detached,gamemode=!spectator,scores={{switch.alive=1}},x=5033,y=105,z=5000,dx=3,dy=4,dz=4] at @s run function {path}/finish
execute in switch:game as @a[tag=!detached,gamemode=!spectator,scores={{switch.alive=1}},x=50997,y=92,z=50964,dx=6,dy=4,dz=5] at @s run function {path}/finish

# Prevent leaving boat
execute as @a[tag=!detached,gamemode=adventure] at @s run ride @s mount @n[type=#minecraft:boat,predicate=!shopping_kart:has_player_passenger,distance=..10,sort=nearest,limit=1]

# Fin de la partie si le temps est écoulé, ou qu'ils ont tous finis
execute if score #boat_race_seconds switch.data matches 480.. run scoreboard players set #detect_end switch.data 1
execute if score #detect_end switch.data matches 1 run function {path}/process_end
""")

	# /second
	write_function(f"{path}/second", f"""
scoreboard players add #boat_race_seconds switch.data 1
execute if score #remaining_time switch.data matches 1.. run scoreboard players remove #remaining_time switch.data 1

function {path}/xp_bar
function {translations}/second
execute if score #boat_race_seconds switch.data matches -5 as @a[tag=!detached,gamemode=!spectator] at @s run function {path}/summon_boat
execute if score #boat_race_seconds switch.data matches 0 in switch:game run fill 5026 100 5007 5026 100 4997 air
execute if score #boat_race_seconds switch.data matches 0 in switch:game run fill 51029 139 51036 51042 139 51036 air
execute if score #boat_race_seconds switch.data matches ..-1 in switch:game run fill 5026 100 5007 5026 100 4997 quartz_slab
execute if score #boat_race_seconds switch.data matches ..-1 in switch:game run fill 51029 139 51036 51042 139 51036 quartz_slab

# Clear des anciens mobs si il y en a
execute if score #boat_race_seconds switch.data matches ..-7 run function switch:utils/safe_kill_macro {{selector:"@e[type=#minecraft:boat]"}}
""")

	# /joined
	write_function(f"{path}/joined", f"""
# Ici : dans tous les cas, tuer la personne qui join
function {path}/death
""")

	# /death
	write_function(f"{path}/death", """
scoreboard players set @s switch.alive 0
gamemode spectator @s
execute unless score #process_end switch.data matches 1 at @n[type=marker,tag=switch.selected_map] run tp @s ~ ~ ~ ~ ~
effect clear @s
clear @s
""")

	# /finish
	write_function(f"{path}/finish", f"""
scoreboard players set @s switch.alive -1

scoreboard players operation #minutes switch.data = #boat_race_seconds switch.data
scoreboard players operation #minutes switch.data /= #60 switch.data
scoreboard players operation #seconds switch.data = #boat_race_seconds switch.data
scoreboard players operation #seconds_to_remove switch.data = #minutes switch.data
scoreboard players operation #seconds_to_remove switch.data *= #60 switch.data
scoreboard players operation #seconds switch.data -= #seconds_to_remove switch.data

function {translations}/finish
execute as @a[tag=!detached] at @s run playsound entity.player.levelup ambient @s

gamemode spectator @s
kill @e[type=#minecraft:boat,distance=..1.25,sort=nearest,limit=1]
""")

	# /process_end
	write_function(f"{path}/process_end", f"""
scoreboard players add #process_end switch.data 1

execute if score #process_end switch.data matches 1 as @a[tag=!detached,scores={{switch.alive=-1}}] at @s run function switch:engine/add_win
function {translations}/process_end
execute if score #process_end switch.data matches 1 as @a[tag=!detached,sort=random] run function {path}/death
execute if score #process_end switch.data matches 1 as @a[tag=!detached] run function switch:player/trigger/rating/print_current_game

# Obligatoire
execute if score #process_end switch.data matches 200 run function switch:engine/restart
""")

	# /summon_boat
	write_function(f"{path}/summon_boat", """
summon mangrove_chest_boat
ride @s mount @n[type=mangrove_chest_boat]
""")

	# /xp_bar
	write_function(f"{path}/xp_bar", """
# 480 seconds = 100%
scoreboard players operation #points switch.data = #boat_race_seconds switch.data
scoreboard players operation #points switch.data *= #1000000 switch.data
scoreboard players set #divide switch.data 480000
function switch:modes/_common/xp_bar/points

scoreboard players operation #levels switch.data = #remaining_time switch.data
function switch:modes/_common/xp_bar/levels
""")

