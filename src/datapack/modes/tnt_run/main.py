
# Imports
from stewbeet import Mem, write_function

from ..common import write_modes_calls, write_time_xp_bar
from .translations import write_translations


def write_mode():
	ns: str = Mem.ctx.project_id
	mode: str = "tnt_run"
	path: str = f"{ns}:modes/{mode}"
	translations: str = f"{path}/translations"

	# Write /calls/ and /translations/ functions
	write_modes_calls(mode)
	write_translations()


	# /death
	write_function(f"{path}/death", f"""
function {translations}/death
function switch:modes/_common/death_spectator
""")

	# /destroy_block
	write_function(f"{path}/destroy_block", """
# Fill to remove tnt_run blocks
scoreboard players set #count switch.data 0
execute store result score #count switch.data run fill ~-.1 ~ ~-.1 ~.1 ~-5 ~.1 air replace #realistic_explosion:equal_and_below_1200
execute if score #count switch.data matches 0 run fill ~-.3 ~ ~-.3 ~.3 ~-5 ~.3 air replace #realistic_explosion:equal_and_below_1200

# Kill marker
kill @s
""")

	# /give_items (empty)
	write_function(f"{path}/give_items", "\n")

	# /is_on_ground
	write_function(f"{path}/is_on_ground", """
# Get the player's motion in the y direction
scoreboard players set #temp switch.data 0
execute store result score #temp switch.data run data get entity @s Motion[1] 100

# If player is not falling, summon a marker at their position
execute if score #temp switch.data matches -8 run summon marker ~ ~ ~ {Tags:["switch.tnt_run"]}
execute unless score #temp switch.data matches -8 unless block ~ ~-.25 ~ air run summon marker ~ ~ ~ {Tags:["switch.tnt_run"]}
""")

	# /joined
	write_function(f"{path}/joined", f"""
gamemode spectator @s
function {path}/death
""")

	# /process_end
	write_function(f"{path}/process_end", f"""
function switch:modes/_common/process_end/last_survivor {{death:"{path}/death"}}
""")

	# /second
	write_function(f"{path}/second", f"""
# Classic timer
scoreboard players add #tnt_run_seconds switch.data 1
function {path}/xp_bar

# Start countdown
execute if score #tnt_run_seconds switch.data matches -5..0 as @a[tag=!detached] at @s run playsound entity.experience_orb.pickup ambient @s
function {translations}/second
""")

	# /start
	write_function(f"{path}/start", f"""
effect give @a[tag=!detached] weakness infinite 255 true
effect give @a[tag=!detached] saturation infinite 255 true
execute as @a[tag=!detached] at @s run function {path}/give_items
function switch:utils/set_dynamic_time

## Téléportation des joueurs
scoreboard players set #do_spreadplayers switch.data 1
function switch:utils/choose_map_for {{id:"tnt_run", maps:["tnt_run_futuristic","arti_tnt_run_tower","elza_dual_biomes"]}}

execute in switch:game run gamerule minecraft:fall_damage false
execute in switch:game run gamerule minecraft:block_drops false

function {translations}/start

scoreboard players set #tnt_run_seconds switch.data -15
scoreboard players set #tnt_run_ticks switch.data 0
scoreboard players set #process_end switch.data 0
""")

	# /stop (empty)
	write_function(f"{path}/stop", "\n")

	# /tick
	write_function(f"{path}/tick", f"""
scoreboard players add #tnt_run_ticks switch.data 1

# Death system (every player below is killed)
execute if data storage switch:main {{map:"tnt_run_futuristic"}} as @a[tag=!detached,gamemode=!spectator,sort=random] at @s if entity @s[y=0,dy=118] run function {path}/death
execute if data storage switch:main {{map:"arti_tnt_run_tower"}} as @a[tag=!detached,gamemode=!spectator,sort=random] at @s if entity @s[y=0,dy=105] run function {path}/death
execute if data storage switch:main {{map:"elza_dual_biomes"}} as @a[tag=!detached,gamemode=!spectator,sort=random] at @s if entity @s[y=0,dy=105] run function {path}/death

# Unknown death
function switch:utils/on_death_run_function {{function:"{path}/death"}}

# Summon a marker if players are on the ground
execute if score #tnt_run_seconds switch.data matches 0.. as @a[tag=!detached,gamemode=adventure] at @s run function {path}/is_on_ground

# Manage destruction of blocks
execute as @e[tag=switch.tnt_run,scores={{switch.data=8..}}] at @s run function {path}/destroy_block
scoreboard players add @e[tag=switch.tnt_run] switch.data 1

## End game
scoreboard players set #remaining_players switch.data 0
execute store result score #remaining_players switch.data if entity @a[tag=!detached,gamemode=!spectator]
execute if score #tnt_run_seconds switch.data matches 1.. if score #remaining_players switch.data matches ..1 run function {path}/process_end
execute if score #tnt_run_seconds switch.data matches 300.. run function {path}/process_end
""")

	# /xp_bar
	write_time_xp_bar(f"{path}/xp_bar", 300, "#tnt_run_seconds", "#tnt_run_seconds")
