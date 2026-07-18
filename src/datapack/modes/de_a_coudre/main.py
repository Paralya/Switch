
# ruff: noqa: E501
# Imports
from stewbeet import Mem, write_function

from ..common import write_modes_calls, write_time_xp_bar
from .translations import write_translations


def write_mode():
	ns: str = Mem.ctx.project_id
	mode: str = "de_a_coudre"
	path: str = f"{ns}:modes/{mode}"
	translations: str = f"{path}/translations"

	# Write /calls/ and /translations/ functions
	write_modes_calls(mode)
	write_translations()


	# /death
	write_function(f"{path}/death", f"""
function {ns}:translations/common/death_missed_jump

gamemode spectator @s
execute unless score #process_end {ns}.data matches 1 at @n[type=marker,tag={ns}.selected_map] run tp @s ~ ~ ~ ~ ~
effect clear @s
clear @s
""")

	# /define_order
	write_function(f"{path}/define_order", f"""
scoreboard players add #position {ns}.data 1
scoreboard players operation @s {ns}.temp.order = #position {ns}.data
""")

	# /done
	write_function(f"{path}/done", f"""
function {ns}:modes/_common/place_wool_count_sides

execute if score #points {ns}.data matches 5 run setblock ~ ~ ~ emerald_block
execute if score #points {ns}.data matches 5 run summon firework_rocket ~ ~1 ~ {{LifeTime:30,FireworksItem:{{id:"minecraft:firework_rocket",count:1,components:{{"minecraft:fireworks":{{explosions:[{{shape:"burst",has_twinkle:true,has_trail:true,colors:[I;65280]}}]}}}}}}}}
execute if score #points {ns}.data matches 1..4 run summon firework_rocket ~ ~1 ~ {{LifeTime:15,FireworksItem:{{id:"minecraft:firework_rocket",count:1,components:{{"minecraft:fireworks":{{explosions:[{{shape:"burst",has_twinkle:true,has_trail:true,colors:[I;255]}}]}}}}}}}}

execute if score #points {ns}.data matches 5 run scoreboard players set #points {ns}.data 6
execute if score #points {ns}.data matches 6 run scoreboard players add @s {ns}.temp.nb_de_a_coudre 1
execute unless score #test_mode {ns}.data matches 1 if score @s {ns}.temp.nb_de_a_coudre matches 3 run advancement grant @s only {ns}:visible/21
function {translations}/done
scoreboard players operation @s {ns}.temp.points += #points {ns}.data

execute as @a[tag=!detached] at @s run playsound entity.player.levelup ambient @s
gamemode spectator @s
""")

	# /joined
	write_function(f"{path}/joined", f"""
# Reset attributes (like safe_fall_distance)
function {ns}:utils/reset_attributes

# Set player to spectator and handle reconnection
gamemode spectator @s
execute if score #reconnect {ns}.data matches 0 run scoreboard players add #max {ns}.data 1
execute if score #reconnect {ns}.data matches 0 run scoreboard players operation @s {ns}.temp.color = #max {ns}.data
execute if score #reconnect {ns}.data matches 1 run function {path}/death
""")

	# /new_round
	write_function(f"{path}/new_round", f"""
scoreboard players remove #rounds {ns}.data 1
scoreboard players set #next {ns}.data 0
scoreboard players set #position {ns}.data 0
scoreboard players operation #current_round {ns}.data = #max_rounds {ns}.data
scoreboard players operation #current_round {ns}.data -= #rounds {ns}.data
scoreboard players add #current_round {ns}.data 1

execute unless score #rounds {ns}.data matches 0 as @a[tag=!detached,sort=random] run function {path}/define_order
scoreboard players operation #max {ns}.data = #position {ns}.data
function {translations}/new_round
execute unless score #rounds {ns}.data matches 0 as @a[tag=!detached] at @s run playsound entity.ender_dragon.growl ambient @s
""")

	# /next_player
	write_function(f"{path}/next_player", f"""
execute if score #next {ns}.data >= #max {ns}.data run function {path}/new_round
scoreboard players add #next {ns}.data 1

scoreboard players set #success {ns}.data 0
execute as @a[tag=!detached] if score @s {ns}.temp.order = #next {ns}.data run function {path}/next_player_teleport
execute if score #success {ns}.data matches 0 if score #next {ns}.data < #max {ns}.data run function {path}/next_player
""")

	# /next_player_teleport
	write_function(f"{path}/next_player_teleport", f"""
scoreboard players set #success {ns}.data 1

gamemode adventure @s
scoreboard players set #remaining_time {ns}.data 300
execute if data storage {ns}:main {{map:"de_a_coudre_1"}} run tp @s 29034 162 29023 90 0
""")

	# /process_end
	write_function(f"{path}/process_end", f"""
scoreboard players add #process_end {ns}.data 1

execute if score #process_end {ns}.data matches 1 run tag @a remove {ns}.winner
execute if score #process_end {ns}.data matches 1 run scoreboard players set #max {ns}.data 0
execute if score #process_end {ns}.data matches 1 if score #detect_end {ns}.data matches 1 run scoreboard players operation #max {ns}.data > @a[tag=!detached] {ns}.temp.points
execute if score #process_end {ns}.data matches 1 if score #detect_end {ns}.data matches 1 as @a[tag=!detached] if score @s {ns}.temp.points = #max {ns}.data run tag @s add {ns}.winner
execute if score #process_end {ns}.data matches 1 if score #detect_end {ns}.data matches 1 as @a[tag=!detached,tag={ns}.winner] at @s run function {ns}:engine/add_win
function {translations}/process_end
execute if score #process_end {ns}.data matches 1 run tag @a remove {ns}.winner
execute if score #process_end {ns}.data matches 1 run gamemode spectator @a[tag=!detached]
execute if score #process_end {ns}.data matches 1 as @a[tag=!detached] run function {path}/death
execute if score #process_end {ns}.data matches 1 as @a[tag=!detached] run function {ns}:player/trigger/rating/print_current_game

execute if score #process_end {ns}.data matches 200 run function {ns}:engine/restart
""")

	# /second
	write_function(f"{path}/second", f"""
scoreboard players add #de_a_coudre_seconds {ns}.data 1
""")

	# /start
	write_function(f"{path}/start", f"""
effect give @a[tag=!detached] saturation infinite 255 true
function {ns}:utils/set_dynamic_time

## Téléportation des joueurs
function {ns}:utils/choose_map_for {{id:"de_a_coudre", maps:["de_a_coudre_1"]}}

execute in {ns}:game run gamerule minecraft:show_death_messages false
execute in {ns}:game run gamerule minecraft:keep_inventory true


scoreboard players set #de_a_coudre_seconds {ns}.data -1
scoreboard players set #de_a_coudre_ticks {ns}.data 0
scoreboard players set #process_end {ns}.data 0
scoreboard players set #detect_end {ns}.data 0
scoreboard objectives add {ns}.temp.color dummy
scoreboard objectives add {ns}.temp.order dummy
scoreboard objectives add {ns}.temp.points dummy {{"text":"Points","color":"red"}}
scoreboard objectives add {ns}.temp.nb_de_a_coudre dummy
scoreboard objectives setdisplay sidebar {ns}.temp.points

## Order selection
scoreboard players set #position {ns}.data 0
scoreboard players set #next {ns}.data 0
execute as @a[tag=!detached,sort=random] run function {path}/define_order
scoreboard players operation #max {ns}.data = #position {ns}.data
execute as @a[tag=!detached] run scoreboard players operation @s {ns}.temp.color = @s {ns}.temp.order

# Nombre de rounds
scoreboard players set #rounds {ns}.data 8
execute if score #max {ns}.data matches 5..8 run scoreboard players set #rounds {ns}.data 6
execute if score #max {ns}.data matches 9..16 run scoreboard players set #rounds {ns}.data 4
execute if score #max {ns}.data matches 17..24 run scoreboard players set #rounds {ns}.data 3
execute if score #max {ns}.data matches 25..32 run scoreboard players set #rounds {ns}.data 2
execute if score #max {ns}.data matches 33.. run scoreboard players set #rounds {ns}.data 1
scoreboard players operation #max_rounds {ns}.data = #rounds {ns}.data
function {translations}/start

# Teleport all players to the jump place
execute as @a[tag=!detached] run function {path}/next_player_teleport
gamemode spectator @a[tag=!detached]
""")

	# /stop
	write_function(f"{path}/stop", f"""
scoreboard objectives remove {ns}.temp.color
scoreboard objectives remove {ns}.temp.order
scoreboard objectives remove {ns}.temp.points
scoreboard objectives remove {ns}.temp.nb_de_a_coudre
""")

	# /tick
	write_function(f"{path}/tick", f"""
scoreboard players add #de_a_coudre_ticks {ns}.data 1

## Global tick
execute as @e[type=player,tag=!detached,gamemode=adventure,predicate={ns}:in_water] at @s run function {path}/done
function {ns}:utils/on_death_run_function {{function:"{path}/death"}}
execute if score #de_a_coudre_seconds {ns}.data matches 1.. unless score #rounds {ns}.data matches 0 if score #detect_end {ns}.data matches 0 unless entity @a[tag=!detached,gamemode=adventure] if entity @a[tag=!detached] run function {path}/next_player

# XP bar (#remaining_time is in ticks, the displayed levels are in seconds)
scoreboard players operation #remaining_seconds {ns}.data = #remaining_time {ns}.data
scoreboard players operation #remaining_seconds {ns}.data /= #20 {ns}.data
execute if score #remaining_seconds {ns}.data matches ..0 run scoreboard players set #remaining_seconds {ns}.data 0
function {path}/xp_bar
execute if score #remaining_time {ns}.data matches -120.. run scoreboard players remove #remaining_time {ns}.data 1
execute if score #remaining_time {ns}.data matches 0 as @a[tag=!detached,gamemode=adventure] at @s if entity @s[y=190,dy=100] run kill @s
execute if score #remaining_time {ns}.data matches -120 run kill @a[tag=!detached,gamemode=adventure]


## End game
execute if score #detect_end {ns}.data matches 0 if score #rounds {ns}.data matches 0 run scoreboard players set #detect_end {ns}.data 1
execute if score #detect_end {ns}.data matches 0 if score #de_a_coudre_seconds {ns}.data matches 1200.. run scoreboard players set #detect_end {ns}.data 2
execute if score #detect_end {ns}.data matches 1 run function {path}/process_end
""")

	# /xp_bar
	write_time_xp_bar(f"{path}/xp_bar", 300, levels_score="#remaining_seconds")
