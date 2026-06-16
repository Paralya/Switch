
#> switch:modes/traitors_game/death/detect
#
# @executed	as @e[type=marker,tag=...]
#
# @within	switch:modes/beat_the_kings/death/detect
#			switch:modes/capture_the_flag/death/detect
#			switch:modes/traitors_game/tick [ as @e[type=marker,tag=...] ]
#

# Detect if linked player is missing
scoreboard players set #success switch.data 0
scoreboard players operation #player_id switch.id = @s switch.id
execute store success score #success switch.data run tag @a[scores={switch.alive=1..},predicate=switch:has_same_id] add switch.temp

execute if score #success switch.data matches 0 run tag @s add switch.player_dead
execute if score #success switch.data matches 1 run tp @s @p[tag=switch.temp]
execute if score #success switch.data matches 1 if entity @p[tag=switch.temp,tag=switch.temp.inventory_changed] run data modify storage switch:temp Inventory set from entity @p[tag=switch.temp] Inventory
execute if score #success switch.data matches 1 if entity @p[tag=switch.temp,tag=switch.temp.inventory_changed] run data modify storage switch:temp equipment set from entity @p[tag=switch.temp] equipment
execute if score #success switch.data matches 1 if entity @p[tag=switch.temp,tag=switch.temp.inventory_changed] run data modify storage switch:temp Inventory append from storage switch:temp equipment.head
execute if score #success switch.data matches 1 if entity @p[tag=switch.temp,tag=switch.temp.inventory_changed] run data modify storage switch:temp Inventory append from storage switch:temp equipment.chest
execute if score #success switch.data matches 1 if entity @p[tag=switch.temp,tag=switch.temp.inventory_changed] run data modify storage switch:temp Inventory append from storage switch:temp equipment.legs
execute if score #success switch.data matches 1 if entity @p[tag=switch.temp,tag=switch.temp.inventory_changed] run data modify storage switch:temp Inventory append from storage switch:temp equipment.feet
execute if score #success switch.data matches 1 if entity @p[tag=switch.temp,tag=switch.temp.inventory_changed] run data modify storage switch:temp Inventory append from storage switch:temp equipment.offhand
execute if score #success switch.data matches 1 if entity @p[tag=switch.temp,tag=switch.temp.inventory_changed] run data modify entity @s data.Inventory set from storage switch:temp Inventory
execute if score #success switch.data matches 1 run tag @p[tag=switch.temp,tag=switch.temp.inventory_changed] remove switch.temp.inventory_changed

tag @a remove switch.temp

