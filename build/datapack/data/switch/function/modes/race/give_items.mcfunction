
#> switch:modes/race/give_items
#
# @within	switch:modes/race/start 1s
#

# Load map checkpoints
kill @e[type=marker,tag=switch.selected_map]
function switch:maps/load_gamemode

# Summon vehicles or give items depending on the map type
execute if score #map_type switch.data matches 0 as @a[tag=!detached] at @s run function shopping_kart:kart/switch_model/summon_new_kart
execute if score #map_type switch.data matches 0 run tag @e[tag=shopping_kart.kart] add switch.vehicle
execute if score #map_type switch.data matches 1 as @a[tag=!detached] at @s run summon minecraft:bamboo_chest_raft ~ ~ ~ {Tags:["switch.vehicle"]}
execute if score #map_type switch.data matches 1 as @a[tag=!detached] at @s run tp @n[tag=switch.vehicle] ~ ~ ~ ~ ~

# Set up hotbar inventory
execute as @a[tag=!detached] at @s run function switch:modes/race/advancements/inventory_changed_confirm

