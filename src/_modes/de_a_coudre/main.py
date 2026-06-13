
# Imports
from stewbeet import Mem, write_function
from ..common import write_modes_calls
from .translations import write_translations


def write_mode():
	ns: str = Mem.ctx.project_id
	mode: str = "de_a_coudre"
	path: str = f"{ns}:modes/{mode}"
	translations: str = f"{path}/translations"

	# Write /calls/ and /translations/ functions
	write_modes_calls(mode)
	write_translations()

	# /_force_start
	write_function(f"{path}/_force_start", f"""
function switch:engine/force_start_macro {{id:"{mode}"}}
""")

	# /death
	write_function(f"{path}/death", """
function switch:translations/common/death_missed_jump

gamemode spectator @s
execute unless score #process_end switch.data matches 1 at @n[type=marker,tag=switch.selected_map] run tp @s ~ ~ ~ ~ ~
effect clear @s
clear @s
""")

	# /define_order
	write_function(f"{path}/define_order", """
scoreboard players add #position switch.data 1
scoreboard players operation @s switch.temp.order = #position switch.data
""")

	# /done
	write_function(f"{path}/done", f"""
scoreboard players operation #block switch.data = @s switch.temp.color
function switch:modes/_common/set_wool_color

scoreboard players set #points switch.data 1
execute positioned ~-1 ~ ~ unless block ~ ~ ~ water unless block ~ ~ ~ air run scoreboard players add #points switch.data 1
execute positioned ~ ~ ~-1 unless block ~ ~ ~ water unless block ~ ~ ~ air run scoreboard players add #points switch.data 1
execute positioned ~ ~ ~1 unless block ~ ~ ~ water unless block ~ ~ ~ air run scoreboard players add #points switch.data 1
execute positioned ~1 ~ ~ unless block ~ ~ ~ water unless block ~ ~ ~ air run scoreboard players add #points switch.data 1

execute if score #points switch.data matches 5 run setblock ~ ~ ~ emerald_block
execute if score #points switch.data matches 5 run summon firework_rocket ~ ~1 ~ {{LifeTime:30,FireworksItem:{{id:"minecraft:firework_rocket",count:1,components:{{"minecraft:fireworks":{{explosions:[{{shape:"burst",has_twinkle:true,has_trail:true,colors:[I;65280]}}]}}}}}}}}
execute if score #points switch.data matches 1..4 run summon firework_rocket ~ ~1 ~ {{LifeTime:15,FireworksItem:{{id:"minecraft:firework_rocket",count:1,components:{{"minecraft:fireworks":{{explosions:[{{shape:"burst",has_twinkle:true,has_trail:true,colors:[I;255]}}]}}}}}}}}

execute if score #points switch.data matches 5 run scoreboard players set #points switch.data 6
execute if score #points switch.data matches 6 run scoreboard players add @s switch.temp.nb_de_a_coudre 1
execute unless score #test_mode switch.data matches 1 if score @s switch.temp.nb_de_a_coudre matches 3 run advancement grant @s only switch:visible/21
function {translations}/done
scoreboard players operation @s switch.temp.points += #points switch.data

execute as @a[tag=!detached] at @s run playsound entity.player.levelup ambient @s
gamemode spectator @s
""")

	# /joined
	write_function(f"{path}/joined", f"""
# Reset attributes (like safe_fall_distance)
function switch:utils/reset_attributes

# Set player to spectator and handle reconnection
gamemode spectator @s
execute if score #reconnect switch.data matches 0 run scoreboard players add #max switch.data 1
execute if score #reconnect switch.data matches 0 run scoreboard players operation @s switch.temp.color = #max switch.data
execute if score #reconnect switch.data matches 1 run function {path}/death
""")

	# /new_round
	write_function(f"{path}/new_round", f"""
scoreboard players remove #rounds switch.data 1
scoreboard players set #next switch.data 0
scoreboard players set #position switch.data 0
scoreboard players operation #current_round switch.data = #max_rounds switch.data
scoreboard players operation #current_round switch.data -= #rounds switch.data
scoreboard players add #current_round switch.data 1

execute unless score #rounds switch.data matches 0 as @a[tag=!detached,sort=random] run function {path}/define_order
scoreboard players operation #max switch.data = #position switch.data
function {translations}/new_round
execute unless score #rounds switch.data matches 0 as @a[tag=!detached] at @s run playsound entity.ender_dragon.growl ambient @s
""")

	# /next_player
	write_function(f"{path}/next_player", f"""
execute if score #next switch.data >= #max switch.data run function {path}/new_round
scoreboard players add #next switch.data 1

scoreboard players set #success switch.data 0
execute as @a[tag=!detached] if score @s switch.temp.order = #next switch.data run function {path}/next_player_teleport
execute if score #success switch.data matches 0 if score #next switch.data < #max switch.data run function {path}/next_player
""")

	# /next_player_teleport
	write_function(f"{path}/next_player_teleport", """
scoreboard players set #success switch.data 1

gamemode adventure @s
scoreboard players set #remaining_time switch.data 300
execute if data storage switch:main {map:"de_a_coudre_1"} run tp @s 29034 162 29023 90 0
""")

	# /process_end
	write_function(f"{path}/process_end", f"""
scoreboard players add #process_end switch.data 1

execute if score #process_end switch.data matches 1 run tag @a remove switch.winner
execute if score #process_end switch.data matches 1 run scoreboard players set #max switch.data 0
execute if score #process_end switch.data matches 1 if score #detect_end switch.data matches 1 run scoreboard players operation #max switch.data > @a[tag=!detached] switch.temp.points
execute if score #process_end switch.data matches 1 if score #detect_end switch.data matches 1 as @a[tag=!detached] if score @s switch.temp.points = #max switch.data run tag @s add switch.winner
execute if score #process_end switch.data matches 1 if score #detect_end switch.data matches 1 as @a[tag=!detached,tag=switch.winner] at @s run function switch:engine/add_win
function {translations}/process_end
execute if score #process_end switch.data matches 1 run tag @a remove switch.winner
execute if score #process_end switch.data matches 1 run gamemode spectator @a[tag=!detached]
execute if score #process_end switch.data matches 1 as @a[tag=!detached] run function {path}/death
execute if score #process_end switch.data matches 1 as @a[tag=!detached] run function switch:player/trigger/rating/print_current_game

execute if score #process_end switch.data matches 200 run function switch:engine/restart
""")

	# /second
	write_function(f"{path}/second", """
scoreboard players add #de_a_coudre_seconds switch.data 1
""")

	# /start
	write_function(f"{path}/start", f"""
effect give @a[tag=!detached] saturation infinite 255 true
function switch:utils/set_dynamic_time

## Téléportation des joueurs
function switch:utils/choose_map_for {{id:"de_a_coudre", maps:["de_a_coudre_1"]}}

execute in switch:game run gamerule minecraft:show_death_messages false
execute in switch:game run gamerule minecraft:keep_inventory true


scoreboard players set #de_a_coudre_seconds switch.data -9
scoreboard players set #de_a_coudre_ticks switch.data 0
scoreboard players set #process_end switch.data 0
scoreboard players set #detect_end switch.data 0
scoreboard objectives add switch.temp.color dummy
scoreboard objectives add switch.temp.order dummy
scoreboard objectives add switch.temp.points dummy {{"text":"Points","color":"red"}}
scoreboard objectives add switch.temp.nb_de_a_coudre dummy
scoreboard objectives setdisplay sidebar switch.temp.points

## Order selection
scoreboard players set #position switch.data 0
scoreboard players set #next switch.data 0
execute as @a[tag=!detached,sort=random] run function {path}/define_order
scoreboard players operation #max switch.data = #position switch.data
execute as @a[tag=!detached] run scoreboard players operation @s switch.temp.color = @s switch.temp.order

# Nombre de rounds
scoreboard players set #rounds switch.data 8
execute if score #max switch.data matches 5..8 run scoreboard players set #rounds switch.data 6
execute if score #max switch.data matches 9..16 run scoreboard players set #rounds switch.data 4
execute if score #max switch.data matches 17..24 run scoreboard players set #rounds switch.data 3
execute if score #max switch.data matches 25..32 run scoreboard players set #rounds switch.data 2
execute if score #max switch.data matches 33.. run scoreboard players set #rounds switch.data 1
scoreboard players operation #max_rounds switch.data = #rounds switch.data
function {translations}/start

# Teleport all players to the jump place
execute as @a[tag=!detached] run function {path}/next_player_teleport
gamemode spectator @a[tag=!detached]
""")

	# /stop
	write_function(f"{path}/stop", """
scoreboard objectives remove switch.temp.color
scoreboard objectives remove switch.temp.order
scoreboard objectives remove switch.temp.points
scoreboard objectives remove switch.temp.nb_de_a_coudre
""")

	# /tick
	write_function(f"{path}/tick", f"""
scoreboard players add #de_a_coudre_ticks switch.data 1

## Global tick
execute as @e[type=player,tag=!detached,gamemode=adventure,predicate=switch:in_water] at @s run function {path}/done
function switch:utils/on_death_run_function {{function:"{path}/death"}}
execute if score #de_a_coudre_seconds switch.data matches 1.. unless score #rounds switch.data matches 0 if score #detect_end switch.data matches 0 unless entity @a[tag=!detached,gamemode=adventure] if entity @a[tag=!detached] run function {path}/next_player

# XP bar
function {path}/xp_bar
execute if score #remaining_time switch.data matches -120.. run scoreboard players remove #remaining_time switch.data 1
execute if score #remaining_time switch.data matches 0 as @a[tag=!detached,gamemode=adventure] at @s if entity @s[y=190,dy=100] run kill @s
execute if score #remaining_time switch.data matches -120 run kill @a[tag=!detached,gamemode=adventure]


## End game
execute if score #detect_end switch.data matches 0 if score #rounds switch.data matches 0 run scoreboard players set #detect_end switch.data 1
execute if score #detect_end switch.data matches 0 if score #de_a_coudre_seconds switch.data matches 1200.. run scoreboard players set #detect_end switch.data 2
execute if score #detect_end switch.data matches 1 run function {path}/process_end
""")

	# /xp_bar
	write_function(f"{path}/xp_bar", """
# 15 seconds = 100%	(function runned every tick so 15s = 300 ticks)
# 0 seconds = 0%
scoreboard players operation #points switch.data = #remaining_time switch.data
scoreboard players operation #points switch.data *= #1000000 switch.data
scoreboard players set #divide switch.data 300000
function switch:modes/_common/xp_bar/points

scoreboard players operation #levels switch.data = #remaining_time switch.data
scoreboard players operation #levels switch.data /= #20 switch.data
function switch:modes/_common/xp_bar/levels
""")
