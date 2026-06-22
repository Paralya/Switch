
# ruff: noqa: E501
# Imports
from stewbeet import Mem, write_function

from ..common import write_modes_calls


def write_mode():
	ns: str = Mem.ctx.project_id
	mode: str = "pvpswap"
	path: str = f"{ns}:modes/{mode}"

	# Write standard /calls/ functions
	# Note: pvpswap has no translation files of its own; the
	# `switch:translations/modes_pvpswap_*` references below are dangling in the
	# original datapack and are preserved verbatim (no /translations/ relocation).
	write_modes_calls(mode, targets={"joined": "switch:utils/classic_death"})

	# Non-standard call: entity_hurt_player
	write_function(f"{path}/calls/entity_hurt_player", """
advancement revoke @s only switch:pvpswap/entity_hurt_player
execute if data storage switch:main {current_game:"pvpswap"} run function switch:modes/pvpswap/entity_hurt_player
""")


	# /entity_hurt_player
	write_function(f"{path}/entity_hurt_player", """
data modify storage switch:temp input set value {my_id:0,attacker_id:0}
execute on attacker store result storage switch:temp input.attacker_id int 1 run scoreboard players get @s switch.id
execute store result storage switch:temp input.my_id int 1 run scoreboard players get @s switch.id
function switch:modes/pvpswap/hurt_macro with storage switch:temp input
""")

	# /give_items
	write_function(f"{path}/give_items", """
item replace entity @s armor.head with leather_helmet[enchantments={projectile_protection:2}]
item replace entity @s armor.chest with leather_chestplate[enchantments={projectile_protection:2}]
item replace entity @s armor.legs with leather_leggings[enchantments={projectile_protection:2}]
item replace entity @s armor.feet with leather_boots[enchantments={projectile_protection:2}]
item replace entity @s hotbar.0 with wooden_sword[enchantments={sharpness:1,knockback:1}]
item replace entity @s hotbar.1 with bow
item replace entity @s hotbar.2 with water_bucket
item replace entity @s hotbar.3 with iron_pickaxe[enchantments={efficiency:1}]
item replace entity @s hotbar.4 with iron_axe[enchantments={efficiency:1},attribute_modifiers=[{type:"minecraft:attack_damage",slot:"mainhand",id:"switch.attack_damage",amount:2,operation:"add_value"}]]
item replace entity @s hotbar.6 with arrow 8
item replace entity @s hotbar.7 with oak_planks 64
item replace entity @s hotbar.8 with golden_apple 12
item replace entity @s inventory.25 with tnt 4
item replace entity @s inventory.26 with flint_and_steel

scoreboard players add #initial_count switch.data 1
data modify storage switch:temp temp set value {id:0,hurt:[]}
execute store result storage switch:temp temp.id int 1 run scoreboard players get @s switch.id
data modify storage switch:temp pvpswap append from storage switch:temp temp
data remove storage switch:temp temp
""")

	# /hurt_macro (macro function with $ lines)
	write_function(f"{path}/hurt_macro", """
$execute unless data storage switch:temp pvpswap[{id:$(attacker_id)}].hurt[{id:$(my_id)}] run data modify storage switch:temp pvpswap[{id:$(attacker_id)}].hurt append value {id:$(my_id)}
$execute store result score #count switch.data run data get storage switch:temp pvpswap[{id:$(attacker_id)}].hurt
execute unless score #test_mode switch.data matches 1 if score #count switch.data >= #initial_count switch.data on attacker run advancement grant @s only switch:visible/29
""")

	# /process_end (dangling translation ref preserved verbatim)
	write_function(f"{path}/process_end", """
scoreboard players add #process_end switch.data 1

execute if score #process_end switch.data matches 1 if score #remaining_players switch.data matches 1 store result score #health switch.data run data get entity @r[gamemode=survival] Health
execute if score #process_end switch.data matches 1 if score #remaining_players switch.data matches 1 as @a[tag=!detached,gamemode=survival] at @s run function switch:engine/add_win
function switch:translations/modes_pvpswap_process_end
execute if score #process_end switch.data matches 1 as @a[tag=!detached] run function switch:utils/classic_death
execute if score #process_end switch.data matches 1 as @a[tag=!detached] run function switch:player/trigger/rating/print_current_game

execute if score #process_end switch.data matches 200 run function switch:engine/restart
""")

	# /second (dangling translation ref preserved verbatim)
	write_function(f"{path}/second", """
# Classic timer
scoreboard players add #pvpswap_seconds switch.data 1
scoreboard players remove #remaining_time switch.data 1

function switch:translations/modes_pvpswap_second
""")

	# /start (dangling translation ref preserved verbatim)
	write_function(f"{path}/start", """
gamemode survival @a[tag=!detached]
effect give @a[tag=!detached] blindness 10 255 true
effect give @a[tag=!detached] weakness 10 255 true
effect give @a[tag=!detached] saturation 10 255 true
effect give @a[tag=!detached] resistance 10 255 true
effect give @a[tag=!detached] regeneration 10 255 true
function switch:utils/set_dynamic_time

## Téléportation des joueurs
scoreboard players set #do_spreadplayers switch.data 1
function switch:utils/choose_map_for {id:"pvpswap", maps:["kart_racer_relai","nuketown_no_barrier","sky_island_tower","floating_island","paralya_lobby","jn_nature_box"]}

execute in switch:game run gamerule minecraft:natural_health_regeneration false

function switch:translations/modes_pvpswap_start

scoreboard players set #remaining_time switch.data 910
scoreboard players set #pvpswap_seconds switch.data -10
scoreboard players set #pvpswap_ticks switch.data 0
scoreboard players set #process_end switch.data 0
scoreboard objectives setdisplay list switch.health

scoreboard objectives add switch.temp.kill playerKillCount
scoreboard objectives add switch.temp.cooldown_kill dummy

data modify storage switch:temp pvpswap set value []
scoreboard players set #initial_count switch.data -1
execute as @a[tag=!detached] run function switch:modes/pvpswap/give_items
""")

	# /stop
	write_function(f"{path}/stop", """
scoreboard objectives remove switch.temp.kill
scoreboard objectives remove switch.temp.cooldown_kill
data remove storage switch:temp pvpswap
""")

	# /tick
	write_function(f"{path}/tick", """
scoreboard players add #pvpswap_ticks switch.data 1

## Death system
function switch:utils/on_death_run_function {function:"switch:utils/classic_death"}

# Glowing
execute as @a[tag=!detached,gamemode=survival] at @s unless entity @a[tag=!detached,distance=0.001..25,gamemode=survival] run effect give @s glowing 2 255 true
execute as @a[tag=!detached,gamemode=survival] at @s if entity @a[tag=!detached,distance=0.001..25,gamemode=survival] run effect clear @s glowing

# Advancement
execute unless score #test_mode switch.data matches 1 run advancement grant @a[tag=!detached,scores={switch.temp.kill=1..,switch.temp.cooldown_kill=1..}] only switch:visible/9
scoreboard players set @a[tag=!detached,scores={switch.temp.kill=1..}] switch.temp.cooldown_kill 200
scoreboard players remove @a[tag=!detached,scores={switch.temp.kill=1..}] switch.temp.kill 1
scoreboard players remove @a[tag=!detached,scores={switch.temp.cooldown_kill=1..}] switch.temp.cooldown_kill 1

## End game
scoreboard players set #remaining_players switch.data 0
execute store result score #remaining_players switch.data if entity @a[tag=!detached,gamemode=survival]
execute if score #remaining_players switch.data matches ..1 run function switch:modes/pvpswap/process_end
execute if score #remaining_time switch.data matches ..0 run function switch:modes/pvpswap/process_end
""")
