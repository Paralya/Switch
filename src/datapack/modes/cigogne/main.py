
# ruff: noqa: E501
# Imports
from stewbeet import Mem, write_function

from ..common import write_classic_death, write_modes_calls, write_time_xp_bar
from .translations import write_translations


def write_mode():
	ns: str = Mem.ctx.project_id
	mode: str = "cigogne"
	path: str = f"{ns}:modes/{mode}"
	translations: str = f"{path}/translations"

	# Write /calls/ and /translations/ functions
	write_modes_calls(mode)
	write_translations()


	# /absorption
	write_function(f"{path}/absorption", """
effect clear @s absorption
effect give @s absorption 120 0 true
""")

	# /death
	write_classic_death(f"{path}/death")

	# /give_items
	write_function(f"{path}/give_items", """
attribute @s attack_speed base set 1024
item replace entity @s hotbar.0 with golden_apple 4
item replace entity @s hotbar.2 with iron_sword[enchantments={fire_aspect:1}]
item replace entity @s hotbar.4 with bow[enchantments={flame:1}]
item replace entity @s hotbar.8 with arrow 32
""")

	# /joined
	write_function(f"{path}/joined", f"""
function {path}/death
""")

	# /killed_player
	write_function(f"{path}/killed_player", """
advancement revoke @s only switch:cigogne/killed_player
execute if score #engine_state switch.data matches 3 if data storage switch:main {current_game:"cigogne"} run give @s golden_apple 3
""")

	# /process_end
	write_function(f"{path}/process_end", f"""
function switch:modes/_common/process_end/winner_by_health {{death:"{path}/death"}}

# Advancement
execute if score #process_end switch.data matches 1 run scoreboard players set #max switch.data 0
execute if score #process_end switch.data matches 1 run scoreboard players operation #max switch.data > @a[tag=!detached,scores={{switch.temp.kill=1..}}] switch.temp.kill
execute if score #process_end switch.data matches 1 unless score #test_mode switch.data matches 1 as @a[tag=!detached,scores={{switch.temp.kill=1..}}] if score #max switch.data = @s switch.temp.kill run advancement grant @s only switch:visible/23

execute if score #process_end switch.data matches 200 run function switch:engine/restart
""")

	# /second
	write_function(f"{path}/second", f"""
# Classic timer
scoreboard players add #cigogne_seconds switch.data 1
scoreboard players remove #remaining_time switch.data 1
function {path}/xp_bar

# Kill reward
give @a[tag=!detached,gamemode=!spectator,scores={{switch.temp.playerKill=1..}}] golden_apple 4
scoreboard players reset @a[scores={{switch.temp.playerKill=1..}}] switch.temp.playerKill

# Glowing
execute if score #cigogne_seconds switch.data matches 180.. run effect give @a[tag=!detached,gamemode=!spectator] glowing infinite 255 true
""")

	# /start
	write_function(f"{path}/start", f"""
gamemode survival @a[tag=!detached]
effect give @a[tag=!detached] weakness 10 255 true
effect give @a[tag=!detached] saturation 10 255 true
effect give @a[tag=!detached] resistance 10 255 true
effect give @a[tag=!detached] regeneration 10 255 true
effect give @a[tag=!detached] speed infinite 1 true
effect give @a[tag=!detached] jump_boost infinite 2 true
effect give @a[tag=!detached] invisibility infinite 255 true
function switch:utils/set_dynamic_time

## Téléportation des joueurs
scoreboard players set #do_spreadplayers switch.data 1
function switch:utils/choose_map_for {{id:"cigogne", maps:["cigogne"]}}

execute in switch:game run gamerule minecraft:natural_health_regeneration false
execute in switch:game run gamerule minecraft:keep_inventory true

function {translations}/start

scoreboard players set #remaining_time switch.data 910
scoreboard players set #cigogne_seconds switch.data -10
scoreboard players set #cigogne_ticks switch.data 0
scoreboard players set #process_end switch.data 0
scoreboard objectives add switch.temp.kill playerKillCount
scoreboard objectives add switch.temp.playerKill playerKillCount
scoreboard objectives add switch.temp.sneak dummy
scoreboard objectives setdisplay list switch.health

execute as @a[tag=!detached] run function {path}/give_items
""")

	# /stop
	write_function(f"{path}/stop", """
scoreboard objectives remove switch.temp.kill
scoreboard objectives remove switch.temp.playerKill
scoreboard objectives remove switch.temp.sneak
""")

	# /tick
	write_function(f"{path}/tick", f"""
scoreboard players add #cigogne_ticks switch.data 1

## Death system
function switch:utils/on_death_run_function {{function:"{path}/death"}}

# Particules sur tous les spectres qui ne sneake pas pour tous les joueurs
execute at @a[tag=!detached,gamemode=!spectator,predicate=!switch:is_sneaking,predicate=!switch:in_air] run particle dolphin ~ ~ ~ 0.2 0 0.2 0 2 normal

# On enlève les particules d'absorption
execute as @a[tag=!detached,nbt={{active_effects:[{{id:"minecraft:absorption"}}]}}] unless data entity @s active_effects[{{id:"minecraft:absorption"}}].show_particles run function {path}/absorption

# Glowing time
execute as @a[tag=!detached,gamemode=!spectator,predicate=switch:is_sneaking] run scoreboard players add @s switch.temp.sneak 1
scoreboard players remove @a[tag=!detached,gamemode=!spectator,predicate=!switch:is_sneaking] switch.temp.sneak 2
effect give @a[tag=!detached,scores={{switch.temp.sneak=100..}}] glowing 1 0 true
scoreboard players set @a[tag=!detached,scores={{switch.temp.sneak=100..}}] switch.temp.sneak 100
scoreboard players set @a[tag=!detached,scores={{switch.temp.sneak=..0}}] switch.temp.sneak 0
function {translations}/tick


## End game
scoreboard players set #remaining_players switch.data 0
execute store result score #remaining_players switch.data if entity @a[tag=!detached,gamemode=survival]
execute if score #cigogne_seconds switch.data matches 1.. if score #remaining_players switch.data matches ..1 run function {path}/process_end
execute if score #remaining_time switch.data matches ..0 run function {path}/process_end
""")

	# /xp_bar
	write_time_xp_bar(f"{path}/xp_bar", 900, "#cigogne_seconds")
