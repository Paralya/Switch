
# ruff: noqa: E501
# Imports
from stewbeet import Mem, write_function

from ...kits import Kit
from ..common import write_modes_calls, write_time_xp_bar
from .kits import build_kits
from .translations import write_translations


def write_mode():
	ns: str = Mem.ctx.project_id
	mode: str = "rush_the_point"
	path: str = f"{ns}:modes/{mode}"

	# Write /calls/ and /translations/ functions
	write_modes_calls(mode)
	write_translations()

	# Non-standard call: inventory_changed
	write_function(f"{path}/calls/inventory_changed", f"""
tag @s add {ns}.temp.inventory_changed
""")


	# /advancements/break_obsidian
	write_function(f"{path}/advancements/break_obsidian", f"""
advancement revoke @s only {ns}:rush_the_point/break_obsidian
execute if score #engine_state {ns}.data matches 3 if data storage {ns}:main {{current_game:"rush_the_point"}} run function {ns}:modes/rush_the_point/advancements/break_obsidian_confirm
""")

	# /advancements/break_obsidian_confirm (translation ref rewritten)
	write_function(f"{path}/advancements/break_obsidian_confirm", f"""
scoreboard players set #color {ns}.data 0
execute store success score #color {ns}.data if entity @s[team={ns}.rush_the_point.blue]
execute as @a[tag=!detached] at @s run playsound entity.player.levelup ambient @s
scoreboard players remove @s {ns}.temp.break_obsidian 1

execute if score #color {ns}.data matches 0 run scoreboard players add #red_points {ns}.data 250
execute if score #color {ns}.data matches 1 run scoreboard players add #blue_points {ns}.data 250

# Random
execute store result score #random {ns}.data run random value 0..9

# Color red
execute if score #random {ns}.data matches 0 if score #color {ns}.data matches 0 run effect give @a[tag=!detached,team={ns}.rush_the_point.red] absorption 60 4 true
execute if score #random {ns}.data matches 1 if score #color {ns}.data matches 0 run effect give @a[tag=!detached,team={ns}.rush_the_point.red] speed 60 0 true
execute if score #random {ns}.data matches 2 if score #color {ns}.data matches 0 run effect give @a[tag=!detached,team={ns}.rush_the_point.red] strength 60 0 true
execute if score #random {ns}.data matches 3 if score #color {ns}.data matches 0 run effect give @a[tag=!detached,team={ns}.rush_the_point.red] resistance 60 0 true
execute if score #random {ns}.data matches 4 if score #color {ns}.data matches 0 run effect give @a[tag=!detached,team={ns}.rush_the_point.blue] wither 60 0 true
execute if score #random {ns}.data matches 5 if score #color {ns}.data matches 0 run effect give @a[tag=!detached,team={ns}.rush_the_point.blue] slowness 60 1 true
execute if score #random {ns}.data matches 6 if score #color {ns}.data matches 0 run effect give @a[tag=!detached,team={ns}.rush_the_point.blue] glowing 60 0 true
execute if score #random {ns}.data matches 7 if score #color {ns}.data matches 0 run effect give @a[tag=!detached,team={ns}.rush_the_point.blue] levitation 1 20 true
execute if score #random {ns}.data matches 8 if score #color {ns}.data matches 0 run effect give @a[tag=!detached,team={ns}.rush_the_point.blue] wither 60 0 true
execute if score #random {ns}.data matches 9 if score #color {ns}.data matches 0 run effect give @a[tag=!detached,team={ns}.rush_the_point.blue] weakness 60 0 true

# Color blue
execute if score #random {ns}.data matches 0 if score #color {ns}.data matches 1 run effect give @a[tag=!detached,team={ns}.rush_the_point.blue] absorption 60 4 true
execute if score #random {ns}.data matches 1 if score #color {ns}.data matches 1 run effect give @a[tag=!detached,team={ns}.rush_the_point.blue] speed 60 0 true
execute if score #random {ns}.data matches 2 if score #color {ns}.data matches 1 run effect give @a[tag=!detached,team={ns}.rush_the_point.blue] strength 60 0 true
execute if score #random {ns}.data matches 3 if score #color {ns}.data matches 1 run effect give @a[tag=!detached,team={ns}.rush_the_point.blue] resistance 60 0 true
execute if score #random {ns}.data matches 4 if score #color {ns}.data matches 1 run effect give @a[tag=!detached,team={ns}.rush_the_point.red] wither 60 0 true
execute if score #random {ns}.data matches 5 if score #color {ns}.data matches 1 run effect give @a[tag=!detached,team={ns}.rush_the_point.red] slowness 60 1 true
execute if score #random {ns}.data matches 6 if score #color {ns}.data matches 1 run effect give @a[tag=!detached,team={ns}.rush_the_point.red] glowing 60 0 true
execute if score #random {ns}.data matches 7 if score #color {ns}.data matches 1 run effect give @a[tag=!detached,team={ns}.rush_the_point.red] levitation 1 20 true
execute if score #random {ns}.data matches 8 if score #color {ns}.data matches 1 run effect give @a[tag=!detached,team={ns}.rush_the_point.red] wither 60 0 true
execute if score #random {ns}.data matches 9 if score #color {ns}.data matches 1 run effect give @a[tag=!detached,team={ns}.rush_the_point.red] weakness 60 0 true

# Messages
function {ns}:modes/rush_the_point/translations/advancements_break_obsidian_confirm

# Increment
scoreboard players add @s {ns}.temp.total_obsidian 1
execute unless score #test_mode {ns}.data matches 1 if score @s {ns}.temp.total_obsidian matches 5.. run advancement grant @s only {ns}:visible/43
""")

	# /advancements/killed_player
	write_function(f"{path}/advancements/killed_player", f"""
advancement revoke @s only {ns}:rush_the_point/killed_player
execute if score #engine_state {ns}.data matches 3 if data storage {ns}:main {{current_game:"rush_the_point"}} run function {ns}:modes/rush_the_point/advancements/killed_player_confirm
""")

	# /advancements/killed_player_confirm
	write_function(f"{path}/advancements/killed_player_confirm", f"""
scoreboard players set #color {ns}.data 0
execute store success score #color {ns}.data if entity @s[team={ns}.rush_the_point.blue]

execute if score #color {ns}.data matches 0 run scoreboard players add #red_points {ns}.data 15
execute if score #color {ns}.data matches 1 run scoreboard players add #blue_points {ns}.data 15
""")

	# /bonus_reload (translation ref rewritten)
	write_function(f"{path}/bonus_reload", f"""
# Place random
execute store result score #random {ns}.data run random value 0..3
execute if score #random {ns}.data matches 0 run setblock 14000 100 13925 obsidian
execute if score #random {ns}.data matches 1 run setblock 14000 100 14000 obsidian
execute if score #random {ns}.data matches 2 run setblock 14000 100 14075 obsidian
execute if score #random {ns}.data matches 3 run setblock 14000 86 14000 obsidian

function {ns}:modes/rush_the_point/translations/bonus_reload
execute as @a[tag=!detached] at @s run playsound entity.villager.hurt ambient @s
execute as @a[tag=!detached] at @s run playsound entity.villager.hurt ambient @s
execute as @a[tag=!detached] at @s run playsound entity.villager.hurt ambient @s
scoreboard players set #bonus_reload {ns}.data 0
""")

	# /classes/_common
	write_function(f"{path}/classes/_common", """
clear @s
effect clear @s
attribute @s attack_speed base set 2048
attribute @s jump_strength base reset
""")

	# /classes/_armor (shared blue/red protection-2 leather kit, used by archer/builder/destroyer)
	write_function(f"{path}/classes/_armor", f"""
item replace entity @s[team={ns}.rush_the_point.blue] armor.head with leather_helmet[unbreakable={{}},tooltip_display={{"hidden_components":["minecraft:unbreakable"]}},dyed_color=3827848,enchantments={{"protection":2}}]
item replace entity @s[team={ns}.rush_the_point.blue] armor.chest with leather_chestplate[unbreakable={{}},tooltip_display={{"hidden_components":["minecraft:unbreakable"]}},dyed_color=3827848,enchantments={{"protection":2}}]
item replace entity @s[team={ns}.rush_the_point.blue] armor.legs with leather_leggings[unbreakable={{}},tooltip_display={{"hidden_components":["minecraft:unbreakable"]}},dyed_color=3827848,enchantments={{"protection":2}}]
item replace entity @s[team={ns}.rush_the_point.blue] armor.feet with leather_boots[unbreakable={{}},tooltip_display={{"hidden_components":["minecraft:unbreakable"]}},dyed_color=3827848,enchantments={{"protection":2}}]

item replace entity @s[team={ns}.rush_the_point.red] armor.head with leather_helmet[unbreakable={{}},tooltip_display={{"hidden_components":["minecraft:unbreakable"]}},dyed_color=16731469,enchantments={{"protection":2}}]
item replace entity @s[team={ns}.rush_the_point.red] armor.chest with leather_chestplate[unbreakable={{}},tooltip_display={{"hidden_components":["minecraft:unbreakable"]}},dyed_color=16731469,enchantments={{"protection":2}}]
item replace entity @s[team={ns}.rush_the_point.red] armor.legs with leather_leggings[unbreakable={{}},tooltip_display={{"hidden_components":["minecraft:unbreakable"]}},dyed_color=16731469,enchantments={{"protection":2}}]
item replace entity @s[team={ns}.rush_the_point.red] armor.feet with leather_boots[unbreakable={{}},tooltip_display={{"hidden_components":["minecraft:unbreakable"]}},dyed_color=16731469,enchantments={{"protection":2}}]
""")

	# /classes/archer, /classes/builder, /classes/destroyer (declared in kits.py)
	archer, builder, destroyer, swordsman = build_kits()
	archer.write(f"{path}/classes/archer")
	builder.write(f"{path}/classes/builder")
	destroyer.write(f"{path}/classes/destroyer")

	# /classes/aviateur (elytra + its own protection-4 armor, then the swordsman loadout)
	Kit("aviateur", items=swordsman, pre=f"""
function {ns}:modes/rush_the_point/classes/_common

item replace entity @s armor.chest with elytra[unbreakable={{}},tooltip_display={{"hidden_components":["minecraft:unbreakable"]}}]

item replace entity @s[team={ns}.rush_the_point.blue] armor.head with leather_helmet[unbreakable={{}},tooltip_display={{"hidden_components":["minecraft:unbreakable"]}},dyed_color=546752,enchantments={{"protection":4}}]
item replace entity @s[team={ns}.rush_the_point.blue] armor.legs with leather_leggings[unbreakable={{}},tooltip_display={{"hidden_components":["minecraft:unbreakable"]}},dyed_color=546752,enchantments={{"protection":4}}]
item replace entity @s[team={ns}.rush_the_point.blue] armor.feet with leather_boots[unbreakable={{}},tooltip_display={{"hidden_components":["minecraft:unbreakable"]}},dyed_color=546752,enchantments={{"protection":4}}]

item replace entity @s[team={ns}.rush_the_point.red] armor.head with leather_helmet[unbreakable={{}},tooltip_display={{"hidden_components":["minecraft:unbreakable"]}},dyed_color=13369344,enchantments={{"protection":4}}]
item replace entity @s[team={ns}.rush_the_point.red] armor.legs with leather_leggings[unbreakable={{}},tooltip_display={{"hidden_components":["minecraft:unbreakable"]}},dyed_color=13369344,enchantments={{"protection":4}}]
item replace entity @s[team={ns}.rush_the_point.red] armor.feet with leather_boots[unbreakable={{}},tooltip_display={{"hidden_components":["minecraft:unbreakable"]}},dyed_color=13369344,enchantments={{"protection":4}}]

scoreboard players set @s {ns}.temp.elytra_cooldown 120
""").write(f"{path}/classes/aviateur")

	# /classes/guerrier (its own protection-4 armor, then the swordsman loadout)
	Kit("guerrier", items=swordsman, pre=f"""
function {ns}:modes/rush_the_point/classes/_common

item replace entity @s[team={ns}.rush_the_point.blue] armor.head with leather_helmet[unbreakable={{}},tooltip_display={{"hidden_components":["minecraft:unbreakable"]}},dyed_color=3827848,enchantments={{"protection":4}}]
item replace entity @s[team={ns}.rush_the_point.blue] armor.chest with leather_chestplate[unbreakable={{}},tooltip_display={{"hidden_components":["minecraft:unbreakable"]}},dyed_color=546752,enchantments={{"protection":4}}]
item replace entity @s[team={ns}.rush_the_point.blue] armor.legs with leather_leggings[unbreakable={{}},tooltip_display={{"hidden_components":["minecraft:unbreakable"]}},dyed_color=3827848,enchantments={{"protection":4}}]
item replace entity @s[team={ns}.rush_the_point.blue] armor.feet with leather_boots[unbreakable={{}},tooltip_display={{"hidden_components":["minecraft:unbreakable"]}},dyed_color=546752,enchantments={{"protection":4}}]

item replace entity @s[team={ns}.rush_the_point.red] armor.head with leather_helmet[unbreakable={{}},tooltip_display={{"hidden_components":["minecraft:unbreakable"]}},dyed_color=16731469,enchantments={{"protection":4}}]
item replace entity @s[team={ns}.rush_the_point.red] armor.chest with leather_chestplate[unbreakable={{}},tooltip_display={{"hidden_components":["minecraft:unbreakable"]}},dyed_color=13369344,enchantments={{"protection":4}}]
item replace entity @s[team={ns}.rush_the_point.red] armor.legs with leather_leggings[unbreakable={{}},tooltip_display={{"hidden_components":["minecraft:unbreakable"]}},dyed_color=16731469,enchantments={{"protection":4}}]
item replace entity @s[team={ns}.rush_the_point.red] armor.feet with leather_boots[unbreakable={{}},tooltip_display={{"hidden_components":["minecraft:unbreakable"]}},dyed_color=13369344,enchantments={{"protection":4}}]
""").write(f"{path}/classes/guerrier")

	# /classes/main (translation ref rewritten)
	write_function(f"{path}/classes/main", f"""
function {ns}:modes/_common/detect_chosen_class

# Elytra cooldown
scoreboard players add @s {ns}.temp.elytra_cooldown 0
function {ns}:modes/rush_the_point/translations/classes_
execute if score @s {ns}.temp.chosen_class matches 3 unless score @s {ns}.temp.elytra_cooldown matches 0 at @s run playsound entity.villager.no ambient @s
execute if score @s {ns}.temp.chosen_class matches 3 unless score @s {ns}.temp.elytra_cooldown matches 0 run function {ns}:modes/rush_the_point/teleport_to_spawn

# Switch case
execute if score @s {ns}.temp.chosen_class matches 1 run function {ns}:modes/rush_the_point/classes/guerrier
execute if score @s {ns}.temp.chosen_class matches 2 run function {ns}:modes/rush_the_point/classes/archer
execute if score @s {ns}.temp.chosen_class matches 3 run function {ns}:modes/rush_the_point/classes/aviateur
execute if score @s {ns}.temp.chosen_class matches 4 run function {ns}:modes/rush_the_point/classes/builder
execute if score @s {ns}.temp.chosen_class matches 5 run function {ns}:modes/rush_the_point/classes/destroyer
""")

	# /death/detect
	write_function(f"{path}/death/detect", f"""
# Detect if linked player is missing

scoreboard players set #success {ns}.data 0
scoreboard players operation #player_id {ns}.id = @s {ns}.id
execute store success score #success {ns}.data run tag @a[tag=!detached,tag=!{ns}.to_tp,predicate={ns}:has_same_id] add {ns}.temp

execute if score #success {ns}.data matches 0 run tag @s add {ns}.player_dead
execute if score #success {ns}.data matches 1 run tp @s @p[tag={ns}.temp]
execute if score #success {ns}.data matches 1 if entity @p[tag={ns}.temp,tag={ns}.temp.inventory_changed] run data modify entity @s data.Inventory set from entity @p[tag={ns}.temp] Inventory
execute if score #success {ns}.data matches 1 if entity @p[tag={ns}.temp,tag={ns}.temp.inventory_changed] run data modify entity @s data.Inventory append from entity @p[tag={ns}.temp] equipment.offhand
execute if score #success {ns}.data matches 1 run tag @p[tag={ns}.temp,tag={ns}.temp.inventory_changed] remove {ns}.temp.inventory_changed

tag @a remove {ns}.temp
""")

	# /death/for_global
	write_function(f"{path}/death/for_global", f"""
function {ns}:modes/_common/death/for_global {{filter:"{ns}:modes/rush_the_point/death/inventory_filter"}}
""")

	# /death/inventory_filter
	write_function(f"{path}/death/inventory_filter", f"""
data modify storage {ns}:main Inventory set value []
data modify storage {ns}:main Inventory append from entity @s data.Inventory[{{id:"minecraft:potion"}}]
data modify storage {ns}:main Inventory append from entity @s data.Inventory[{{id:"minecraft:cut_sandstone"}}]
data modify entity @s data.Inventory set from storage {ns}:main Inventory
""")

	# /explode_tnt
	write_function(f"{path}/explode_tnt", f"""
kill @s
playsound {ns}:explosion ambient @a[distance=..20]
particle minecraft:explosion ~ ~ ~ .5 .5 .5 1 10 force @a[distance=..50]
fill ~2 ~3 ~ ~-2 ~-3 ~ air replace #{ns}:rush_the_point/can_break
fill ~ ~3 ~2 ~ ~-3 ~-2 air replace #{ns}:rush_the_point/can_break
fill ~3 ~2 ~ ~-3 ~-2 ~ air replace #{ns}:rush_the_point/can_break
fill ~ ~2 ~3 ~ ~-2 ~-3 air replace #{ns}:rush_the_point/can_break
fill ~-2 ~-2 ~-2 ~2 ~2 ~2 air replace #{ns}:rush_the_point/can_break
fill ~-2 ~ ~-3 ~2 ~ ~3 air replace #{ns}:rush_the_point/can_break
fill ~-3 ~ ~-2 ~3 ~ ~2 air replace #{ns}:rush_the_point/can_break
""")


	# /fireball/no_cooldown (translation ref rewritten)
	write_function(f"{path}/fireball/no_cooldown", f"""
# Playsound
playsound entity.villager.no ambient @s

# Convert ticks to seconds
scoreboard players operation #seconds {ns}.temp.fireball_cooldown = @s {ns}.temp.fireball_cooldown
scoreboard players operation #seconds {ns}.temp.fireball_cooldown /= #20 {ns}.data
scoreboard players operation #digits {ns}.temp.fireball_cooldown = @s {ns}.temp.fireball_cooldown
scoreboard players operation #digits {ns}.temp.fireball_cooldown %= #20 {ns}.data
scoreboard players operation #digits {ns}.temp.fireball_cooldown /= #2 {ns}.data

# Tellraw
function {ns}:modes/rush_the_point/translations/fireball_no_cooldown
""")

	# /fireball/right_click
	write_function(f"{path}/fireball/right_click", f"""
summon fireball ^ ^1 ^1 {{Tags:["{ns}.new"],ExplosionPower:0b,NoGravity:true,Passengers:[{{id:"armor_stand",Tags:["{ns}.fireball"],NoGravity:true,Silent:true,Invulnerable:true,Marker:true,Invisible:true}}]}}

function {ns}:modes/_common/fireball/aim_and_launch

scoreboard players set @s[gamemode=!creative] {ns}.temp.fireball_cooldown 200
playsound entity.ghast.shoot ambient @s
""")


	# /items_check
	write_function(f"{path}/items_check", f"""
tag @s add {ns}.checked

execute if data entity @s Item{{id:"smooth_sandstone_stairs"}} unless data entity @s Item.components."minecraft:can_place_on".blocks run data modify entity @s Item.components."minecraft:can_place_on".blocks set value "#{ns}:rush_the_point/can_place_on"
execute if data entity @s Item{{id:"cut_sandstone"}} unless data entity @s Item.components."minecraft:can_place_on".blocks run data modify entity @s Item.components."minecraft:can_place_on".blocks set value "#{ns}:rush_the_point/can_place_on"
execute if data entity @s Item{{id:"tnt"}} unless data entity @s Item.components."minecraft:can_place_on".blocks run data modify entity @s Item.components."minecraft:can_place_on".blocks set value "#{ns}:rush_the_point/can_place_on"
execute if data entity @s Item{{id:"glass_bottle"}} run kill @s
execute if data entity @s Item{{id:"obsidian"}} run kill @s
execute if data entity @s Item.components."minecraft:custom_data".{ns}.class_item run kill @s
""")

	# /joined
	write_function(f"{path}/joined", f"""
execute if score #reconnect {ns}.data matches 0 run function {ns}:modes/rush_the_point/roles/main
function {ns}:translations/common/joined_reconnect
execute if score #reconnect {ns}.data matches 1 run function {ns}:modes/rush_the_point/teleport_to_spawn
""")

	# /process_end (translation ref rewritten)
	write_function(f"{path}/process_end", f"""
scoreboard players add #process_end {ns}.data 1

execute if score #process_end {ns}.data matches 1 run gamemode spectator @a[tag=!detached,sort=random]
function {ns}:modes/rush_the_point/translations/process_end
execute if score #process_end {ns}.data matches 1 if score #red_points {ns}.data > #blue_points {ns}.data as @a[tag=!detached,team={ns}.rush_the_point.red] at @s run function {ns}:engine/add_win
execute if score #process_end {ns}.data matches 1 if score #red_points {ns}.data < #blue_points {ns}.data as @a[tag=!detached,team={ns}.rush_the_point.blue] at @s run function {ns}:engine/add_win
execute if score #process_end {ns}.data matches 1 unless score #test_mode {ns}.data matches 1 if score #red_points {ns}.data matches 7500.. run advancement grant @a[tag=!detached,team={ns}.rush_the_point.red] only {ns}:visible/55
execute if score #process_end {ns}.data matches 1 unless score #test_mode {ns}.data matches 1 if score #blue_points {ns}.data matches 7500.. run advancement grant @a[tag=!detached,team={ns}.rush_the_point.blue] only {ns}:visible/55
execute if score #process_end {ns}.data matches 1 as @a[tag=!detached] at @s run playsound item.totem.use ambient @s
execute if score #process_end {ns}.data matches 1 run tag @a remove {ns}.to_tp
execute if score #process_end {ns}.data matches 1 as @a[tag=!detached] run function {ns}:player/trigger/rating/print_current_game

# Obligatoire
execute if score #process_end {ns}.data matches 200 run function {ns}:engine/restart
""")

	# /right_click
	write_function(f"{path}/right_click", f"""
# Revoke advancement and make the right click action
advancement revoke @s only {ns}:rush_the_point/right_click
execute if data entity @s SelectedItem.components."minecraft:custom_data".{ns}.class_item store result score @s {ns}.temp.chosen_class run data get entity @s SelectedItem.components."minecraft:custom_data".{ns}.class_item
function {ns}:modes/rush_the_point/classes/main
""")

	# /roles/main
	write_function(f"{path}/roles/main", f"""
tag @s add {ns}.temp

# Role selection
scoreboard players add #next_role {ns}.data 1
execute if score #next_role {ns}.data matches 1 run team join {ns}.rush_the_point.red @s
execute if score #next_role {ns}.data matches 2 run team join {ns}.rush_the_point.blue @s
execute if score #next_role {ns}.data matches 2 run scoreboard players set #next_role {ns}.data 0

# Linked marker for offline players
setblock 0 8 0 yellow_shulker_box
loot insert 0 8 0 loot {ns}:get_username
summon marker 0 8 0 {{Tags:["{ns}.temp.player","{ns}.new"]}}
scoreboard players operation #player_id {ns}.id = @s {ns}.id
execute as @e[tag={ns}.new] run function {ns}:modes/rush_the_point/roles/marker
setblock 0 8 0 air

tag @s remove {ns}.temp

function {ns}:modes/rush_the_point/teleport_to_spawn
execute at @s run playsound entity.player.levelup ambient @s
""")

	# /roles/marker
	write_function(f"{path}/roles/marker", f"""
scoreboard players operation @s {ns}.id = #player_id {ns}.id
data modify entity @s data.name set from block 0 8 0 Items[0].components."minecraft:profile".name
tag @s add {ns}.temp.player
tag @s remove {ns}.new
""")

	# /second
	write_function(f"{path}/second", f"""
function {ns}:modes/rush_the_point/second_common
execute if score #remaining_time {ns}.data matches 1.. run function {ns}:modes/rush_the_point/xp_bar
""")

	# /second_common
	write_function(f"{path}/second_common", f"""
# Increment game timer and decrement remaining time
scoreboard players add #rush_the_point_seconds {ns}.data 1
execute if score #remaining_time {ns}.data matches 1.. run scoreboard players remove #remaining_time {ns}.data 1

# When game starts (0 seconds), reset player attributes and clear effects
execute if score #rush_the_point_seconds {ns}.data matches 0 as @a[tag=!detached] run attribute @s jump_strength base reset
execute if score #rush_the_point_seconds {ns}.data matches 0 run effect clear @a[tag=!detached]

# Handle elytra cooldown timer
scoreboard players remove @a[scores={{{ns}.temp.elytra_cooldown=1..}}] {ns}.temp.elytra_cooldown 1

# Handle bonus item reload timer
scoreboard players add #bonus_reload {ns}.data 1
execute if score #bonus_reload {ns}.data matches 60.. run function {ns}:modes/rush_the_point/bonus_reload

# Spawn bridge snowballs at specific intervals
# First pair at start of reload cycle
execute if score #bonus_reload {ns}.data matches 0 run summon item 14063 103 14000 {{Item:{{id:"minecraft:snowball",count:1,components:{{"minecraft:item_name":{{"text":"Bridge Snowball","color":"yellow","italic":false}}}}}},NoGravity:true,Glowing:true,CustomName:{{"text":"Bridge Snowball","color":"yellow","italic":false}},CustomNameVisible:true}}
execute if score #bonus_reload {ns}.data matches 0 run summon item 13937 103 14000 {{Item:{{id:"minecraft:snowball",count:1,components:{{"minecraft:item_name":{{"text":"Bridge Snowball","color":"yellow","italic":false}}}}}},NoGravity:true,Glowing:true,CustomName:{{"text":"Bridge Snowball","color":"yellow","italic":false}},CustomNameVisible:true}}
# Second pair halfway through reload cycle
execute if score #bonus_reload {ns}.data matches 31 run summon item 14063 103 14000 {{Item:{{id:"minecraft:snowball",count:1,components:{{"minecraft:item_name":{{"text":"Bridge Snowball","color":"yellow","italic":false}}}}}},NoGravity:true,Glowing:true,CustomName:{{"text":"Bridge Snowball","color":"yellow","italic":false}},CustomNameVisible:true}}
execute if score #bonus_reload {ns}.data matches 31 run summon item 13937 103 14000 {{Item:{{id:"minecraft:snowball",count:1,components:{{"minecraft:item_name":{{"text":"Bridge Snowball","color":"yellow","italic":false}}}}}},NoGravity:true,Glowing:true,CustomName:{{"text":"Bridge Snowball","color":"yellow","italic":false}},CustomNameVisible:true}}

# Run translations
function {ns}:modes/_common/compute_mins_secs
function {ns}:translations/common/basic_actionbar
""")

	# /start (translation ref rewritten)
	write_function(f"{path}/start", f"""
function {ns}:modes/rush_the_point/start_common
function {ns}:modes/rush_the_point/translations/start

# Summon the points markers
summon marker 14000 99 14000 {{Tags:["{ns}.rush_the_point.zone","{ns}.rush_the_point.center"]}}
summon marker 14025 99 14050 {{Tags:["{ns}.rush_the_point.zone","{ns}.rush_the_point.side"]}}
summon marker 14025 99 13950 {{Tags:["{ns}.rush_the_point.zone","{ns}.rush_the_point.side"]}}
summon marker 13975 99 14050 {{Tags:["{ns}.rush_the_point.zone","{ns}.rush_the_point.side"]}}
summon marker 13975 99 13950 {{Tags:["{ns}.rush_the_point.zone","{ns}.rush_the_point.side"]}}

scoreboard players set #remaining_time {ns}.data 610
scoreboard players set #rush_the_point_seconds {ns}.data -20
scoreboard players set #rush_the_point_ticks {ns}.data 0
scoreboard objectives add {ns}.temp.zone_capture dummy
""")

	# /start_common (§ chars + braces: plain string)
	write_function(f"{path}/start_common", f"""
effect give @a[tag=!detached] resistance 10 255 true
effect give @a[tag=!detached] saturation 10 255 true
effect give @a[tag=!detached] regeneration 10 255 true
effect give @a[tag=!detached] weakness 10 255 true
function {ns}:utils/set_dynamic_time

## Placement de la map et des joueurs
function {ns}:utils/choose_map_for {{id:"rush_the_point", maps:["rush_the_point_1"]}}

execute in {ns}:game run gamerule minecraft:natural_health_regeneration false
execute in {ns}:game run gamerule minecraft:keep_inventory true
execute in {ns}:game run gamerule minecraft:block_drops false

scoreboard objectives add {ns}.temp.cooldown dummy
scoreboard objectives add {ns}.temp.fireball_cooldown dummy
scoreboard objectives add {ns}.temp.chosen_class dummy
scoreboard objectives add {ns}.temp.elytra_cooldown dummy
scoreboard objectives add {ns}.temp.break_obsidian minecraft.mined:minecraft.obsidian
scoreboard objectives add {ns}.temp.total_obsidian dummy
scoreboard objectives add {ns}.temp.sidebar dummy {{"text":"Points","color":"yellow"}}
scoreboard objectives setdisplay sidebar {ns}.temp.sidebar

scoreboard players set #bonus_reload {ns}.data 30
scoreboard players set #blue_points {ns}.data 0
scoreboard players set #red_points {ns}.data 0
scoreboard players set #process_end {ns}.data 0
scoreboard players set #red_flag_pickups {ns}.data 0
scoreboard players set #blue_flag_pickups {ns}.data 0

team add {ns}.temp.sidebar.5 {{"text":"[Sidebar 5]"}}
team add {ns}.temp.sidebar.3 {{"text":"[Sidebar 3]"}}
team add {ns}.temp.sidebar.2 {{"text":"[Sidebar 2]"}}
team add {ns}.temp.sidebar.1 {{"text":"[Sidebar 1]"}}
team modify {ns}.temp.sidebar.5 suffix [{{"text":"Goal: "}},{{"text":"7500","color":"yellow"}},{{"text":" points"}}]
team modify {ns}.temp.sidebar.3 suffix [{{"text":"Time remaining: "}},{{"text":"10","color":"yellow"}},{{"text":"m"}},{{"text":"00","color":"yellow"}},{{"text":"s"}}]
function {ns}:modes/_common/sidebar_setup

# Choix des rôles + give d'items
team add {ns}.rush_the_point.red {{"text":"[Red]","color":"red"}}
team add {ns}.rush_the_point.blue {{"text":"[Blue]","color":"blue"}}
team modify {ns}.rush_the_point.red color red
team modify {ns}.rush_the_point.blue color blue
team modify {ns}.rush_the_point.red nametagVisibility hideForOtherTeams
team modify {ns}.rush_the_point.blue nametagVisibility hideForOtherTeams
team modify {ns}.rush_the_point.red friendlyFire false
team modify {ns}.rush_the_point.blue friendlyFire false
team modify {ns}.rush_the_point.red collisionRule never
team modify {ns}.rush_the_point.blue collisionRule never
scoreboard players set #next_role {ns}.data 0
execute as @a[tag=!detached,sort=random] at @s run function {ns}:modes/rush_the_point/roles/main
""")

	# /stop
	write_function(f"{path}/stop", f"""
tag @a remove {ns}.to_tp
team remove {ns}.rush_the_point.red
team remove {ns}.rush_the_point.blue
scoreboard objectives remove {ns}.temp.cooldown
scoreboard objectives remove {ns}.temp.fireball_cooldown
scoreboard objectives remove {ns}.temp.chosen_class
scoreboard objectives remove {ns}.temp.elytra_cooldown
scoreboard objectives remove {ns}.temp.break_obsidian
scoreboard objectives remove {ns}.temp.sidebar
scoreboard objectives remove {ns}.temp.total_obsidian
scoreboard objectives remove {ns}.temp.zone_capture
team remove {ns}.temp.sidebar.5
team remove {ns}.temp.sidebar.4
team remove {ns}.temp.sidebar.3
team remove {ns}.temp.sidebar.2
team remove {ns}.temp.sidebar.1
""")

	# /teleport_to_death
	write_function(f"{path}/teleport_to_death", f"""
scoreboard players operation #player_id {ns}.id = @s {ns}.id
data modify entity @e[type=!player,predicate={ns}:has_same_id,limit=1] Tags set value ["{ns}.temp.player"]
function {ns}:modes/rush_the_point/teleport_to_spawn
""")

	# /teleport_to_spawn
	write_function(f"{path}/teleport_to_spawn", f"""
## Maps spawn
# Map Rush The Point 1
execute if data storage {ns}:main {{map:"rush_the_point_1"}} if entity @s[team={ns}.rush_the_point.red] in {ns}:game run tp @s 13930 100.69 14000 -90 0
execute if data storage {ns}:main {{map:"rush_the_point_1"}} if entity @s[team={ns}.rush_the_point.blue] in {ns}:game run tp @s 14070 100.69 14000 90 0


## Items to choose a class
tag @s remove {ns}.to_tp
clear @s
attribute @s jump_strength base set 0
effect give @s resistance infinite 250 true
effect give @s slowness infinite 250 true
effect give @s night_vision infinite 250 true
gamemode adventure @s
scoreboard players set @s {ns}.temp.chosen_class 0
item replace entity @s hotbar.0 with diamond_sword[item_name={{"text":"Guerrier","color":"red","italic":false}},item_model="{ns}:stardust_sword",custom_data={{{ns}:{{class_item:1b,rtp_class:true}}}},consumable={{consume_seconds:1024}}]
item replace entity @s hotbar.2 with arrow[item_name={{"text":"Archer","color":"red","italic":false}},item_model="{ns}:stardust_bow",custom_data={{{ns}:{{class_item:2b,rtp_class:true}}}},consumable={{consume_seconds:1024}}]
item replace entity @s hotbar.4 with elytra[item_name={{"text":"Kamikaze","color":"red","italic":false}},lore=[{{"text":"Cooldown: 2 minutes","color":"gray","italic":false}}],item_model="{ns}:ultimate_elytra",custom_data={{{ns}:{{class_item:3b,rtp_class:true}}}},consumable={{consume_seconds:1024}}]
item replace entity @s hotbar.6 with bricks[item_name={{"text":"Builder","color":"red","italic":false}},custom_data={{{ns}:{{class_item:4b,rtp_class:true}}}},consumable={{consume_seconds:1024}}]
item replace entity @s hotbar.8 with tnt[item_name={{"text":"Destroyer","color":"red","italic":false}},custom_data={{{ns}:{{class_item:5b,rtp_class:true}}}},consumable={{consume_seconds:1024}}]
""")

	# /tick
	write_function(f"{path}/tick", f"""
# Marker zone tick
execute as @e[type=marker,tag={ns}.rush_the_point.zone] at @s run function {ns}:modes/rush_the_point/tick_zone
function {ns}:modes/rush_the_point/tick_common

# Détection de fin de partie
execute if score #remaining_time {ns}.data matches 1.. if score #red_points {ns}.data matches 7500.. run scoreboard players set #remaining_time {ns}.data 0
execute if score #remaining_time {ns}.data matches 1.. if score #blue_points {ns}.data matches 7500.. run scoreboard players set #remaining_time {ns}.data 0
execute if score #remaining_time {ns}.data matches 0 run function {ns}:modes/rush_the_point/process_end
""")

	# /tick_common
	write_function(f"{path}/tick_common", f"""
# Timer
scoreboard players add #rush_the_point_ticks {ns}.data 1

# During preparation phase (negative seconds), apply effects and remove blocks
execute if score #rush_the_point_seconds {ns}.data matches ..-1 as @a[tag=!detached] run attribute @s jump_strength base set 0
execute if score #rush_the_point_seconds {ns}.data matches ..-1 run effect give @a[tag=!detached] slowness 100 250 true
execute if score #rush_the_point_seconds {ns}.data matches ..-1 run effect give @a[tag=!detached] night_vision 100 250 true
execute if score #rush_the_point_seconds {ns}.data matches ..-1 run setblock 14000 100 13925 air
execute if score #rush_the_point_seconds {ns}.data matches ..-1 run setblock 14000 100 14000 air
execute if score #rush_the_point_seconds {ns}.data matches ..-1 run setblock 14000 100 14075 air
execute if score #rush_the_point_seconds {ns}.data matches ..-1 run setblock 14000 86 14000 air

# Kill all entities under the map & Manage dropped items
execute as @e[tag=!detached,type=!marker,type=!item_display,type=!armor_stand] at @s run kill @s[y=0,dy=20]
execute as @e[type=item,tag=!{ns}.checked] run function {ns}:modes/rush_the_point/items_check
execute as @e[type=tnt,nbt={{Fuse:1s}}] at @s run function {ns}:modes/rush_the_point/explode_tnt

# Manage Fireball Stick
scoreboard players remove @a[scores={{{ns}.temp.fireball_cooldown=1..}}] {ns}.temp.fireball_cooldown 1
execute as @a[tag=!detached,scores={{{ns}.right_click=1..}},nbt={{SelectedItem:{{components:{{"minecraft:custom_data":{{{ns}:{{"fireball_wand":true}}}}}}}}}}] if score @s {ns}.temp.fireball_cooldown matches 1.. at @s run function {ns}:modes/rush_the_point/fireball/no_cooldown
execute as @a[tag=!detached,scores={{{ns}.right_click=1..}},nbt={{SelectedItem:{{components:{{"minecraft:custom_data":{{{ns}:{{"fireball_wand":true}}}}}}}}}}] unless score @s {ns}.temp.fireball_cooldown matches 1.. at @s run function {ns}:modes/rush_the_point/fireball/right_click
execute as @e[type=armor_stand,tag={ns}.fireball,predicate=!{ns}:has_vehicle] at @s positioned ~ ~-1 ~ run function {ns}:modes/rush_the_point/explode_tnt

# Kill withers after 60s
scoreboard players add @e[type=wither] {ns}.temp.cooldown 1
kill @e[type=wither,scores={{{ns}.temp.cooldown=1200..}}]

# Kill all arrows in ground & Manage snowballs
execute at @e[type=snowball] positioned ~ ~-2 ~ run fill ~-0.25 ~ ~-0.25 ~0.25 ~ ~0.25 cut_sandstone replace air
kill @e[type=arrow,nbt={{inBlockState:{{}}}}]

# Class System
execute as @a[tag=!detached,scores={{{ns}.temp.chosen_class=0}}] run function {ns}:modes/rush_the_point/classes/main

# Death System
function {ns}:utils/on_death_run_function {{function:"{ns}:modes/rush_the_point/teleport_to_death"}}
execute if score #remaining_time {ns}.data matches 1.. as @e[type=marker,tag={ns}.temp.player,tag=!{ns}.player_dead] run function {ns}:modes/rush_the_point/death/detect
execute if score #remaining_time {ns}.data matches 1.. as @e[type=marker,tag={ns}.player_dead,tag=!{ns}.processed] run function {ns}:modes/rush_the_point/death/for_global

# Update sidebar
function {ns}:modes/_common/update_sidebar
""")

	# /tick_zone (translation ref rewritten)
	write_function(f"{path}/tick_zone", f"""
scoreboard players add @s {ns}.temp.zone_capture 0

# Capture zone
scoreboard players set #state {ns}.data 0
execute if entity @s[tag={ns}.rush_the_point.center] if entity @a[tag=!detached,team={ns}.rush_the_point.red,distance=..10] run scoreboard players add #state {ns}.data 1
execute if entity @s[tag={ns}.rush_the_point.center] if entity @a[tag=!detached,team={ns}.rush_the_point.blue,distance=..10] run scoreboard players add #state {ns}.data 2
execute if entity @s[tag={ns}.rush_the_point.side] if entity @a[tag=!detached,team={ns}.rush_the_point.red,distance=..4] run scoreboard players add #state {ns}.data 1
execute if entity @s[tag={ns}.rush_the_point.side] if entity @a[tag=!detached,team={ns}.rush_the_point.blue,distance=..4] run scoreboard players add #state {ns}.data 2

execute if score #state {ns}.data matches 1 if score @s {ns}.temp.zone_capture matches -60.. run scoreboard players remove @s {ns}.temp.zone_capture 1
execute if score #state {ns}.data matches 2 if score @s {ns}.temp.zone_capture matches ..60 run scoreboard players add @s {ns}.temp.zone_capture 1
execute if score #state {ns}.data matches 3 if score @s {ns}.temp.zone_capture matches ..-1 run scoreboard players add @s {ns}.temp.zone_capture 1
execute if score #state {ns}.data matches 3 if score @s {ns}.temp.zone_capture matches 1.. run scoreboard players remove @s {ns}.temp.zone_capture 1

# Being white
execute if score @s {ns}.temp.zone_capture matches -59..59 run particle dust{{color:[1.0,1.0,1.0],scale:1.0}} ~ ~1 ~ 1 1 1 0 10
execute if score @s {ns}.temp.zone_capture matches -59..59 if entity @s[tag={ns}.rush_the_point.side] run fill ~-3 ~-1 ~-3 ~3 ~ ~3 white_wool replace #minecraft:wool
execute if score @s {ns}.temp.zone_capture matches -59..59 if entity @s[tag={ns}.rush_the_point.center] run fill ~-10 ~-1 ~-10 ~10 ~ ~10 white_wool replace #minecraft:wool

# Being red
execute if score @s {ns}.temp.zone_capture matches -39..-20 run particle dust{{color:[1.0,0.75,0.75],scale:1.0}} ~ ~1 ~ 1 1 1 0 10
execute if score @s {ns}.temp.zone_capture matches -59..-40 run particle dust{{color:[1.0,0.5,0.5],scale:1.0}} ~ ~1 ~ 1 1 1 0 10
execute if score @s {ns}.temp.zone_capture matches ..-60 run particle dust{{color:[1.0,0.0,0.0],scale:1.0}} ~ ~1 ~ 1 1 1 0 10
execute if score @s {ns}.temp.zone_capture matches ..-60 if entity @s[tag={ns}.rush_the_point.side] run fill ~-3 ~-1 ~-3 ~3 ~ ~3 red_wool replace #minecraft:wool
execute if score @s {ns}.temp.zone_capture matches ..-60 if entity @s[tag={ns}.rush_the_point.center] run fill ~-10 ~-1 ~-10 ~10 ~ ~10 red_wool replace #minecraft:wool
execute if score @s {ns}.temp.zone_capture matches ..-60 if entity @s[tag={ns}.rush_the_point.side] if predicate {ns}:chance/0.2 run scoreboard players add #red_points {ns}.data 1
execute if score @s {ns}.temp.zone_capture matches ..-60 if entity @s[tag={ns}.rush_the_point.center] if predicate {ns}:chance/0.2 run scoreboard players add #red_points {ns}.data 1

# Being blue
execute if score @s {ns}.temp.zone_capture matches 20..39 run particle dust{{color:[0.75,0.75,1.0],scale:1.0}} ~ ~1 ~ 1 1 1 0 10
execute if score @s {ns}.temp.zone_capture matches 40..59 run particle dust{{color:[0.5,0.5,1.0],scale:1.0}} ~ ~1 ~ 1 1 1 0 10
execute if score @s {ns}.temp.zone_capture matches 60.. run particle dust{{color:[0.0,0.0,1.0],scale:1.0}} ~ ~1 ~ 1 1 1 0 10
execute if score @s {ns}.temp.zone_capture matches 60.. if entity @s[tag={ns}.rush_the_point.side] run fill ~-3 ~-1 ~-3 ~3 ~ ~3 blue_wool replace #minecraft:wool
execute if score @s {ns}.temp.zone_capture matches 60.. if entity @s[tag={ns}.rush_the_point.center] run fill ~-10 ~-1 ~-10 ~10 ~ ~10 blue_wool replace #minecraft:wool
execute if score @s {ns}.temp.zone_capture matches 60.. if entity @s[tag={ns}.rush_the_point.side] if predicate {ns}:chance/0.2 run scoreboard players add #blue_points {ns}.data 1
execute if score @s {ns}.temp.zone_capture matches 60.. if entity @s[tag={ns}.rush_the_point.center] if predicate {ns}:chance/0.2 run scoreboard players add #blue_points {ns}.data 1
execute if score @s {ns}.temp.zone_capture matches 60 if score #state {ns}.data matches 2 run scoreboard players add #blue_points {ns}.data 1

# Event when capturing
execute if score @s {ns}.temp.zone_capture matches -60 if score #state {ns}.data matches 1 run playsound entity.player.levelup ambient @a[tag=!detached,distance=..5]
execute if score @s {ns}.temp.zone_capture matches 60 if score #state {ns}.data matches 2 run playsound entity.player.levelup ambient @a[tag=!detached,distance=..5]
function {ns}:modes/rush_the_point/translations/tick_zone
""")

	# /xp_bar
	write_time_xp_bar(f"{path}/xp_bar", 600)

