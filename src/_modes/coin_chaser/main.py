
# Imports
from stewbeet import Mem, write_function
from ..common import write_modes_calls, write_no_drop, write_time_xp_bar
from .translations import write_translations


def write_mode():
	ns: str = Mem.ctx.project_id
	mode: str = "coin_chaser"
	path: str = f"{ns}:modes/{mode}"
	translations: str = f"{path}/translations"

	# Write /calls/ and /translations/ functions
	write_modes_calls(mode)
	write_translations()


	# /death
	write_function(f"{path}/death", """
gamemode spectator @s
execute unless score #process_end switch.data matches 1 at @n[type=marker,tag=switch.selected_map] run tp @s ~ ~ ~ ~ ~
effect clear @s
clear @s
""")

	# /give_items
	write_function(f"{path}/give_items", """

clear @s
loot replace entity @s hotbar.0 loot grappling_hook:v1.4.0/items/normal_grappling_hook
loot replace entity @s weapon.offhand loot grappling_hook:v1.4.0/items/normal_grappling_hook
item modify entity @s hotbar.0 switch:unbreakable
item modify entity @s weapon.offhand switch:unbreakable
item replace entity @s hotbar.8 with warped_fungus_on_a_stick[unbreakable={},item_name={"text":"Débloqueur","color":"aqua","italic":false},item_model="switch:travel_staff"]
item replace entity @s armor.chest with elytra[unbreakable={}]
""")

	# /joined
	write_function(f"{path}/joined", f"""
execute if score #reconnect switch.data matches 0 run function {path}/respawn
""")

	# /no_drop
	write_no_drop(f"{path}/no_drop")

	# /process_end
	write_function(f"{path}/process_end", f"""
scoreboard players add #process_end switch.data 1

execute if score #process_end switch.data matches 1 run tag @a remove switch.winner
execute if score #process_end switch.data matches 1 run scoreboard players set #max switch.data 0
execute if score #process_end switch.data matches 1 run scoreboard players operation #max switch.data > @a[tag=!detached] switch.temp.points
execute if score #process_end switch.data matches 1 as @a[tag=!detached] if score @s switch.temp.points = #max switch.data run tag @s add switch.winner
execute if score #process_end switch.data matches 1 as @a[tag=!detached,tag=switch.winner] at @s run function switch:engine/add_win
function switch:translations/common/process_end_winner_points
execute if score #process_end switch.data matches 1 run tag @a remove switch.winner
execute if score #process_end switch.data matches 1 run gamemode spectator @a[tag=!detached]
execute if score #process_end switch.data matches 1 as @a[tag=!detached] run function {path}/death
execute if score #process_end switch.data matches 1 as @a[tag=!detached] run function switch:player/trigger/rating/print_current_game

execute if score #process_end switch.data matches 200 run function switch:engine/restart
""")

	# /respawn
	write_function(f"{path}/respawn", f"""
execute if score #reconnect switch.data matches 0 run function {path}/give_items
execute if score #reconnect switch.data matches 0 run function switch:maps/spread_one_player
""")

	# /second
	write_function(f"{path}/second", f"""
scoreboard players add #coin_chaser_seconds switch.data 1

# XP bar update
scoreboard players remove #remaining_time switch.data 1
function {path}/xp_bar

# Summon gold ingots if low amount (~10 gold per player)
execute store result score #gold_count switch.data if entity @e[type=item,tag=switch.coin]
execute store result score #player_count switch.data if entity @a[tag=!detached,gamemode=!spectator]
scoreboard players operation #gold_count switch.data *= #100 switch.data
scoreboard players operation #gold_count switch.data /= #player_count switch.data
execute if score #coin_chaser_seconds switch.data matches 0.. if score #gold_count switch.data matches ..1000 run function {path}/summon_gold

# Particles
execute at @e[type=item,tag=switch.coin] positioned ~ ~25 ~ run particle angry_villager ~ ~ ~ 0.1 25 0.1 0 100 force @a[tag=!detached,distance=0..]
""")

	# /start
	write_function(f"{path}/start", f"""
effect give @a[tag=!detached] saturation infinite 255 true
effect give @a[tag=!detached] resistance infinite 255 true
function switch:utils/set_dynamic_time

execute in switch:game run gamerule minecraft:fall_damage false

## Téléportation des joueurs
scoreboard players set #dont_regenerate switch.data 1
scoreboard players set #do_spreadplayers switch.data 1
function switch:utils/choose_map_for {{id:"coin_chaser", maps:["paralya_lobby","smithed_summit_2024"]}}

function {translations}/start

scoreboard players set #coin_chaser_seconds switch.data -10
scoreboard players set #coin_chaser_ticks switch.data 0
scoreboard players set #remaining_time switch.data 70
scoreboard players set #process_end switch.data 0
scoreboard objectives add switch.temp.points dummy {{"text":"Points","color":"red"}}
scoreboard objectives setdisplay sidebar switch.temp.points

execute as @a[tag=!detached] run function {path}/give_items
""")

	# /stop
	write_function(f"{path}/stop", """
scoreboard objectives remove switch.temp.points
""")

	# /summon_gold
	write_function(f"{path}/summon_gold", """
## Summon 10 gold coins at origin (will be spread by spread_one_player)
summon item 0 0 0 {Tags:["switch.coin","switch.new_coin"],Glowing:true,Item:{id:"minecraft:gold_ingot",count:1}}
summon item 0 0 0 {Tags:["switch.coin","switch.new_coin"],Glowing:true,Item:{id:"minecraft:gold_ingot",count:1}}
summon item 0 0 0 {Tags:["switch.coin","switch.new_coin"],Glowing:true,Item:{id:"minecraft:gold_ingot",count:1}}
summon item 0 0 0 {Tags:["switch.coin","switch.new_coin"],Glowing:true,Item:{id:"minecraft:gold_ingot",count:1}}
summon item 0 0 0 {Tags:["switch.coin","switch.new_coin"],Glowing:true,Item:{id:"minecraft:gold_ingot",count:1}}
summon item 0 0 0 {Tags:["switch.coin","switch.new_coin"],Glowing:true,Item:{id:"minecraft:gold_ingot",count:1}}
summon item 0 0 0 {Tags:["switch.coin","switch.new_coin"],Glowing:true,Item:{id:"minecraft:gold_ingot",count:1}}
summon item 0 0 0 {Tags:["switch.coin","switch.new_coin"],Glowing:true,Item:{id:"minecraft:gold_ingot",count:1}}
summon item 0 0 0 {Tags:["switch.coin","switch.new_coin"],Glowing:true,Item:{id:"minecraft:gold_ingot",count:1}}
summon item 0 0 0 {Tags:["switch.coin","switch.new_coin"],Glowing:true,Item:{id:"minecraft:gold_ingot",count:1}}

execute as @e[type=item,tag=switch.new_coin] run function switch:maps/spread_one_player
tag @e[type=item,tag=switch.new_coin] remove switch.new_coin
""")

	# /tick
	write_function(f"{path}/tick", f"""
scoreboard players add #coin_chaser_ticks switch.data 1

## Global tick
# Dead players
function switch:utils/on_death_run_function {{function:"{path}/respawn"}}

# Teleport stucked players
execute as @a[tag=!detached,scores={{switch.right_click=1..}}] at @s run spreadplayers ~ ~ 0 1 false @s
execute as @a[tag=!detached,scores={{switch.right_click=1..}}] at @s if block ~ ~-1 ~ barrier run tp @s ~ ~-3 ~

# Prevent drops
execute as @e[type=item,tag=!switch.checked] run function {path}/no_drop

# Check number of gold
execute as @a[tag=!detached,gamemode=!spectator] at @s store result score @s switch.temp.points run clear @s gold_ingot 0

# Keep reloading the grappling hooks
execute as @a[tag=!detached] if items entity @s weapon.mainhand *[custom_data~{{grappling_hook:1b}}] run item modify entity @s weapon.mainhand {{"function":"minecraft:set_components","components":{{"minecraft:charged_projectiles":[{{"id":"minecraft:arrow"}}]}}}}
execute as @a[tag=!detached] if items entity @s weapon.offhand *[custom_data~{{grappling_hook:1b}}] run item modify entity @s weapon.offhand {{"function":"minecraft:set_components","components":{{"minecraft:charged_projectiles":[{{"id":"minecraft:arrow"}}]}}}}


## End game
execute if score #remaining_time switch.data matches ..0 run function {path}/process_end
""")

	# /xp_bar
	write_time_xp_bar(f"{path}/xp_bar", 60)
