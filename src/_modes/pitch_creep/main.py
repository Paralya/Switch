
# Imports
from stewbeet import Mem, write_function
from ..common import write_modes_calls
from .translations import write_translations


def write_mode():
	# Namespace and base path of the mode
	ns: str = Mem.ctx.project_id  # equal to "switch"
	mode: str = "pitch_creep"
	path: str = f"{ns}:modes/{mode}"  # /start, /tick, etc.
	translations: str = f"{path}/translations"  # /start, /death, etc.

	# Write /calls/ functions (joined, second, start, stop, tick) and /translations/ functions
	write_modes_calls(mode)
	write_translations()

	# /start
	write_function(f"{path}/start", f"""
team join switch.no_pvp @a[tag=!detached]
scoreboard players set @a[tag=!detached] switch.alive 1

effect give @a[tag=!detached] saturation infinite 255 true
effect give @a[tag=!detached] regeneration 5 255 true
time set 18000

execute in switch:game run gamerule minecraft:show_death_messages false
execute in switch:game run gamerule minecraft:natural_health_regeneration false
execute in switch:game run gamerule minecraft:keep_inventory true
execute in switch:game run gamerule minecraft:show_death_messages false
execute in switch:game run gamerule minecraft:natural_health_regeneration false
execute in switch:game run gamerule minecraft:keep_inventory true

## Placement de la map et des joueurs + give d'items
scoreboard players set #dont_regenerate switch.data 1
function switch:utils/choose_map_for {{id:"{mode}", maps:["pitch_creep_1","octogone_nether_ice"]}}

function {translations}/start

scoreboard players set #remaining_time switch.data 95
scoreboard players set #pitch_creep_seconds switch.data -10
scoreboard players set #pitch_creep_ticks switch.data 0
scoreboard players set #process_end switch.data 0
scoreboard objectives add switch.temp.shot minecraft.used:minecraft.bow
scoreboard players set @a[tag=!detached] switch.temp.shot 0

# Teleport on maps
scoreboard players set #count switch.data 0
execute if data storage switch:main {{map:"pitch_creep_1"}} as @a[tag=!detached,sort=random] run function {path}/maps/pitch_creep_1
execute if data storage switch:main {{map:"octogone_nether_ice"}} as @a[tag=!detached,sort=random] run function {path}/maps/octogone_nether_ice
""")

	# /stop
	write_function(f"{path}/stop", """
scoreboard objectives remove switch.temp.shot
""")

	# /tick
	write_function(f"{path}/tick", f"""
scoreboard players add #pitch_creep_ticks switch.data 1

kill @e[type=item,nbt={{Item:{{id:"minecraft:gunpowder"}}}}]
kill @e[type=experience_orb]

function switch:utils/on_death_run_function {{function:"{path}/death"}}
execute unless score #process_end switch.data matches 1 at @n[type=marker,tag=switch.selected_map] run kill @a[tag=!detached,distance=50..,scores={{switch.alive=1..}}]

execute if score #pitch_creep_seconds switch.data matches 1.. unless entity @a[scores={{switch.alive=1..}}] run function {path}/process_end
execute if score #remaining_time switch.data matches 0 run function {path}/process_end
""")

	# /second
	creeper_nbt: str = '{Health:2048.0f,Tags:["switch.new"],attributes:[{id:"max_health",base:2048.0},{id:"follow_range",base:128}]}'
	write_function(f"{path}/second", f"""
scoreboard players add #pitch_creep_seconds switch.data 1
execute if score #remaining_time switch.data matches 1.. run scoreboard players remove #remaining_time switch.data 1

execute if score #pitch_creep_seconds switch.data matches 0.. run function {path}/xp_bar
execute if score #pitch_creep_seconds switch.data matches 0 as @a[tag=!detached] at @s run function {path}/give_items

# Spawning creepers
execute if score #pitch_creep_seconds switch.data matches 0.. if data storage switch:main {{map:"pitch_creep_1"}} positioned 3520 126 3520 run summon creeper ~-0.2 ~ ~ {creeper_nbt}
execute if score #pitch_creep_seconds switch.data matches 0.. if data storage switch:main {{map:"pitch_creep_1"}} positioned 3520 126 3520 run summon creeper ~0.2 ~ ~ {creeper_nbt}
execute if score #pitch_creep_seconds switch.data matches 0.. if data storage switch:main {{map:"octogone_nether_ice"}} positioned 160040 135 160040 run summon creeper ~-0.2 ~ ~ {creeper_nbt}
execute if score #pitch_creep_seconds switch.data matches 0.. if data storage switch:main {{map:"octogone_nether_ice"}} positioned 160040 135 160040 run summon creeper ~0.2 ~ ~ {creeper_nbt}
execute if score #pitch_creep_seconds switch.data matches 0.. if data storage switch:main {{map:"octogone_nether_ice"}} positioned 160040 135 160040 run summon creeper ~ ~ ~-0.2 {creeper_nbt}
execute if score #pitch_creep_seconds switch.data matches 0.. if data storage switch:main {{map:"octogone_nether_ice"}} positioned 160040 135 160040 run summon creeper ~ ~ ~0.2 {creeper_nbt}
execute if score #pitch_creep_seconds switch.data matches 0.. run tag @e[type=creeper,tag=switch.new] remove switch.new
execute if score #pitch_creep_seconds switch.data matches ..-1 at @n[type=marker,tag=switch.selected_map] run function switch:utils/safe_kill_macro {{selector:"@e[type=creeper,distance=..100]"}}
""")

	# /joined
	write_function(f"{path}/joined", f"""
gamemode spectator @s
function {path}/death
""")

	# /death
	write_function(f"{path}/death", f"""
function {translations}/death
scoreboard players set @s switch.alive 0
function switch:utils/classic_death
""")

	# /give_items
	sword: str = 'diamond_sword[unbreakable={},tooltip_display={"hidden_components":["minecraft:unbreakable"]},enchantments={"knockback":3}]'
	bow: str = 'bow[unbreakable={},tooltip_display={"hidden_components":["minecraft:unbreakable"]},enchantments={"punch":3}]'
	write_function(f"{path}/give_items", f"""
# Give sword
execute store result score #random switch.data run random value 0..3
# execute if score #random switch.data matches 0 run loot insert 0 0 0 loot stardust:i/original_stardust_sword
# execute if score #random switch.data matches 1 run loot insert 0 0 0 loot stardust:i/legendarium_sword
# execute if score #random switch.data matches 2 run loot insert 0 0 0 loot stardust:i/solarium_sword
# execute if score #random switch.data matches 3 run loot insert 0 0 0 loot stardust:i/darkium_sword
execute if score #random switch.data matches 0 run item replace entity @s hotbar.0 with {sword}
execute if score #random switch.data matches 1 run item replace entity @s hotbar.0 with {sword}
execute if score #random switch.data matches 2 run item replace entity @s hotbar.0 with {sword}
execute if score #random switch.data matches 3 run item replace entity @s hotbar.0 with {sword}

# Give bow
execute store result score #random switch.data run random value 0..2
# execute if score #random switch.data matches 0 run loot insert 0 0 0 loot stardust:i/stardust_bow
# execute if score #random switch.data matches 1 run loot insert 0 0 0 loot stardust:i/awakened_stardust_bow
# execute if score #random switch.data matches 2 run loot insert 0 0 0 loot stardust:i/ultimate_bow
execute if score #random switch.data matches 0 run item replace entity @s hotbar.1 with {bow}
execute if score #random switch.data matches 1 run item replace entity @s hotbar.1 with {bow}
execute if score #random switch.data matches 2 run item replace entity @s hotbar.1 with {bow}

# Give arrows
item replace entity @s hotbar.2 with arrow 64
""")

	# /xp_bar
	write_function(f"{path}/xp_bar", """
# 90 seconds = 100%
# 1 seconds = 1,111%
# 0 seconds = 0%
scoreboard players operation #points switch.data = #pitch_creep_seconds switch.data
scoreboard players operation #points switch.data *= #1000000 switch.data
scoreboard players set #divide switch.data 90000
function switch:modes/_common/xp_bar/points

scoreboard players operation #levels switch.data = #remaining_time switch.data
function switch:modes/_common/xp_bar/levels
""")

	# /process_end
	write_function(f"{path}/process_end", f"""
scoreboard players add #process_end switch.data 1

execute if score #process_end switch.data matches 1 as @a[tag=!detached,scores={{switch.alive=1..}}] at @s run function switch:engine/add_win
execute if score #process_end switch.data matches 1 unless score #test_mode switch.data matches 1 run advancement grant @a[tag=!detached,scores={{switch.alive=1..,switch.temp.shot=0}}] only switch:visible/59
function {translations}/process_end
execute if score #process_end switch.data matches 1 run gamemode spectator @a[tag=!detached,sort=random]
execute if score #process_end switch.data matches 1 as @a[tag=!detached,sort=random] run function {path}/death
execute if score #process_end switch.data matches 1 as @a[tag=!detached] run function switch:player/trigger/rating/print_current_game

execute if score #process_end switch.data matches 200 run function switch:engine/restart
""")

	# /_force_start
	write_function(f"{path}/_force_start", f"""
function switch:engine/force_start_macro {{id:"{mode}"}}
""")

	# /maps/pitch_creep_1
	write_function(f"{path}/maps/pitch_creep_1", """
execute if score #count switch.data matches 0 in switch:game run tp @s 3520 121.69 3511 0 0
execute if score #count switch.data matches 1 in switch:game run tp @s 3520 121.69 3529 180 0
execute if score #count switch.data matches 2 in switch:game run tp @s 3529 121.69 3520 90 0
execute if score #count switch.data matches 3 in switch:game run tp @s 3511 121.69 3520 -90 0

scoreboard players add #count switch.data 1
scoreboard players operation #count switch.data %= #4 switch.data
""")

	# /maps/octogone_nether_ice
	write_function(f"{path}/maps/octogone_nether_ice", """
execute if score #count switch.data matches 0 in switch:game run tp @s 160026 134 160040 -90 0
execute if score #count switch.data matches 1 in switch:game run tp @s 160054 134 160040 90 0
execute if score #count switch.data matches 2 in switch:game run tp @s 160031 134 160031 -45 0
execute if score #count switch.data matches 3 in switch:game run tp @s 160049 134 160049 135 0
execute if score #count switch.data matches 4 in switch:game run tp @s 160040 134 160026 0 0
execute if score #count switch.data matches 5 in switch:game run tp @s 160040 134 160054 180 0
execute if score #count switch.data matches 6 in switch:game run tp @s 160049 134 160031 45 0
execute if score #count switch.data matches 7 in switch:game run tp @s 160031 134 160049 225 0

scoreboard players add #count switch.data 1
scoreboard players operation #count switch.data %= #8 switch.data
""")

