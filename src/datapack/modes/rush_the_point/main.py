
# ruff: noqa: E501
# Imports
from stewbeet import Mem, write_function

from ..common import write_modes_calls, write_time_xp_bar
from .translations import write_translations


def write_mode():
	ns: str = Mem.ctx.project_id
	mode: str = "rush_the_point"
	path: str = f"{ns}:modes/{mode}"

	# Write /calls/ and /translations/ functions
	write_modes_calls(mode)
	write_translations()

	# Non-standard call: inventory_changed
	write_function(f"{path}/calls/inventory_changed", """
tag @s add switch.temp.inventory_changed
""")


	# /advancements/break_obsidian
	write_function(f"{path}/advancements/break_obsidian", """
advancement revoke @s only switch:rush_the_point/break_obsidian
execute if score #engine_state switch.data matches 3 if data storage switch:main {current_game:"rush_the_point"} run function switch:modes/rush_the_point/advancements/break_obsidian_confirm
""")

	# /advancements/break_obsidian_confirm (translation ref rewritten)
	write_function(f"{path}/advancements/break_obsidian_confirm", """
scoreboard players set #color switch.data 0
execute store success score #color switch.data if entity @s[team=switch.rush_the_point.blue]
execute as @a[tag=!detached] at @s run playsound entity.player.levelup ambient @s
scoreboard players remove @s switch.temp.break_obsidian 1

execute if score #color switch.data matches 0 run scoreboard players add #red_points switch.data 250
execute if score #color switch.data matches 1 run scoreboard players add #blue_points switch.data 250

# Random
execute store result score #random switch.data run random value 0..9

# Color red
execute if score #random switch.data matches 0 if score #color switch.data matches 0 run effect give @a[tag=!detached,team=switch.rush_the_point.red] absorption 60 4 true
execute if score #random switch.data matches 1 if score #color switch.data matches 0 run effect give @a[tag=!detached,team=switch.rush_the_point.red] speed 60 0 true
execute if score #random switch.data matches 2 if score #color switch.data matches 0 run effect give @a[tag=!detached,team=switch.rush_the_point.red] strength 60 0 true
execute if score #random switch.data matches 3 if score #color switch.data matches 0 run effect give @a[tag=!detached,team=switch.rush_the_point.red] resistance 60 0 true
execute if score #random switch.data matches 4 if score #color switch.data matches 0 run effect give @a[tag=!detached,team=switch.rush_the_point.blue] wither 60 0 true
execute if score #random switch.data matches 5 if score #color switch.data matches 0 run effect give @a[tag=!detached,team=switch.rush_the_point.blue] slowness 60 1 true
execute if score #random switch.data matches 6 if score #color switch.data matches 0 run effect give @a[tag=!detached,team=switch.rush_the_point.blue] glowing 60 0 true
execute if score #random switch.data matches 7 if score #color switch.data matches 0 run effect give @a[tag=!detached,team=switch.rush_the_point.blue] levitation 1 20 true
execute if score #random switch.data matches 8 if score #color switch.data matches 0 run effect give @a[tag=!detached,team=switch.rush_the_point.blue] wither 60 0 true
execute if score #random switch.data matches 9 if score #color switch.data matches 0 run effect give @a[tag=!detached,team=switch.rush_the_point.blue] weakness 60 0 true

# Color blue
execute if score #random switch.data matches 0 if score #color switch.data matches 1 run effect give @a[tag=!detached,team=switch.rush_the_point.blue] absorption 60 4 true
execute if score #random switch.data matches 1 if score #color switch.data matches 1 run effect give @a[tag=!detached,team=switch.rush_the_point.blue] speed 60 0 true
execute if score #random switch.data matches 2 if score #color switch.data matches 1 run effect give @a[tag=!detached,team=switch.rush_the_point.blue] strength 60 0 true
execute if score #random switch.data matches 3 if score #color switch.data matches 1 run effect give @a[tag=!detached,team=switch.rush_the_point.blue] resistance 60 0 true
execute if score #random switch.data matches 4 if score #color switch.data matches 1 run effect give @a[tag=!detached,team=switch.rush_the_point.red] wither 60 0 true
execute if score #random switch.data matches 5 if score #color switch.data matches 1 run effect give @a[tag=!detached,team=switch.rush_the_point.red] slowness 60 1 true
execute if score #random switch.data matches 6 if score #color switch.data matches 1 run effect give @a[tag=!detached,team=switch.rush_the_point.red] glowing 60 0 true
execute if score #random switch.data matches 7 if score #color switch.data matches 1 run effect give @a[tag=!detached,team=switch.rush_the_point.red] levitation 1 20 true
execute if score #random switch.data matches 8 if score #color switch.data matches 1 run effect give @a[tag=!detached,team=switch.rush_the_point.red] wither 60 0 true
execute if score #random switch.data matches 9 if score #color switch.data matches 1 run effect give @a[tag=!detached,team=switch.rush_the_point.red] weakness 60 0 true

# Messages
function switch:modes/rush_the_point/translations/advancements_break_obsidian_confirm

# Increment
scoreboard players add @s switch.temp.total_obsidian 1
execute unless score #test_mode switch.data matches 1 if score @s switch.temp.total_obsidian matches 5.. run advancement grant @s only switch:visible/43
""")

	# /advancements/killed_player
	write_function(f"{path}/advancements/killed_player", """
advancement revoke @s only switch:rush_the_point/killed_player
execute if score #engine_state switch.data matches 3 if data storage switch:main {current_game:"rush_the_point"} run function switch:modes/rush_the_point/advancements/killed_player_confirm
""")

	# /advancements/killed_player_confirm
	write_function(f"{path}/advancements/killed_player_confirm", """
scoreboard players set #color switch.data 0
execute store success score #color switch.data if entity @s[team=switch.rush_the_point.blue]

execute if score #color switch.data matches 0 run scoreboard players add #red_points switch.data 15
execute if score #color switch.data matches 1 run scoreboard players add #blue_points switch.data 15
""")

	# /bonus_reload (translation ref rewritten)
	write_function(f"{path}/bonus_reload", """
# Place random
execute store result score #random switch.data run random value 0..3
execute if score #random switch.data matches 0 run setblock 14000 100 13925 obsidian
execute if score #random switch.data matches 1 run setblock 14000 100 14000 obsidian
execute if score #random switch.data matches 2 run setblock 14000 100 14075 obsidian
execute if score #random switch.data matches 3 run setblock 14000 86 14000 obsidian

function switch:modes/rush_the_point/translations/bonus_reload
execute as @a[tag=!detached] at @s run playsound entity.villager.hurt ambient @s
execute as @a[tag=!detached] at @s run playsound entity.villager.hurt ambient @s
execute as @a[tag=!detached] at @s run playsound entity.villager.hurt ambient @s
scoreboard players set #bonus_reload switch.data 0
""")

	# /classes/_common
	write_function(f"{path}/classes/_common", """
clear @s
effect clear @s
attribute @s attack_speed base set 2048
attribute @s jump_strength base reset
""")

	# /classes/archer
	write_function(f"{path}/classes/archer", """
function switch:modes/rush_the_point/classes/_common

item replace entity @s[team=switch.rush_the_point.blue] armor.head with leather_helmet[unbreakable={},tooltip_display={"hidden_components":["minecraft:unbreakable"]},dyed_color=3827848,enchantments={"protection":2}]
item replace entity @s[team=switch.rush_the_point.blue] armor.chest with leather_chestplate[unbreakable={},tooltip_display={"hidden_components":["minecraft:unbreakable"]},dyed_color=3827848,enchantments={"protection":2}]
item replace entity @s[team=switch.rush_the_point.blue] armor.legs with leather_leggings[unbreakable={},tooltip_display={"hidden_components":["minecraft:unbreakable"]},dyed_color=3827848,enchantments={"protection":2}]
item replace entity @s[team=switch.rush_the_point.blue] armor.feet with leather_boots[unbreakable={},tooltip_display={"hidden_components":["minecraft:unbreakable"]},dyed_color=3827848,enchantments={"protection":2}]

item replace entity @s[team=switch.rush_the_point.red] armor.head with leather_helmet[unbreakable={},tooltip_display={"hidden_components":["minecraft:unbreakable"]},dyed_color=16731469,enchantments={"protection":2}]
item replace entity @s[team=switch.rush_the_point.red] armor.chest with leather_chestplate[unbreakable={},tooltip_display={"hidden_components":["minecraft:unbreakable"]},dyed_color=16731469,enchantments={"protection":2}]
item replace entity @s[team=switch.rush_the_point.red] armor.legs with leather_leggings[unbreakable={},tooltip_display={"hidden_components":["minecraft:unbreakable"]},dyed_color=16731469,enchantments={"protection":2}]
item replace entity @s[team=switch.rush_the_point.red] armor.feet with leather_boots[unbreakable={},tooltip_display={"hidden_components":["minecraft:unbreakable"]},dyed_color=16731469,enchantments={"protection":2}]

item replace entity @s weapon.offhand with cut_sandstone[can_place_on={blocks:"#switch:rush_the_point/can_place_on"}] 64
item replace entity @s hotbar.0 with bow[unbreakable={},tooltip_display={"hidden_components":["minecraft:unbreakable"]},enchantments={"power":1},can_break={blocks:"#switch:rush_the_point/can_break"}]
item replace entity @s hotbar.1 with iron_sword[unbreakable={},tooltip_display={"hidden_components":["minecraft:unbreakable"]},enchantments={"knockback":1},can_break={blocks:"#switch:rush_the_point/can_break"}]
item replace entity @s hotbar.2 with diamond_pickaxe[unbreakable={},tooltip_display={"hidden_components":["minecraft:unbreakable"]},can_break={blocks:"#switch:rush_the_point/can_break"}]
item replace entity @s hotbar.3 with cut_sandstone[can_place_on={blocks:"#switch:rush_the_point/can_place_on"}] 64
item replace entity @s hotbar.4 with ender_pearl
item replace entity @s hotbar.6 with potion[potion_contents="minecraft:strong_healing"]
item replace entity @s hotbar.7 with potion[potion_contents="minecraft:strong_healing"]
item replace entity @s hotbar.8 with bread 42
item replace entity @s inventory.0 with arrow 64
""")

	# /classes/aviateur
	write_function(f"{path}/classes/aviateur", """
function switch:modes/rush_the_point/classes/_common

item replace entity @s armor.chest with elytra[unbreakable={},tooltip_display={"hidden_components":["minecraft:unbreakable"]}]

item replace entity @s[team=switch.rush_the_point.blue] armor.head with leather_helmet[unbreakable={},tooltip_display={"hidden_components":["minecraft:unbreakable"]},dyed_color=546752,enchantments={"protection":4}]
item replace entity @s[team=switch.rush_the_point.blue] armor.legs with leather_leggings[unbreakable={},tooltip_display={"hidden_components":["minecraft:unbreakable"]},dyed_color=546752,enchantments={"protection":4}]
item replace entity @s[team=switch.rush_the_point.blue] armor.feet with leather_boots[unbreakable={},tooltip_display={"hidden_components":["minecraft:unbreakable"]},dyed_color=546752,enchantments={"protection":4}]

item replace entity @s[team=switch.rush_the_point.red] armor.head with leather_helmet[unbreakable={},tooltip_display={"hidden_components":["minecraft:unbreakable"]},dyed_color=13369344,enchantments={"protection":4}]
item replace entity @s[team=switch.rush_the_point.red] armor.legs with leather_leggings[unbreakable={},tooltip_display={"hidden_components":["minecraft:unbreakable"]},dyed_color=13369344,enchantments={"protection":4}]
item replace entity @s[team=switch.rush_the_point.red] armor.feet with leather_boots[unbreakable={},tooltip_display={"hidden_components":["minecraft:unbreakable"]},dyed_color=13369344,enchantments={"protection":4}]

item replace entity @s weapon.offhand with cut_sandstone[can_place_on={blocks:"#switch:rush_the_point/can_place_on"}] 64
item replace entity @s hotbar.0 with diamond_sword[unbreakable={},tooltip_display={"hidden_components":["minecraft:unbreakable"]},enchantments={"knockback":1},can_break={blocks:"#switch:rush_the_point/can_break"}]
item replace entity @s hotbar.1 with diamond_pickaxe[unbreakable={},tooltip_display={"hidden_components":["minecraft:unbreakable"]},can_break={blocks:"#switch:rush_the_point/can_break"}]
item replace entity @s hotbar.2 with cut_sandstone[can_place_on={blocks:"#switch:rush_the_point/can_place_on"}] 64
item replace entity @s hotbar.6 with potion[potion_contents="minecraft:strong_healing"]
item replace entity @s hotbar.7 with potion[potion_contents="minecraft:strong_healing"]
item replace entity @s hotbar.8 with bread 42

scoreboard players set @s switch.temp.elytra_cooldown 120
""")

	# /classes/builder
	write_function(f"{path}/classes/builder", """
function switch:modes/rush_the_point/classes/_common


item replace entity @s[team=switch.rush_the_point.blue] armor.head with leather_helmet[unbreakable={},tooltip_display={"hidden_components":["minecraft:unbreakable"]},dyed_color=3827848,enchantments={"protection":2}]
item replace entity @s[team=switch.rush_the_point.blue] armor.chest with leather_chestplate[unbreakable={},tooltip_display={"hidden_components":["minecraft:unbreakable"]},dyed_color=3827848,enchantments={"protection":2}]
item replace entity @s[team=switch.rush_the_point.blue] armor.legs with leather_leggings[unbreakable={},tooltip_display={"hidden_components":["minecraft:unbreakable"]},dyed_color=3827848,enchantments={"protection":2}]
item replace entity @s[team=switch.rush_the_point.blue] armor.feet with leather_boots[unbreakable={},tooltip_display={"hidden_components":["minecraft:unbreakable"]},dyed_color=3827848,enchantments={"protection":2}]

item replace entity @s[team=switch.rush_the_point.red] armor.head with leather_helmet[unbreakable={},tooltip_display={"hidden_components":["minecraft:unbreakable"]},dyed_color=16731469,enchantments={"protection":2}]
item replace entity @s[team=switch.rush_the_point.red] armor.chest with leather_chestplate[unbreakable={},tooltip_display={"hidden_components":["minecraft:unbreakable"]},dyed_color=16731469,enchantments={"protection":2}]
item replace entity @s[team=switch.rush_the_point.red] armor.legs with leather_leggings[unbreakable={},tooltip_display={"hidden_components":["minecraft:unbreakable"]},dyed_color=16731469,enchantments={"protection":2}]
item replace entity @s[team=switch.rush_the_point.red] armor.feet with leather_boots[unbreakable={},tooltip_display={"hidden_components":["minecraft:unbreakable"]},dyed_color=16731469,enchantments={"protection":2}]

item replace entity @s weapon.offhand with cut_sandstone[can_place_on={blocks:"#switch:rush_the_point/can_place_on"}] 64
item replace entity @s hotbar.0 with iron_sword[unbreakable={},tooltip_display={"hidden_components":["minecraft:unbreakable"]},enchantments={"knockback":1},can_break={blocks:"#switch:rush_the_point/can_break"}]
item replace entity @s hotbar.1 with smooth_sandstone_stairs[can_place_on={blocks:"#switch:rush_the_point/can_place_on"}] 64
item replace entity @s hotbar.2 with diamond_pickaxe[unbreakable={},tooltip_display={"hidden_components":["minecraft:unbreakable"]},can_break={blocks:"#switch:rush_the_point/can_break"}]
item replace entity @s hotbar.3 with cut_sandstone[can_place_on={blocks:"#switch:rush_the_point/can_place_on"}] 64
item replace entity @s hotbar.5 with ravager_spawn_egg[can_place_on={blocks:"#switch:rush_the_point/can_place_on"}]
item replace entity @s hotbar.6 with potion[potion_contents="minecraft:strong_healing"]
item replace entity @s hotbar.7 with potion[potion_contents="minecraft:strong_healing"]
item replace entity @s hotbar.8 with bread 42
""")

	# /classes/destroyer
	write_function(f"{path}/classes/destroyer", """
function switch:modes/rush_the_point/classes/_common

item replace entity @s[team=switch.rush_the_point.blue] armor.head with leather_helmet[unbreakable={},tooltip_display={"hidden_components":["minecraft:unbreakable"]},dyed_color=3827848,enchantments={"protection":2}]
item replace entity @s[team=switch.rush_the_point.blue] armor.chest with leather_chestplate[unbreakable={},tooltip_display={"hidden_components":["minecraft:unbreakable"]},dyed_color=3827848,enchantments={"protection":2}]
item replace entity @s[team=switch.rush_the_point.blue] armor.legs with leather_leggings[unbreakable={},tooltip_display={"hidden_components":["minecraft:unbreakable"]},dyed_color=3827848,enchantments={"protection":2}]
item replace entity @s[team=switch.rush_the_point.blue] armor.feet with leather_boots[unbreakable={},tooltip_display={"hidden_components":["minecraft:unbreakable"]},dyed_color=3827848,enchantments={"protection":2}]

item replace entity @s[team=switch.rush_the_point.red] armor.head with leather_helmet[unbreakable={},tooltip_display={"hidden_components":["minecraft:unbreakable"]},dyed_color=16731469,enchantments={"protection":2}]
item replace entity @s[team=switch.rush_the_point.red] armor.chest with leather_chestplate[unbreakable={},tooltip_display={"hidden_components":["minecraft:unbreakable"]},dyed_color=16731469,enchantments={"protection":2}]
item replace entity @s[team=switch.rush_the_point.red] armor.legs with leather_leggings[unbreakable={},tooltip_display={"hidden_components":["minecraft:unbreakable"]},dyed_color=16731469,enchantments={"protection":2}]
item replace entity @s[team=switch.rush_the_point.red] armor.feet with leather_boots[unbreakable={},tooltip_display={"hidden_components":["minecraft:unbreakable"]},dyed_color=16731469,enchantments={"protection":2}]

item replace entity @s weapon.offhand with cut_sandstone[can_place_on={blocks:"#switch:rush_the_point/can_place_on"}] 64
item replace entity @s hotbar.0 with warped_fungus_on_a_stick[unbreakable={},tooltip_display={"hidden_components":["minecraft:unbreakable"]},item_name={"text":"Fireball Wand","color":"gold","italic":false},item_model="switch:fireball_wand",custom_data={switch:{fireball_wand:true}}]
item replace entity @s hotbar.1 with iron_sword[unbreakable={},tooltip_display={"hidden_components":["minecraft:unbreakable"]},enchantments={"knockback":1},can_break={blocks:"#switch:rush_the_point/can_break"}]
item replace entity @s hotbar.2 with diamond_pickaxe[unbreakable={},tooltip_display={"hidden_components":["minecraft:unbreakable"]},can_break={blocks:"#switch:rush_the_point/can_break"}]
item replace entity @s hotbar.3 with cut_sandstone[can_place_on={blocks:"#switch:rush_the_point/can_place_on"}] 64
item replace entity @s hotbar.6 with potion[potion_contents="minecraft:strong_healing"]
item replace entity @s hotbar.7 with potion[potion_contents="minecraft:strong_healing"]
item replace entity @s hotbar.8 with bread 42
""")

	# /classes/guerrier
	write_function(f"{path}/classes/guerrier", """
function switch:modes/rush_the_point/classes/_common

item replace entity @s[team=switch.rush_the_point.blue] armor.head with leather_helmet[unbreakable={},tooltip_display={"hidden_components":["minecraft:unbreakable"]},dyed_color=3827848,enchantments={"protection":4}]
item replace entity @s[team=switch.rush_the_point.blue] armor.chest with leather_chestplate[unbreakable={},tooltip_display={"hidden_components":["minecraft:unbreakable"]},dyed_color=546752,enchantments={"protection":4}]
item replace entity @s[team=switch.rush_the_point.blue] armor.legs with leather_leggings[unbreakable={},tooltip_display={"hidden_components":["minecraft:unbreakable"]},dyed_color=3827848,enchantments={"protection":4}]
item replace entity @s[team=switch.rush_the_point.blue] armor.feet with leather_boots[unbreakable={},tooltip_display={"hidden_components":["minecraft:unbreakable"]},dyed_color=546752,enchantments={"protection":4}]

item replace entity @s[team=switch.rush_the_point.red] armor.head with leather_helmet[unbreakable={},tooltip_display={"hidden_components":["minecraft:unbreakable"]},dyed_color=16731469,enchantments={"protection":4}]
item replace entity @s[team=switch.rush_the_point.red] armor.chest with leather_chestplate[unbreakable={},tooltip_display={"hidden_components":["minecraft:unbreakable"]},dyed_color=13369344,enchantments={"protection":4}]
item replace entity @s[team=switch.rush_the_point.red] armor.legs with leather_leggings[unbreakable={},tooltip_display={"hidden_components":["minecraft:unbreakable"]},dyed_color=16731469,enchantments={"protection":4}]
item replace entity @s[team=switch.rush_the_point.red] armor.feet with leather_boots[unbreakable={},tooltip_display={"hidden_components":["minecraft:unbreakable"]},dyed_color=13369344,enchantments={"protection":4}]

item replace entity @s weapon.offhand with cut_sandstone[can_place_on={blocks:"#switch:rush_the_point/can_place_on"}] 64
item replace entity @s hotbar.0 with diamond_sword[unbreakable={},tooltip_display={"hidden_components":["minecraft:unbreakable"]},enchantments={"knockback":1},can_break={blocks:"#switch:rush_the_point/can_break"}]
item replace entity @s hotbar.1 with diamond_pickaxe[unbreakable={},tooltip_display={"hidden_components":["minecraft:unbreakable"]},can_break={blocks:"#switch:rush_the_point/can_break"}]
item replace entity @s hotbar.2 with cut_sandstone[can_place_on={blocks:"#switch:rush_the_point/can_place_on"}] 64
item replace entity @s hotbar.6 with potion[potion_contents="minecraft:strong_healing"]
item replace entity @s hotbar.7 with potion[potion_contents="minecraft:strong_healing"]
item replace entity @s hotbar.8 with bread 42
""")

	# /classes/main (translation ref rewritten)
	write_function(f"{path}/classes/main", """
function switch:modes/_common/detect_chosen_class

# Elytra cooldown
scoreboard players add @s switch.temp.elytra_cooldown 0
function switch:modes/rush_the_point/translations/classes_
execute if score @s switch.temp.chosen_class matches 3 unless score @s switch.temp.elytra_cooldown matches 0 at @s run playsound entity.villager.no ambient @s
execute if score @s switch.temp.chosen_class matches 3 unless score @s switch.temp.elytra_cooldown matches 0 run function switch:modes/rush_the_point/teleport_to_spawn

# Switch case
execute if score @s switch.temp.chosen_class matches 1 run function switch:modes/rush_the_point/classes/guerrier
execute if score @s switch.temp.chosen_class matches 2 run function switch:modes/rush_the_point/classes/archer
execute if score @s switch.temp.chosen_class matches 3 run function switch:modes/rush_the_point/classes/aviateur
execute if score @s switch.temp.chosen_class matches 4 run function switch:modes/rush_the_point/classes/builder
execute if score @s switch.temp.chosen_class matches 5 run function switch:modes/rush_the_point/classes/destroyer
""")

	# /death/detect
	write_function(f"{path}/death/detect", """
# Detect if linked player is missing

scoreboard players set #success switch.data 0
scoreboard players operation #player_id switch.id = @s switch.id
execute store success score #success switch.data run tag @a[tag=!detached,tag=!switch.to_tp,predicate=switch:has_same_id] add switch.temp

execute if score #success switch.data matches 0 run tag @s add switch.player_dead
execute if score #success switch.data matches 1 run tp @s @p[tag=switch.temp]
execute if score #success switch.data matches 1 if entity @p[tag=switch.temp,tag=switch.temp.inventory_changed] run data modify entity @s data.Inventory set from entity @p[tag=switch.temp] Inventory
execute if score #success switch.data matches 1 if entity @p[tag=switch.temp,tag=switch.temp.inventory_changed] run data modify entity @s data.Inventory append from entity @p[tag=switch.temp] equipment.offhand
execute if score #success switch.data matches 1 run tag @p[tag=switch.temp,tag=switch.temp.inventory_changed] remove switch.temp.inventory_changed

tag @a remove switch.temp
""")

	# /death/for_global
	write_function(f"{path}/death/for_global", """
scoreboard players operation #player_id switch.id = @s switch.id
clear @a[tag=!detached,predicate=switch:has_same_id]

function switch:modes/rush_the_point/death/inventory_filter
execute if data entity @s data.Inventory[0] at @s run function switch:modes/_common/death/inventory_drop

tag @s add switch.processed
tp @s 0 69 0
""")

	# /death/inventory_filter
	write_function(f"{path}/death/inventory_filter", """
data modify storage switch:main Inventory set value []
data modify storage switch:main Inventory append from entity @s data.Inventory[{id:"minecraft:potion"}]
data modify storage switch:main Inventory append from entity @s data.Inventory[{id:"minecraft:cut_sandstone"}]
data modify entity @s data.Inventory set from storage switch:main Inventory
""")

	# /explode_tnt
	write_function(f"{path}/explode_tnt", """
kill @s
playsound switch:explosion ambient @a[distance=..20]
particle minecraft:explosion ~ ~ ~ .5 .5 .5 1 10 force @a[distance=..50]
fill ~2 ~3 ~ ~-2 ~-3 ~ air replace #switch:rush_the_point/can_break
fill ~ ~3 ~2 ~ ~-3 ~-2 air replace #switch:rush_the_point/can_break
fill ~3 ~2 ~ ~-3 ~-2 ~ air replace #switch:rush_the_point/can_break
fill ~ ~2 ~3 ~ ~-2 ~-3 air replace #switch:rush_the_point/can_break
fill ~-2 ~-2 ~-2 ~2 ~2 ~2 air replace #switch:rush_the_point/can_break
fill ~-2 ~ ~-3 ~2 ~ ~3 air replace #switch:rush_the_point/can_break
fill ~-3 ~ ~-2 ~3 ~ ~2 air replace #switch:rush_the_point/can_break
""")


	# /fireball/no_cooldown (translation ref rewritten)
	write_function(f"{path}/fireball/no_cooldown", """
# Playsound
playsound entity.villager.no ambient @s

# Convert ticks to seconds
scoreboard players operation #seconds switch.temp.fireball_cooldown = @s switch.temp.fireball_cooldown
scoreboard players operation #seconds switch.temp.fireball_cooldown /= #20 switch.data
scoreboard players operation #digits switch.temp.fireball_cooldown = @s switch.temp.fireball_cooldown
scoreboard players operation #digits switch.temp.fireball_cooldown %= #20 switch.data
scoreboard players operation #digits switch.temp.fireball_cooldown /= #2 switch.data

# Tellraw
function switch:modes/rush_the_point/translations/fireball_no_cooldown
""")

	# /fireball/right_click
	write_function(f"{path}/fireball/right_click", """
summon fireball ^ ^1 ^1 {Tags:["switch.new"],ExplosionPower:0b,NoGravity:true,Passengers:[{id:"armor_stand",Tags:["switch.fireball"],NoGravity:true,Silent:true,Invulnerable:true,Marker:true,Invisible:true}]}

data modify storage switch:main Rotation set from entity @s Rotation
execute positioned 0 0 0 summon marker run function switch:modes/_common/fireball/get_motion
execute as @e[type=fireball,tag=switch.new] run function switch:modes/_common/fireball/set_motion

scoreboard players set @s[gamemode=!creative] switch.temp.fireball_cooldown 200
playsound entity.ghast.shoot ambient @s
""")


	# /items_check
	write_function(f"{path}/items_check", """
tag @s add switch.checked

execute if data entity @s Item{id:"smooth_sandstone_stairs"} unless data entity @s Item.components."minecraft:can_place_on".blocks run data modify entity @s Item.components."minecraft:can_place_on".blocks set value "#switch:rush_the_point/can_place_on"
execute if data entity @s Item{id:"cut_sandstone"} unless data entity @s Item.components."minecraft:can_place_on".blocks run data modify entity @s Item.components."minecraft:can_place_on".blocks set value "#switch:rush_the_point/can_place_on"
execute if data entity @s Item{id:"tnt"} unless data entity @s Item.components."minecraft:can_place_on".blocks run data modify entity @s Item.components."minecraft:can_place_on".blocks set value "#switch:rush_the_point/can_place_on"
execute if data entity @s Item{id:"glass_bottle"} run kill @s
execute if data entity @s Item{id:"obsidian"} run kill @s
execute if data entity @s Item.components."minecraft:custom_data".switch.class_item run kill @s
""")

	# /joined
	write_function(f"{path}/joined", """
execute if score #reconnect switch.data matches 0 run function switch:modes/rush_the_point/roles/main
function switch:translations/common/joined_reconnect
execute if score #reconnect switch.data matches 1 run function switch:modes/rush_the_point/teleport_to_spawn
""")

	# /process_end (translation ref rewritten)
	write_function(f"{path}/process_end", """
scoreboard players add #process_end switch.data 1

execute if score #process_end switch.data matches 1 run gamemode spectator @a[tag=!detached,sort=random]
function switch:modes/rush_the_point/translations/process_end
execute if score #process_end switch.data matches 1 if score #red_points switch.data > #blue_points switch.data as @a[tag=!detached,team=switch.rush_the_point.red] at @s run function switch:engine/add_win
execute if score #process_end switch.data matches 1 if score #red_points switch.data < #blue_points switch.data as @a[tag=!detached,team=switch.rush_the_point.blue] at @s run function switch:engine/add_win
execute if score #process_end switch.data matches 1 unless score #test_mode switch.data matches 1 if score #red_points switch.data matches 7500.. run advancement grant @a[tag=!detached,team=switch.rush_the_point.red] only switch:visible/55
execute if score #process_end switch.data matches 1 unless score #test_mode switch.data matches 1 if score #blue_points switch.data matches 7500.. run advancement grant @a[tag=!detached,team=switch.rush_the_point.blue] only switch:visible/55
execute if score #process_end switch.data matches 1 as @a[tag=!detached] at @s run playsound item.totem.use ambient @s
execute if score #process_end switch.data matches 1 run tag @a remove switch.to_tp
execute if score #process_end switch.data matches 1 as @a[tag=!detached] run function switch:player/trigger/rating/print_current_game

# Obligatoire
execute if score #process_end switch.data matches 200 run function switch:engine/restart
""")

	# /right_click
	write_function(f"{path}/right_click", """
# Revoke advancement and make the right click action
advancement revoke @s only switch:rush_the_point/right_click
execute if data entity @s SelectedItem.components."minecraft:custom_data".switch.class_item store result score @s switch.temp.chosen_class run data get entity @s SelectedItem.components."minecraft:custom_data".switch.class_item
function switch:modes/rush_the_point/classes/main
""")

	# /roles/main
	write_function(f"{path}/roles/main", """
tag @s add switch.temp

# Role selection
scoreboard players add #next_role switch.data 1
execute if score #next_role switch.data matches 1 run team join switch.rush_the_point.red @s
execute if score #next_role switch.data matches 2 run team join switch.rush_the_point.blue @s
execute if score #next_role switch.data matches 2 run scoreboard players set #next_role switch.data 0

# Linked marker for offline players
setblock 0 8 0 yellow_shulker_box
loot insert 0 8 0 loot switch:get_username
summon marker 0 8 0 {Tags:["switch.temp.player","switch.new"]}
scoreboard players operation #player_id switch.id = @s switch.id
execute as @e[tag=switch.new] run function switch:modes/rush_the_point/roles/marker
setblock 0 8 0 air

tag @s remove switch.temp

function switch:modes/rush_the_point/teleport_to_spawn
execute at @s run playsound entity.player.levelup ambient @s
""")

	# /roles/marker
	write_function(f"{path}/roles/marker", """
scoreboard players operation @s switch.id = #player_id switch.id
data modify entity @s data.name set from block 0 8 0 Items[0].components."minecraft:profile".name
tag @s add switch.temp.player
tag @s remove switch.new
""")

	# /second
	write_function(f"{path}/second", """
function switch:modes/rush_the_point/second_common
execute if score #remaining_time switch.data matches 1.. run function switch:modes/rush_the_point/xp_bar
""")

	# /second_common
	write_function(f"{path}/second_common", """
# Increment game timer and decrement remaining time
scoreboard players add #rush_the_point_seconds switch.data 1
execute if score #remaining_time switch.data matches 1.. run scoreboard players remove #remaining_time switch.data 1

# When game starts (0 seconds), reset player attributes and clear effects
execute if score #rush_the_point_seconds switch.data matches 0 as @a[tag=!detached] run attribute @s jump_strength base reset
execute if score #rush_the_point_seconds switch.data matches 0 run effect clear @a[tag=!detached]

# Handle elytra cooldown timer
scoreboard players remove @a[scores={switch.temp.elytra_cooldown=1..}] switch.temp.elytra_cooldown 1

# Handle bonus item reload timer
scoreboard players add #bonus_reload switch.data 1
execute if score #bonus_reload switch.data matches 60.. run function switch:modes/rush_the_point/bonus_reload

# Spawn bridge snowballs at specific intervals
# First pair at start of reload cycle
execute if score #bonus_reload switch.data matches 0 run summon item 14063 103 14000 {Item:{id:"minecraft:snowball",count:1,components:{"minecraft:item_name":{"text":"Bridge Snowball","color":"yellow","italic":false}}},NoGravity:true,Glowing:true,CustomName:{"text":"Bridge Snowball","color":"yellow","italic":false},CustomNameVisible:true}
execute if score #bonus_reload switch.data matches 0 run summon item 13937 103 14000 {Item:{id:"minecraft:snowball",count:1,components:{"minecraft:item_name":{"text":"Bridge Snowball","color":"yellow","italic":false}}},NoGravity:true,Glowing:true,CustomName:{"text":"Bridge Snowball","color":"yellow","italic":false},CustomNameVisible:true}
# Second pair halfway through reload cycle
execute if score #bonus_reload switch.data matches 31 run summon item 14063 103 14000 {Item:{id:"minecraft:snowball",count:1,components:{"minecraft:item_name":{"text":"Bridge Snowball","color":"yellow","italic":false}}},NoGravity:true,Glowing:true,CustomName:{"text":"Bridge Snowball","color":"yellow","italic":false},CustomNameVisible:true}
execute if score #bonus_reload switch.data matches 31 run summon item 13937 103 14000 {Item:{id:"minecraft:snowball",count:1,components:{"minecraft:item_name":{"text":"Bridge Snowball","color":"yellow","italic":false}}},NoGravity:true,Glowing:true,CustomName:{"text":"Bridge Snowball","color":"yellow","italic":false},CustomNameVisible:true}

# Run translations
scoreboard players operation #mins switch.data = #remaining_time switch.data
scoreboard players operation #mins switch.data /= #60 switch.data
scoreboard players operation #secs switch.data = #remaining_time switch.data
scoreboard players operation #secs switch.data %= #60 switch.data
function switch:translations/common/basic_actionbar
""")

	# /start (translation ref rewritten)
	write_function(f"{path}/start", """
function switch:modes/rush_the_point/start_common
function switch:modes/rush_the_point/translations/start

# Summon the points markers
summon marker 14000 99 14000 {Tags:["switch.rush_the_point.zone","switch.rush_the_point.center"]}
summon marker 14025 99 14050 {Tags:["switch.rush_the_point.zone","switch.rush_the_point.side"]}
summon marker 14025 99 13950 {Tags:["switch.rush_the_point.zone","switch.rush_the_point.side"]}
summon marker 13975 99 14050 {Tags:["switch.rush_the_point.zone","switch.rush_the_point.side"]}
summon marker 13975 99 13950 {Tags:["switch.rush_the_point.zone","switch.rush_the_point.side"]}

scoreboard players set #remaining_time switch.data 610
scoreboard players set #rush_the_point_seconds switch.data -20
scoreboard players set #rush_the_point_ticks switch.data 0
scoreboard objectives add switch.temp.zone_capture dummy
""")

	# /start_common (§ chars + braces: plain string)
	write_function(f"{path}/start_common", """
effect give @a[tag=!detached] resistance 10 255 true
effect give @a[tag=!detached] saturation 10 255 true
effect give @a[tag=!detached] regeneration 10 255 true
effect give @a[tag=!detached] weakness 10 255 true
function switch:utils/set_dynamic_time

## Placement de la map et des joueurs
function switch:utils/choose_map_for {id:"rush_the_point", maps:["rush_the_point_1"]}

execute in switch:game run gamerule minecraft:natural_health_regeneration false
execute in switch:game run gamerule minecraft:keep_inventory true
execute in switch:game run gamerule minecraft:block_drops false

scoreboard objectives add switch.temp.cooldown dummy
scoreboard objectives add switch.temp.fireball_cooldown dummy
scoreboard objectives add switch.temp.chosen_class dummy
scoreboard objectives add switch.temp.elytra_cooldown dummy
scoreboard objectives add switch.temp.break_obsidian minecraft.mined:minecraft.obsidian
scoreboard objectives add switch.temp.total_obsidian dummy
scoreboard objectives add switch.temp.sidebar dummy {"text":"Points","color":"yellow"}
scoreboard objectives setdisplay sidebar switch.temp.sidebar

scoreboard players set #bonus_reload switch.data 30
scoreboard players set #blue_points switch.data 0
scoreboard players set #red_points switch.data 0
scoreboard players set #process_end switch.data 0
scoreboard players set #red_flag_pickups switch.data 0
scoreboard players set #blue_flag_pickups switch.data 0

team add switch.temp.sidebar.5 {"text":"[Sidebar 5]"}
team add switch.temp.sidebar.3 {"text":"[Sidebar 3]"}
team add switch.temp.sidebar.2 {"text":"[Sidebar 2]"}
team add switch.temp.sidebar.1 {"text":"[Sidebar 1]"}
team modify switch.temp.sidebar.5 suffix [{"text":"Goal: "},{"text":"7500","color":"yellow"},{"text":" points"}]
team modify switch.temp.sidebar.3 suffix [{"text":"Time remaining: "},{"text":"10","color":"yellow"},{"text":"m"},{"text":"00","color":"yellow"},{"text":"s"}]
team modify switch.temp.sidebar.2 suffix [{"text":"Blue Team: ","color":"blue"},{"text":"0","color":"yellow"}]
team modify switch.temp.sidebar.1 suffix [{"text":"Red Team: ","color":"red"},{"text":"0","color":"yellow"}]
team modify switch.temp.sidebar.2 color blue
team modify switch.temp.sidebar.1 color red
team join switch.temp.sidebar.5 §3
team join switch.temp.sidebar.3 §5
team join switch.temp.sidebar.2 §2
team join switch.temp.sidebar.1 §1
scoreboard players set §5 switch.temp.sidebar 5
scoreboard players set §r switch.temp.sidebar 4
scoreboard players set §3 switch.temp.sidebar 3
scoreboard players set §2 switch.temp.sidebar 2
scoreboard players set §1 switch.temp.sidebar 1
scoreboard players display numberformat §5 switch.temp.sidebar blank
scoreboard players display numberformat §r switch.temp.sidebar blank
scoreboard players display numberformat §3 switch.temp.sidebar blank
scoreboard players display numberformat §2 switch.temp.sidebar blank
scoreboard players display numberformat §1 switch.temp.sidebar blank

# Choix des rôles + give d'items
team add switch.rush_the_point.red {"text":"[Red]","color":"red"}
team add switch.rush_the_point.blue {"text":"[Blue]","color":"blue"}
team modify switch.rush_the_point.red color red
team modify switch.rush_the_point.blue color blue
team modify switch.rush_the_point.red nametagVisibility hideForOtherTeams
team modify switch.rush_the_point.blue nametagVisibility hideForOtherTeams
team modify switch.rush_the_point.red friendlyFire false
team modify switch.rush_the_point.blue friendlyFire false
team modify switch.rush_the_point.red collisionRule never
team modify switch.rush_the_point.blue collisionRule never
scoreboard players set #next_role switch.data 0
execute as @a[tag=!detached,sort=random] at @s run function switch:modes/rush_the_point/roles/main
""")

	# /stop
	write_function(f"{path}/stop", """
tag @a remove switch.to_tp
team remove switch.rush_the_point.red
team remove switch.rush_the_point.blue
scoreboard objectives remove switch.temp.cooldown
scoreboard objectives remove switch.temp.fireball_cooldown
scoreboard objectives remove switch.temp.chosen_class
scoreboard objectives remove switch.temp.elytra_cooldown
scoreboard objectives remove switch.temp.break_obsidian
scoreboard objectives remove switch.temp.sidebar
scoreboard objectives remove switch.temp.total_obsidian
scoreboard objectives remove switch.temp.zone_capture
team remove switch.temp.sidebar.5
team remove switch.temp.sidebar.4
team remove switch.temp.sidebar.3
team remove switch.temp.sidebar.2
team remove switch.temp.sidebar.1
""")

	# /teleport_to_death
	write_function(f"{path}/teleport_to_death", """
scoreboard players operation #player_id switch.id = @s switch.id
data modify entity @e[type=!player,predicate=switch:has_same_id,limit=1] Tags set value ["switch.temp.player"]
function switch:modes/rush_the_point/teleport_to_spawn
""")

	# /teleport_to_spawn
	write_function(f"{path}/teleport_to_spawn", """
## Maps spawn
# Map Rush The Point 1
execute if data storage switch:main {map:"rush_the_point_1"} if entity @s[team=switch.rush_the_point.red] in switch:game run tp @s 13930 100.69 14000 -90 0
execute if data storage switch:main {map:"rush_the_point_1"} if entity @s[team=switch.rush_the_point.blue] in switch:game run tp @s 14070 100.69 14000 90 0


## Items to choose a class
tag @s remove switch.to_tp
clear @s
attribute @s jump_strength base set 0
effect give @s resistance infinite 250 true
effect give @s slowness infinite 250 true
effect give @s night_vision infinite 250 true
gamemode adventure @s
scoreboard players set @s switch.temp.chosen_class 0
item replace entity @s hotbar.0 with diamond_sword[item_name={"text":"Guerrier","color":"red","italic":false},item_model="switch:stardust_sword",custom_data={switch:{class_item:1b,rtp_class:true}},consumable={consume_seconds:1024}]
item replace entity @s hotbar.2 with arrow[item_name={"text":"Archer","color":"red","italic":false},item_model="switch:stardust_bow",custom_data={switch:{class_item:2b,rtp_class:true}},consumable={consume_seconds:1024}]
item replace entity @s hotbar.4 with elytra[item_name={"text":"Kamikaze","color":"red","italic":false},lore=[{"text":"Cooldown: 2 minutes","color":"gray","italic":false}],item_model="switch:ultimate_elytra",custom_data={switch:{class_item:3b,rtp_class:true}},consumable={consume_seconds:1024}]
item replace entity @s hotbar.6 with bricks[item_name={"text":"Builder","color":"red","italic":false},custom_data={switch:{class_item:4b,rtp_class:true}},consumable={consume_seconds:1024}]
item replace entity @s hotbar.8 with tnt[item_name={"text":"Destroyer","color":"red","italic":false},custom_data={switch:{class_item:5b,rtp_class:true}},consumable={consume_seconds:1024}]
""")

	# /tick
	write_function(f"{path}/tick", """
# Marker zone tick
execute as @e[type=marker,tag=switch.rush_the_point.zone] at @s run function switch:modes/rush_the_point/tick_zone
function switch:modes/rush_the_point/tick_common

# Détection de fin de partie
execute if score #remaining_time switch.data matches 1.. if score #red_points switch.data matches 7500.. run scoreboard players set #remaining_time switch.data 0
execute if score #remaining_time switch.data matches 1.. if score #blue_points switch.data matches 7500.. run scoreboard players set #remaining_time switch.data 0
execute if score #remaining_time switch.data matches 0 run function switch:modes/rush_the_point/process_end
""")

	# /tick_common
	write_function(f"{path}/tick_common", """
# Timer
scoreboard players add #rush_the_point_ticks switch.data 1

# During preparation phase (negative seconds), apply effects and remove blocks
execute if score #rush_the_point_seconds switch.data matches ..-1 as @a[tag=!detached] run attribute @s jump_strength base set 0
execute if score #rush_the_point_seconds switch.data matches ..-1 run effect give @a[tag=!detached] slowness 100 250 true
execute if score #rush_the_point_seconds switch.data matches ..-1 run effect give @a[tag=!detached] night_vision 100 250 true
execute if score #rush_the_point_seconds switch.data matches ..-1 run setblock 14000 100 13925 air
execute if score #rush_the_point_seconds switch.data matches ..-1 run setblock 14000 100 14000 air
execute if score #rush_the_point_seconds switch.data matches ..-1 run setblock 14000 100 14075 air
execute if score #rush_the_point_seconds switch.data matches ..-1 run setblock 14000 86 14000 air

# Kill all entities under the map & Manage dropped items
execute as @e[tag=!detached,type=!marker,type=!item_display,type=!armor_stand] at @s run kill @s[y=0,dy=20]
execute as @e[type=item,tag=!switch.checked] run function switch:modes/rush_the_point/items_check
execute as @e[type=tnt,nbt={Fuse:1s}] at @s run function switch:modes/rush_the_point/explode_tnt

# Manage Fireball Stick
scoreboard players remove @a[scores={switch.temp.fireball_cooldown=1..}] switch.temp.fireball_cooldown 1
execute as @a[tag=!detached,scores={switch.right_click=1..},nbt={SelectedItem:{components:{"minecraft:custom_data":{switch:{"fireball_wand":true}}}}}] if score @s switch.temp.fireball_cooldown matches 1.. at @s run function switch:modes/rush_the_point/fireball/no_cooldown
execute as @a[tag=!detached,scores={switch.right_click=1..},nbt={SelectedItem:{components:{"minecraft:custom_data":{switch:{"fireball_wand":true}}}}}] unless score @s switch.temp.fireball_cooldown matches 1.. at @s run function switch:modes/rush_the_point/fireball/right_click
execute as @e[type=armor_stand,tag=switch.fireball,predicate=!switch:has_vehicle] at @s positioned ~ ~-1 ~ run function switch:modes/rush_the_point/explode_tnt

# Kill withers after 60s
scoreboard players add @e[type=wither] switch.temp.cooldown 1
kill @e[type=wither,scores={switch.temp.cooldown=1200..}]

# Kill all arrows in ground & Manage snowballs
execute at @e[type=snowball] positioned ~ ~-2 ~ run fill ~-0.25 ~ ~-0.25 ~0.25 ~ ~0.25 cut_sandstone replace air
kill @e[type=arrow,nbt={inBlockState:{}}]

# Class System
execute as @a[tag=!detached,scores={switch.temp.chosen_class=0}] run function switch:modes/rush_the_point/classes/main

# Death System
function switch:utils/on_death_run_function {function:"switch:modes/rush_the_point/teleport_to_death"}
execute if score #remaining_time switch.data matches 1.. as @e[type=marker,tag=switch.temp.player,tag=!switch.player_dead] run function switch:modes/rush_the_point/death/detect
execute if score #remaining_time switch.data matches 1.. as @e[type=marker,tag=switch.player_dead,tag=!switch.processed] run function switch:modes/rush_the_point/death/for_global

# Update sidebar
function switch:modes/_common/update_sidebar
""")

	# /tick_zone (translation ref rewritten)
	write_function(f"{path}/tick_zone", """
scoreboard players add @s switch.temp.zone_capture 0

# Capture zone
scoreboard players set #state switch.data 0
execute if entity @s[tag=switch.rush_the_point.center] if entity @a[tag=!detached,team=switch.rush_the_point.red,distance=..10] run scoreboard players add #state switch.data 1
execute if entity @s[tag=switch.rush_the_point.center] if entity @a[tag=!detached,team=switch.rush_the_point.blue,distance=..10] run scoreboard players add #state switch.data 2
execute if entity @s[tag=switch.rush_the_point.side] if entity @a[tag=!detached,team=switch.rush_the_point.red,distance=..4] run scoreboard players add #state switch.data 1
execute if entity @s[tag=switch.rush_the_point.side] if entity @a[tag=!detached,team=switch.rush_the_point.blue,distance=..4] run scoreboard players add #state switch.data 2

execute if score #state switch.data matches 1 if score @s switch.temp.zone_capture matches -60.. run scoreboard players remove @s switch.temp.zone_capture 1
execute if score #state switch.data matches 2 if score @s switch.temp.zone_capture matches ..60 run scoreboard players add @s switch.temp.zone_capture 1
execute if score #state switch.data matches 3 if score @s switch.temp.zone_capture matches ..-1 run scoreboard players add @s switch.temp.zone_capture 1
execute if score #state switch.data matches 3 if score @s switch.temp.zone_capture matches 1.. run scoreboard players remove @s switch.temp.zone_capture 1

# Being white
execute if score @s switch.temp.zone_capture matches -59..59 run particle dust{color:[1.0,1.0,1.0],scale:1.0} ~ ~1 ~ 1 1 1 0 10
execute if score @s switch.temp.zone_capture matches -59..59 if entity @s[tag=switch.rush_the_point.side] run fill ~-3 ~-1 ~-3 ~3 ~ ~3 white_wool replace #minecraft:wool
execute if score @s switch.temp.zone_capture matches -59..59 if entity @s[tag=switch.rush_the_point.center] run fill ~-10 ~-1 ~-10 ~10 ~ ~10 white_wool replace #minecraft:wool

# Being red
execute if score @s switch.temp.zone_capture matches -39..-20 run particle dust{color:[1.0,0.75,0.75],scale:1.0} ~ ~1 ~ 1 1 1 0 10
execute if score @s switch.temp.zone_capture matches -59..-40 run particle dust{color:[1.0,0.5,0.5],scale:1.0} ~ ~1 ~ 1 1 1 0 10
execute if score @s switch.temp.zone_capture matches ..-60 run particle dust{color:[1.0,0.0,0.0],scale:1.0} ~ ~1 ~ 1 1 1 0 10
execute if score @s switch.temp.zone_capture matches ..-60 if entity @s[tag=switch.rush_the_point.side] run fill ~-3 ~-1 ~-3 ~3 ~ ~3 red_wool replace #minecraft:wool
execute if score @s switch.temp.zone_capture matches ..-60 if entity @s[tag=switch.rush_the_point.center] run fill ~-10 ~-1 ~-10 ~10 ~ ~10 red_wool replace #minecraft:wool
execute if score @s switch.temp.zone_capture matches ..-60 if entity @s[tag=switch.rush_the_point.side] if predicate switch:chance/0.2 run scoreboard players add #red_points switch.data 1
execute if score @s switch.temp.zone_capture matches ..-60 if entity @s[tag=switch.rush_the_point.center] if predicate switch:chance/0.2 run scoreboard players add #red_points switch.data 1

# Being blue
execute if score @s switch.temp.zone_capture matches 20..39 run particle dust{color:[0.75,0.75,1.0],scale:1.0} ~ ~1 ~ 1 1 1 0 10
execute if score @s switch.temp.zone_capture matches 40..59 run particle dust{color:[0.5,0.5,1.0],scale:1.0} ~ ~1 ~ 1 1 1 0 10
execute if score @s switch.temp.zone_capture matches 60.. run particle dust{color:[0.0,0.0,1.0],scale:1.0} ~ ~1 ~ 1 1 1 0 10
execute if score @s switch.temp.zone_capture matches 60.. if entity @s[tag=switch.rush_the_point.side] run fill ~-3 ~-1 ~-3 ~3 ~ ~3 blue_wool replace #minecraft:wool
execute if score @s switch.temp.zone_capture matches 60.. if entity @s[tag=switch.rush_the_point.center] run fill ~-10 ~-1 ~-10 ~10 ~ ~10 blue_wool replace #minecraft:wool
execute if score @s switch.temp.zone_capture matches 60.. if entity @s[tag=switch.rush_the_point.side] if predicate switch:chance/0.2 run scoreboard players add #blue_points switch.data 1
execute if score @s switch.temp.zone_capture matches 60.. if entity @s[tag=switch.rush_the_point.center] if predicate switch:chance/0.2 run scoreboard players add #blue_points switch.data 1
execute if score @s switch.temp.zone_capture matches 60 if score #state switch.data matches 2 run scoreboard players add #blue_points switch.data 1

# Event when capturing
execute if score @s switch.temp.zone_capture matches -60 if score #state switch.data matches 1 run playsound entity.player.levelup ambient @a[tag=!detached,distance=..5]
execute if score @s switch.temp.zone_capture matches 60 if score #state switch.data matches 2 run playsound entity.player.levelup ambient @a[tag=!detached,distance=..5]
function switch:modes/rush_the_point/translations/tick_zone
""")

	# /xp_bar
	write_time_xp_bar(f"{path}/xp_bar", 600)

