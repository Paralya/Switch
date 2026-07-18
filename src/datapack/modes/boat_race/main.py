
# Imports
from stewbeet import Mem, write_function

from ..common import write_modes_calls, write_time_xp_bar
from .translations import write_translations


def write_mode():
	ns: str = Mem.ctx.project_id
	mode: str = "boat_race"
	path: str = f"{ns}:modes/{mode}"
	translations: str = f"{path}/translations"

	# Write /calls/ and /translations/ functions
	write_modes_calls(mode, targets={"joined": f"{ns}:modes/boat_race/death"})
	write_translations()

	# /start
	write_function(f"{path}/start", f"""
# Choose map
scoreboard players set #dont_regenerate {ns}.data 1
function {ns}:utils/choose_map_for {{id:"boat_race", maps:["boat_race_1","boat_race_2"]}}

scoreboard players set @a[tag=!detached] {ns}.alive 1
effect give @a[tag=!detached] saturation infinite 255 true
effect give @a[tag=!detached] weakness infinite 255 true
effect give @a[tag=!detached] resistance infinite 255 true

function {ns}:utils/set_dynamic_time

function {translations}/start

scoreboard players set #remaining_time {ns}.data 488
scoreboard players set #boat_race_seconds {ns}.data -6
scoreboard players set #boat_race_ticks {ns}.data 0
scoreboard players set #process_end {ns}.data 0
scoreboard players set #detect_end {ns}.data 0
""")

	# /stop
	write_function(f"{path}/stop", "\n")

	# /tick
	write_function(f"{path}/tick", f"""
scoreboard players add #boat_race_ticks {ns}.data 1

# Fall in void or unknown death
function {ns}:utils/on_death_run_function {{function:"{path}/death/"}}
execute as @a[scores={{{ns}.alive=1..}}] at @s if entity @s[y=-64,dy=64] run function {path}/death

# Détecte si tous les joueurs ont finis
scoreboard players set #alives {ns}.data 0
scoreboard players set #finished {ns}.data 0
execute store result score #alives {ns}.data if entity @a[scores={{{ns}.alive=-1..}}]
execute store result score #finished {ns}.data if entity @a[scores={{{ns}.alive=-1}}]
execute if score #alives {ns}.data = #finished {ns}.data run scoreboard players set #detect_end {ns}.data 1

execute in {ns}:game as @a[tag=!detached,gamemode=!spectator,scores={{{ns}.alive=1}},x=5033,y=105,z=5000,dx=3,dy=4,dz=4] at @s run function {path}/finish
execute in {ns}:game as @a[tag=!detached,gamemode=!spectator,scores={{{ns}.alive=1}},x=50997,y=92,z=50964,dx=6,dy=4,dz=5] at @s run function {path}/finish

# Prevent leaving boat
execute as @a[tag=!detached,gamemode=adventure] at @s run ride @s mount @n[type=#minecraft:boat,predicate=!shopping_kart:has_player_passenger,distance=..10,sort=nearest,limit=1]

# Fin de la partie si le temps est écoulé, ou qu'ils ont tous finis
execute if score #boat_race_seconds {ns}.data matches 480.. run scoreboard players set #detect_end {ns}.data 1
execute if score #detect_end {ns}.data matches 1 run function {path}/process_end
""")

	# /second
	write_function(f"{path}/second", f"""
scoreboard players add #boat_race_seconds {ns}.data 1
execute if score #remaining_time {ns}.data matches 1.. run scoreboard players remove #remaining_time {ns}.data 1

function {path}/xp_bar
function {translations}/second
execute if score #boat_race_seconds {ns}.data matches -5 as @a[tag=!detached,gamemode=!spectator] at @s run function {path}/summon_boat
execute if score #boat_race_seconds {ns}.data matches 0 in {ns}:game run fill 5026 100 5007 5026 100 4997 air
execute if score #boat_race_seconds {ns}.data matches 0 in {ns}:game run fill 51029 139 51036 51042 139 51036 air
execute if score #boat_race_seconds {ns}.data matches ..-1 in {ns}:game run fill 5026 100 5007 5026 100 4997 quartz_slab
execute if score #boat_race_seconds {ns}.data matches ..-1 in {ns}:game run fill 51029 139 51036 51042 139 51036 quartz_slab

# Clear des anciens mobs si il y en a
execute if score #boat_race_seconds {ns}.data matches ..-7 run function {ns}:utils/safe_kill_macro {{selector:"@e[type=#minecraft:boat]"}}
""")

	# /death
	write_function(f"{path}/death", f"""
scoreboard players set @s {ns}.alive 0
gamemode spectator @s
execute unless score #process_end {ns}.data matches 1 at @n[type=marker,tag={ns}.selected_map] run tp @s ~ ~ ~ ~ ~
effect clear @s
clear @s
""")

	# /finish
	write_function(f"{path}/finish", f"""
scoreboard players set @s {ns}.alive -1

scoreboard players operation #minutes {ns}.data = #boat_race_seconds {ns}.data
scoreboard players operation #minutes {ns}.data /= #60 {ns}.data
scoreboard players operation #seconds {ns}.data = #boat_race_seconds {ns}.data
scoreboard players operation #seconds_to_remove {ns}.data = #minutes {ns}.data
scoreboard players operation #seconds_to_remove {ns}.data *= #60 {ns}.data
scoreboard players operation #seconds {ns}.data -= #seconds_to_remove {ns}.data

function {translations}/finish
execute as @a[tag=!detached] at @s run playsound entity.player.levelup ambient @s

gamemode spectator @s
kill @e[type=#minecraft:boat,distance=..1.25,sort=nearest,limit=1]
""")

	# /process_end
	write_function(f"{path}/process_end", f"""
scoreboard players add #process_end {ns}.data 1

execute if score #process_end {ns}.data matches 1 as @a[tag=!detached,scores={{{ns}.alive=-1}}] at @s run function {ns}:engine/add_win
function {translations}/process_end
execute if score #process_end {ns}.data matches 1 as @a[tag=!detached,sort=random] run function {path}/death
execute if score #process_end {ns}.data matches 1 as @a[tag=!detached] run function {ns}:player/trigger/rating/print_current_game

# Obligatoire
execute if score #process_end {ns}.data matches 200 run function {ns}:engine/restart
""")

	# /summon_boat
	write_function(f"{path}/summon_boat", """
summon mangrove_chest_boat
ride @s mount @n[type=mangrove_chest_boat]
""")

	# /xp_bar
	write_time_xp_bar(f"{path}/xp_bar", 480, "#boat_race_seconds")

