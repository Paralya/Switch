
# ruff: noqa: E501
# Imports
from stewbeet import Mem, write_function

from ..common import write_modes_calls
from .translations import write_translations


def write_mode():
	ns: str = Mem.ctx.project_id
	mode: str = "bombardement"
	path: str = f"{ns}:modes/{mode}"
	translations: str = f"{path}/translations"

	# Write /calls/ and /translations/ functions
	write_modes_calls(mode)
	write_translations()

	# /start
	write_function(f"{path}/start", f"""
time set 6000
effect give @a[tag=!detached] weakness infinite 255 true
effect give @a[tag=!detached] saturation infinite 255 true

## Téléportation des joueurs
scoreboard players set #do_spreadplayers switch.data 0
function switch:utils/choose_map_for {{id:"bombardement", maps:["bombardement"]}}
function {translations}/start
tp @a[tag=!detached] 121057 109 121064 180 -30

scoreboard players set #bombardement_seconds switch.data -12
scoreboard players set #bombardement_ticks switch.data 0
scoreboard players set #process_end switch.data 0

execute if data storage switch:records bombardement run function {path}/record_tellraw with storage switch:records bombardement
""")

	# /stop
	write_function(f"{path}/stop", "\n")

	# /tick
	write_function(f"{path}/tick", f"""
# Death system
execute if score #bombardement_seconds switch.data matches ..-1 in switch:game run tp @a[tag=!detached,gamemode=!spectator,predicate=switch:in_water] 121057 110 121064 180 -30
execute if score #bombardement_seconds switch.data matches 42.. unless score #test_mode switch.data matches 1 run advancement grant @a[tag=!detached,gamemode=!spectator,predicate=switch:in_water] only switch:visible/75
execute if score #bombardement_seconds switch.data matches 0.. as @a[tag=!detached,gamemode=!spectator,predicate=switch:in_water] at @s run function {path}/death
function switch:utils/on_death_run_function {{function:"{path}/death"}}

# Ball tick
execute as @e[type=armor_stand,tag=switch.ball] at @s run function {path}/ball_tick

# End game
scoreboard players set #remaining_players switch.data 0
execute store result score #remaining_players switch.data if entity @a[tag=!detached,gamemode=!spectator]
execute if score #bombardement_seconds switch.data matches 1.. if score #remaining_players switch.data matches ..1 run function {path}/process_end
""")

	# /second
	write_function(f"{path}/second", f"""
# Classic timer
scoreboard players add #bombardement_seconds switch.data 1
function {path}/xp_bar

# Bombardment
execute if score #bombardement_seconds switch.data matches 0 run function {path}/summon
execute if score #bombardement_seconds switch.data matches 5 run function {path}/summon
execute if score #bombardement_seconds switch.data matches 8 run function {path}/summon
execute if score #bombardement_seconds switch.data matches 11 run function {path}/summon
execute if score #bombardement_seconds switch.data matches 15 run function {path}/summon
execute if score #bombardement_seconds switch.data matches 17 run function {path}/summon
execute if score #bombardement_seconds switch.data matches 19 run function {path}/summon
execute if score #bombardement_seconds switch.data matches 20.. run function {path}/summon
execute if score #bombardement_seconds switch.data matches 30.. run function {path}/summon
execute if score #bombardement_seconds switch.data matches 40.. run function {path}/summon
execute if score #bombardement_seconds switch.data matches 50.. run function {path}/summon
execute if score #bombardement_seconds switch.data matches 60.. run function {path}/summon
execute if score #bombardement_seconds switch.data matches 70.. run function {path}/summon
execute if score #bombardement_seconds switch.data matches 80.. run function {path}/summon
execute if score #bombardement_seconds switch.data matches 90.. run function {path}/summon
execute if score #bombardement_seconds switch.data matches 100.. run function {path}/summon
execute if score #bombardement_seconds switch.data matches 110.. run function {path}/summon
execute if score #bombardement_seconds switch.data matches 120.. run function {path}/summon
execute if score #bombardement_seconds switch.data matches 130.. run function {path}/summon
execute if score #bombardement_seconds switch.data matches 140.. run function {path}/summon
execute if score #bombardement_seconds switch.data matches 150.. run function {path}/summon
execute if score #bombardement_seconds switch.data matches 160.. run function {path}/summon
execute if score #bombardement_seconds switch.data matches 170.. run function {path}/summon
execute if score #bombardement_seconds switch.data matches 180.. run function {path}/summon
execute if score #bombardement_seconds switch.data matches 190.. run function {path}/summon
execute if score #bombardement_seconds switch.data matches 200.. run function {path}/summon

execute if score #bombardement_seconds switch.data matches 60 unless score #test_mode switch.data matches 1 run advancement grant @a[tag=!detached,gamemode=adventure] only switch:visible/37
""")

	# /joined
	write_function(f"{path}/joined", f"""
gamemode spectator @s
function {path}/death
""")

	# /death
	write_function(f"{path}/death", f"""
execute unless score #test_mode switch.data matches 1 if entity @s[gamemode=!spectator] unless block ~ ~ ~ water if score #bombardement_seconds switch.data matches 0..5 run advancement grant @s only switch:visible/79
function {translations}/death
execute if entity @s[gamemode=!spectator] run scoreboard players add @s switch.stats.deaths 1

gamemode spectator @s
execute unless score #process_end switch.data matches 1 at @n[type=marker,tag=switch.selected_map] run tp @s ~ ~ ~ ~ ~
effect clear @s
clear @s
""")

	# /explode
	write_function(f"{path}/explode", f"""
particle explosion ~ ~ ~ .25 .25 .25 1 5
playsound switch:explosion ambient @a[tag=!detached] ~ ~ ~ 0.5
execute as @a[tag=!detached,gamemode=!spectator,distance=..1.5] at @s run function {path}/death
execute on passengers run kill @s
kill @s
""")

	# /ball_tick
	write_function(f"{path}/ball_tick", f"""
tp @s ^ ^ ^1
particle ash ~ ~.5 ~ .5 .5 .5 0.01 5 force @a[tag=!detached,distance=..100]
particle flame ~ ~.5 ~ .5 .5 .5 0.01 2 force @a[tag=!detached,distance=..100]
particle smoke ~ ~.5 ~ .5 .5 .5 0.01 2 force @a[tag=!detached,distance=..100]
execute if block ~ ~ ~ air as @a[tag=!detached,gamemode=!spectator,distance=..1.5] at @s run function {path}/death
execute unless block ~ ~ ~ air run function {path}/explode
""")

	# /summon
	write_function(f"{path}/summon", """
# Summon the canon ball
execute store result score #random switch.data run random value 1..3
execute if score #random switch.data matches 1 run summon armor_stand 121054 132 121026 {NoGravity:true,Silent:true,Invulnerable:true,Invisible:true,Tags:["switch.ball","switch.new"],Passengers:[{id:"item_display",transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,-1.5f,0f],scale:[1f,1f,1f]},item:{id:"magma_block",count:1}}]}
execute if score #random switch.data matches 2 run summon armor_stand 121057 132 121026 {NoGravity:true,Silent:true,Invulnerable:true,Invisible:true,Tags:["switch.ball","switch.new"],Passengers:[{id:"item_display",transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,-1.5f,0f],scale:[1f,1f,1f]},item:{id:"magma_block",count:1}}]}
execute if score #random switch.data matches 3 run summon armor_stand 121060 132 121026 {NoGravity:true,Silent:true,Invulnerable:true,Invisible:true,Tags:["switch.ball","switch.new"],Passengers:[{id:"item_display",transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,-1.5f,0f],scale:[1f,1f,1f]},item:{id:"magma_block",count:1}}]}
execute if score #random switch.data matches 1 positioned 121054 132 121026 run particle explosion_emitter ~ ~ ~ 0 0 0 1 1 force @a[tag=!detached,distance=..100]
execute if score #random switch.data matches 2 positioned 121057 132 121026 run particle explosion_emitter ~ ~ ~ 0 0 0 1 1 force @a[tag=!detached,distance=..100]
execute if score #random switch.data matches 3 positioned 121060 132 121026 run particle explosion_emitter ~ ~ ~ 0 0 0 1 1 force @a[tag=!detached,distance=..100]
execute positioned 121057 132 121026 run playsound switch:explosion ambient @a[tag=!detached] ~ ~ ~ 1 1

# Get a random position
summon marker 121057 109 121064 {Tags:["switch.temp"]}
execute as @e[type=marker,tag=switch.temp] at @s run spreadplayers ~ ~ 0 15 under 150 false @s
execute as @e[type=marker,tag=switch.temp] at @s run tp @s ~ ~ ~-0.5
execute if predicate switch:chance/0.25 run tp @e[type=marker,tag=switch.temp] @r[tag=!detached,gamemode=!spectator]

# Face the random position
execute as @e[type=armor_stand,tag=switch.new] at @s facing entity @e[type=marker,tag=switch.temp] feet run tp @s ^ ^ ^1 ~ ~
tag @e[type=armor_stand,tag=switch.new] remove switch.new

# Kill the random position
kill @e[type=marker,tag=switch.temp]
""")

	# /process_end
	write_function(f"{path}/process_end", f"""
scoreboard players add #process_end switch.data 1

execute if score #process_end switch.data matches 1 if score #remaining_players switch.data matches 1 as @a[tag=!detached,gamemode=!spectator] at @s run function switch:engine/add_win
execute if score #process_end switch.data matches 1 if score #remaining_players switch.data matches 1 as @a[tag=!detached,gamemode=!spectator] run function {path}/record_save
function switch:translations/common/process_end_solo_winner
execute if score #process_end switch.data matches 1 run gamemode spectator @a[tag=!detached]
execute if score #process_end switch.data matches 1 as @a[tag=!detached] run function {path}/death
execute if score #process_end switch.data matches 1 as @a[tag=!detached] run function switch:player/trigger/rating/print_current_game

execute if score #process_end switch.data matches 200 run function switch:engine/restart
""")

	# /record_save
	write_function(f"{path}/record_save", f"""
loot replace entity @s hotbar.0 loot switch:get_username
scoreboard players set #record switch.data 0
execute store result score #record switch.data run data get storage switch:records bombardement.seconds
execute if score #bombardement_seconds switch.data > #record switch.data store result storage switch:records bombardement.seconds int 1 run scoreboard players get #bombardement_seconds switch.data
execute if score #bombardement_seconds switch.data > #record switch.data run data modify storage switch:records bombardement.player set from entity @s Inventory[0].components."minecraft:profile".name
execute if score #bombardement_seconds switch.data > #record switch.data as @a[tag=!detached] at @s run playsound ui.toast.challenge_complete ambient @s ~ ~ ~ 0.5
execute if score #bombardement_seconds switch.data > #record switch.data run function {path}/record_tellraw with storage switch:records bombardement
""")

	# /record_tellraw
	write_function(f"{path}/record_tellraw", f"""
function {translations}/record_tellraw with storage switch:records bombardement
scoreboard players reset #record switch.data
""")

	# /xp_bar
	write_function(f"{path}/xp_bar", """
scoreboard players operation #levels switch.data = #bombardement_seconds switch.data
function switch:modes/_common/xp_bar/levels
""")

