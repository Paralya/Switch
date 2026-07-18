
# Imports
from stewbeet import Mem, write_function

from ..common import write_modes_calls, write_time_xp_bar
from .translations import write_translations


def write_mode():
	ns: str = Mem.ctx.project_id
	mode: str = "shoot_da_sheep"
	path: str = f"{ns}:modes/{mode}"
	translations: str = f"{path}/translations"

	# Write /calls/ and /translations/ functions
	write_modes_calls(mode, targets={"joined": f"{ns}:utils/classic_death"})
	write_translations()


	# /on_new_sheep
	write_function(f"{path}/on_new_sheep", f"""
# Add absorption to prevent killing, NoGravity, and remove loot table
attribute @s max_absorption base set 2048.0
data modify entity @s AbsorptionAmount set value 2048.0f
data modify entity @s DeathLootTable set value "empty"
data modify entity @s NoGravity set value 1b

# Choose a random color
execute store result score #color {ns}.data run random value 0..15
execute store result entity @s Color byte 1 run scoreboard players get #color {ns}.data
execute if score #color {ns}.data matches 0 run data modify entity @s CustomName set value {{"text":"+1 point","color":"gray"}}
execute if score #color {ns}.data matches 1 run data modify entity @s CustomName set value {{"text":"+1 point","color":"gray"}}
execute if score #color {ns}.data matches 2 run data modify entity @s CustomName set value {{"text":"+1 point","color":"gray"}}
execute if score #color {ns}.data matches 3 run data modify entity @s CustomName set value {{"text":"+1 point","color":"gray"}}
execute if score #color {ns}.data matches 4 run data modify entity @s CustomName set value {{"text":"+2 points","color":"aqua"}}
execute if score #color {ns}.data matches 5 run data modify entity @s CustomName set value {{"text":"+2 points","color":"aqua"}}
execute if score #color {ns}.data matches 6 run data modify entity @s CustomName set value {{"text":"+3 points","color":"aqua"}}
execute if score #color {ns}.data matches 7 run data modify entity @s CustomName set value {{"text":"+3 points","color":"aqua"}}
execute if score #color {ns}.data matches 8 run data modify entity @s CustomName set value {{"text":"+4 points","color":"yellow"}}
execute if score #color {ns}.data matches 9 run data modify entity @s CustomName set value {{"text":"+4 points","color":"yellow"}}
execute if score #color {ns}.data matches 10 run data modify entity @s CustomName set value {{"text":"+6 points","color":"yellow"}}
execute if score #color {ns}.data matches 11 run data modify entity @s CustomName set value {{"text":"+6 points","color":"yellow"}}
execute if score #color {ns}.data matches 12 run data modify entity @s CustomName set value {{"text":"+8 points","color":"gold"}}
execute if score #color {ns}.data matches 13 run data modify entity @s CustomName set value {{"text":"+8 points","color":"gold"}}
execute if score #color {ns}.data matches 14 run data modify entity @s CustomName set value {{"text":"+10 points","color":"red"}}
execute if score #color {ns}.data matches 15 run data modify entity @s CustomName set value {{"text":"-50% points","color":"black"}}
data modify entity @s CustomNameVisible set value 1b

# Spreadplayer
spreadplayers ~ ~ 10 10 false @s
execute at @s run tp @s ~ ~-5 ~
""")

	# /process_end
	write_function(f"{path}/process_end", f"""
scoreboard players add #process_end {ns}.data 1

function {ns}:modes/_common/process_end/winner_by_points
execute if score #process_end {ns}.data matches 1 run clear @a[tag=!detached]
execute if score #process_end {ns}.data matches 1 run gamemode spectator @a[tag=!detached]
execute if score #process_end {ns}.data matches 1 as @a[tag=!detached] run function {ns}:player/trigger/rating/print_current_game
execute if score #process_end {ns}.data matches 200 run function {ns}:engine/restart
""")

	# /reward
	write_function(f"{path}/reward", f"""
execute if score #color {ns}.data matches 0..3 run scoreboard players add @s {ns}.temp.points 1
execute if score #color {ns}.data matches 4..5 run scoreboard players add @s {ns}.temp.points 2
execute if score #color {ns}.data matches 6..7 run scoreboard players add @s {ns}.temp.points 3
execute if score #color {ns}.data matches 8..9 run scoreboard players add @s {ns}.temp.points 4
execute if score #color {ns}.data matches 10..11 run scoreboard players add @s {ns}.temp.points 6
execute if score #color {ns}.data matches 12..13 run scoreboard players add @s {ns}.temp.points 8
execute if score #color {ns}.data matches 14 run scoreboard players add @s {ns}.temp.points 10
execute if score #color {ns}.data matches 15 run scoreboard players operation @s {ns}.temp.points /= #2 {ns}.data
function {translations}/reward
execute at @s run playsound entity.experience_orb.pickup ambient @s ~ ~ ~ 1 2

# Advancement
execute if score #color {ns}.data matches 15 run scoreboard players add @s {ns}.temp.black_shot 1
execute unless score #test_mode {ns}.data matches 1 if score @s {ns}.temp.black_shot matches 3.. run advancement grant @s only {ns}:visible/63
""")

	# /second
	write_function(f"{path}/second", f"""
scoreboard players add #shoot_da_sheep_seconds {ns}.data 1
execute if score #remaining_time {ns}.data matches 0.. run scoreboard players remove #remaining_time {ns}.data 1

# Summon sheep every second
execute as @a[predicate={ns}:chance/0.5] if score #shoot_da_sheep_seconds {ns}.data matches 0.. in {ns}:game run function {path}/summon_sheep

# XP bar update
function {path}/xp_bar
""")

	# /sheep_tick
	write_function(f"{path}/sheep_tick", f"""
# Go down until a block is found
tp @s ~ ~-0.25 ~
execute unless block ~ ~-1 ~ air run function {ns}:utils/safe_kill

# If the sheep is hurt, kill it and call the reward function to the player
execute unless data entity @s {{HurtTime:0s}} store result score #color {ns}.data run data get entity @s Color
execute unless data entity @s {{HurtTime:0s}} on attacker run function {path}/reward
execute unless data entity @s {{HurtTime:0s}} run function {ns}:utils/safe_kill

""")

	# /start (translation ref rewritten)
	write_function(f"{path}/start", f"""
team join {ns}.no_pvp @a[tag=!detached]
effect give @a[tag=!detached] saturation infinite 255 true
function {ns}:utils/set_dynamic_time

## Téléportation des joueurs
function {ns}:utils/choose_map_for {{id:"shoot_da_sheep", maps:["shoot_da_sheep"]}}
execute as @a[tag=!detached] run function {ns}:maps/survival/shoot_da_sheep/tp_shoot_da_sheep

function {ns}:modes/shoot_da_sheep/translations/start

scoreboard players set #shoot_da_sheep_seconds {ns}.data -1
scoreboard players set #shoot_da_sheep_ticks {ns}.data 0
scoreboard players set #remaining_time {ns}.data 65
scoreboard players set #process_end {ns}.data 0
scoreboard objectives add {ns}.temp.points dummy {{"text":"Points","color":"red"}}
scoreboard objectives add {ns}.temp.black_shot dummy
scoreboard objectives setdisplay sidebar {ns}.temp.points

give @a[tag=!detached] bow[unbreakable={{}},enchantments={{infinity:10}}]
give @a[tag=!detached] arrow
""")

	# /stop
	write_function(f"{path}/stop", f"""
scoreboard objectives remove {ns}.temp.points
scoreboard objectives remove {ns}.temp.black_shot
""")

	# /summon_sheep
	write_function(f"{path}/summon_sheep", f"""
# Summon at the marker location
execute unless score #process_end {ns}.data matches 1 positioned 123020 2048 123020 summon sheep run function {path}/on_new_sheep
""")

	# /tick
	write_function(f"{path}/tick", f"""
# Sheep tick
scoreboard players add #shoot_da_sheep_ticks {ns}.data 1
execute as @e[type=sheep] at @s run function {path}/sheep_tick

# Unknown death
function {ns}:utils/on_death_run_function {{function:"{ns}:utils/classic_death"}}

## End game
execute if score #remaining_time {ns}.data matches ..0 run function {path}/process_end
""")

	# /xp_bar
	write_time_xp_bar(f"{path}/xp_bar", 60)
