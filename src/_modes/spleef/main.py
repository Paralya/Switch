
# Imports
from stewbeet import Mem, write_function
from ..common import write_modes_calls
from .translations import write_translations


def write_mode():
	ns: str = Mem.ctx.project_id
	mode: str = "spleef"
	path: str = f"{ns}:modes/{mode}"
	translations: str = f"{path}/translations"

	# Write /calls/ and /translations/ functions
	write_modes_calls(mode)
	write_translations()


	# /border_reduction/progress
	write_function(f"{path}/border_reduction/progress", """
# Fill snow blocks with air
execute if score #border_side switch.data matches 0 run fill ~ ~ ~ ~ ~-12 ~20 air replace snow_block
execute if score #border_side switch.data matches 1 run fill ~ ~ ~ ~-20 ~-12 ~ air replace snow_block
execute if score #border_side switch.data matches 2 run fill ~ ~ ~ ~ ~-12 ~-20 air replace snow_block
execute if score #border_side switch.data matches 3 run fill ~ ~ ~ ~20 ~-12 ~ air replace snow_block
scoreboard players add #border_progress switch.data 1
particle glow ~ ~-12 ~ 0.2 6 0.2 0 200 force


# Flip side if there is no remaining blocks
execute if score #border_progress switch.data >= #border_remaining_side switch.data run scoreboard players add #border_side switch.data 1
execute if score #border_progress switch.data >= #border_remaining_side switch.data if score #border_side switch.data matches 3 run scoreboard players remove #border_remaining_side switch.data 1
execute if score #border_progress switch.data >= #border_remaining_side switch.data if score #border_side switch.data matches 1 run scoreboard players remove #border_remaining_side switch.data 1
execute if score #border_progress switch.data >= #border_remaining_side switch.data run scoreboard players reset #border_progress switch.data


# First side and add a lap
execute if score #border_side switch.data matches 4 run scoreboard players add #border_laps switch.data 1
scoreboard players operation #border_side switch.data %= #4 switch.data


# Depending on current side, move on
execute if score #border_side switch.data matches 0 run tp @s ~-1 ~ ~
execute if score #border_side switch.data matches 1 run tp @s ~ ~ ~-1
execute if score #border_side switch.data matches 2 run tp @s ~1 ~ ~
execute if score #border_side switch.data matches 3 run tp @s ~ ~ ~1

# Stop when there are only 16 blocks left
execute if score #spleef_seconds switch.data matches ..90 if score #border_remaining_side switch.data matches ..15 run scoreboard players set #border_remaining_side switch.data 16
execute if score #spleef_seconds switch.data matches 90.. if score #border_remaining_side switch.data matches ..5 run scoreboard players set #border_remaining_side switch.data 16
""")

	# /border_reduction/setup (translation ref rewritten)
	write_function(f"{path}/border_reduction/setup", """
# Message d'annonce
function switch:modes/spleef/translations/border_reduction_setup
execute as @a[tag=!detached] at @s run playsound entity.experience_orb.pickup ambient @s

# Summon entity depending on map
execute if data storage switch:main {map:"spleef_1"} run summon marker 28020 106 28020 {Tags:["switch.spleef_border"],data:{border_size:41}}

# Variables
execute store result score #border_remaining_side switch.data run data get entity @e[type=marker,tag=switch.spleef_border,limit=1] data.border_size
scoreboard players set #border_progress switch.data 0
scoreboard players set #border_side switch.data 0
scoreboard players set #border_laps switch.data 0
""")

	# /death
	write_function(f"{path}/death", f"""
function {translations}/death
function switch:modes/_common/death_spectator
""")

	# /give_items
	write_function(f"{path}/give_items", """
setblock 0 10 0 air
setblock 0 10 0 yellow_shulker_box
loot insert 0 10 0 loot switch:i/ruby_shovel
data modify block 0 10 0 Items[0].components."minecraft:enchantments" set value {"minecraft:efficiency":10}
data modify block 0 10 0 Items append value {id:"white_shulker_box",count:1,Slot:1b,components:{"minecraft:item_name":{"text":"Powder Snow","color":"white","italic":false},"minecraft:item_model":"minecraft:powder_snow_bucket"}}
execute if score @s switch.spleef.powder_snow matches 0 run data modify block 0 10 0 Items[1].count set value 4
execute if score @s switch.spleef.powder_snow matches 1 run data modify block 0 10 0 Items[1].count set value 5
execute if score @s switch.spleef.powder_snow matches 2 run data modify block 0 10 0 Items[1].count set value 6
execute if score @s switch.spleef.powder_snow matches 3 run data modify block 0 10 0 Items[1].count set value 7
execute if score @s switch.spleef.powder_snow matches 4.. run data modify block 0 10 0 Items[1].count set value 8

item replace entity @s hotbar.0 from block 0 10 0 container.0
item replace entity @s hotbar.1 with ender_pearl
execute if score @s switch.spleef.snow_block matches 0 run item replace entity @s hotbar.8 with snow_block 4
execute if score @s switch.spleef.snow_block matches 1 run item replace entity @s hotbar.8 with snow_block 5
execute if score @s switch.spleef.snow_block matches 2 run item replace entity @s hotbar.8 with snow_block 6
execute if score @s switch.spleef.snow_block matches 3 run item replace entity @s hotbar.8 with snow_block 7
execute if score @s switch.spleef.snow_block matches 4 run item replace entity @s hotbar.8 with snow_block 8
execute if score @s switch.spleef.snow_block matches 5 run item replace entity @s hotbar.8 with snow_block 9
execute if score @s switch.spleef.snow_block matches 6.. run item replace entity @s hotbar.8 with snow_block 10
item replace entity @s hotbar.7 from block 0 10 0 container.1

setblock 0 10 0 air
""")

	# /joined
	write_function(f"{path}/joined", f"""
gamemode spectator @s
function {path}/death
""")

	# /no_drop
	write_function(f"{path}/no_drop", """
tag @s add switch.checked
execute if data entity @s Item{id:"snowball"} run kill @s
data modify entity @s Owner set from entity @s Thrower
data modify entity @s PickupDelay set value 0s
""")

	# /process_end
	write_function(f"{path}/process_end", f"""
scoreboard players add #process_end switch.data 1

execute if score #process_end switch.data matches 1 if score #remaining_players switch.data matches 1 as @a[tag=!detached,gamemode=survival] at @s run function switch:engine/add_win
function {translations}/process_end
execute if score #process_end switch.data matches 1 run gamemode spectator @a[tag=!detached]
execute if score #process_end switch.data matches 1 as @a[tag=!detached] run function {path}/death
execute if score #process_end switch.data matches 1 as @a[tag=!detached] run function switch:player/trigger/rating/print_current_game

execute if score #process_end switch.data matches 200 run function switch:engine/restart
""")

	# /replace_shulker
	write_function(f"{path}/replace_shulker", """
fill ~-8 ~-8 ~-8 ~8 ~8 ~8 powder_snow replace white_shulker_box
scoreboard players set @s switch.temp.placed_shulker 0
""")

	# /second
	write_function(f"{path}/second", f"""
# Classic timer
scoreboard players add #spleef_seconds switch.data 1
execute if score #spleef_seconds switch.data matches 0 as @a[tag=!detached] at @s run function {path}/give_items

# Border reduction
execute if score #spleef_seconds switch.data matches 30 run function {path}/border_reduction/setup
""")

	# /start
	write_function(f"{path}/start", f"""
gamemode survival @a[tag=!detached]
effect give @a[tag=!detached] mining_fatigue 5 255 true
effect give @a[tag=!detached] weakness infinite 255 true
effect give @a[tag=!detached] saturation infinite 255 true
function switch:utils/set_dynamic_time
execute in switch:game run gamerule minecraft:block_drops false

## Téléportation des joueurs
function switch:utils/choose_map_for {{id:"spleef", maps:["spleef_1"]}}
execute if data storage switch:main {{map:"spleef_1"}} run tp @a[tag=!detached] 28000 101 28000

function {translations}/start

scoreboard objectives add switch.temp.placed_shulker minecraft.used:minecraft.white_shulker_box

scoreboard players set #spleef_seconds switch.data -10
scoreboard players set #spleef_ticks switch.data 0
scoreboard players set #process_end switch.data 0
""")

	# /stop
	write_function(f"{path}/stop", """
scoreboard objectives remove switch.temp.placed_shulker
""")

	# /tick
	write_function(f"{path}/tick", f"""
scoreboard players add #spleef_ticks switch.data 1

## No drop system / Death system / Border reduction system
execute as @e[type=item,tag=!switch.checked] run function {path}/no_drop
execute as @a[tag=!detached,gamemode=survival,predicate=switch:in_lava,sort=random] run function {path}/death
function switch:utils/on_death_run_function {{function:"{path}/death"}}
execute if score #spleef_seconds switch.data matches 30.. as @e[type=marker,tag=switch.spleef_border] at @s run function {path}/border_reduction/progress

## Snow Powder
execute as @a[tag=!detached,gamemode=survival,scores={{switch.temp.placed_shulker=1..}}] at @s run function {path}/replace_shulker

## End game
scoreboard players set #remaining_players switch.data 0
execute store result score #remaining_players switch.data if entity @a[tag=!detached,gamemode=survival]
execute if score #spleef_seconds switch.data matches 1.. if score #remaining_players switch.data matches ..1 run function {path}/process_end
execute if score #spleef_seconds switch.data matches 300.. run function {path}/process_end
""")
