
#> switch:modes/infected/advancements/inventory_changed_confirm
#
# @executed	as the player & at current position
#
# @within	switch:modes/infected/advancements/inventory_changed
#

# Copy Inventory
data modify storage switch:temp Inventory set from entity @s Inventory

# Replace classic redstone torch with a custom one
scoreboard players set #success switch.data 0
execute store success score #success switch.data run data modify storage switch:temp temp set from storage switch:temp Inventory[{id:"minecraft:redstone_torch"}]
execute if score #success switch.data matches 1 if data storage switch:temp temp.components."minecraft:custom_data".switch.redstone_torch run scoreboard players set #success switch.data 0
execute if score #success switch.data matches 1 if data storage switch:main {map:"area_51"} run data modify storage switch:temp input set value {Slot:7b,count:1,with:'redstone_torch[custom_data={switch:{redstone_torch:true}},can_place_on={blocks:["cracked_polished_blackstone_bricks"]}]'}
execute if score #success switch.data matches 1 if data storage switch:main {map:"ancienne_egypte_2013"} run data modify storage switch:temp input set value {Slot:7b,count:1,with:'redstone_torch[custom_data={switch:{redstone_torch:true}},can_place_on={blocks:["red_sandstone"]}]'}
execute if score #success switch.data matches 1 run data modify storage switch:temp input.Slot set from storage switch:temp temp.Slot
execute if score #success switch.data matches 1 run data modify storage switch:temp input.count set from storage switch:temp temp.count
execute if score #success switch.data matches 1 run function switch:modes/infected/advancements/macro_slot with storage switch:temp input

# Replace classic potion with a custom one
scoreboard players set #success switch.data 0
execute store success score #success switch.data run data modify storage switch:temp temp set from storage switch:temp Inventory[{id:"minecraft:potion",components:{"minecraft:potion_contents":{potion:"minecraft:water"}}}]
execute if score #success switch.data matches 1 if data storage switch:temp temp.components."minecraft:custom_data".switch.water_bottle run scoreboard players set #success switch.data 0
execute if score #success switch.data matches 1 run data modify storage switch:temp input set value {Slot:7b,count:1,with:'potion[custom_data={switch:{water_bottle:true}},item_name={"text":"Zombie blood","italic":false,"color":"light_purple"},lore=[{"text":"Infected","italic":true,"color":"dark_green"}]]'}
execute if score #success switch.data matches 1 run data modify storage switch:temp input.Slot set from storage switch:temp temp.Slot
execute if score #success switch.data matches 1 run data modify storage switch:temp input.count set from storage switch:temp temp.count
execute if score #success switch.data matches 1 run function switch:modes/infected/advancements/macro_slot with storage switch:temp input

# Replace tnt with a custom one
scoreboard players set #success switch.data 0
execute store success score #success switch.data run data modify storage switch:temp temp set from storage switch:temp Inventory[{id:"minecraft:tnt"}]
execute if score #success switch.data matches 1 if data storage switch:temp temp.components."minecraft:custom_data".switch.tnt run scoreboard players set #success switch.data 0
execute if score #success switch.data matches 1 run data modify storage switch:temp input set value {Slot:7b,count:1,with:'tnt[custom_data={switch:{tnt:true}},can_place_on={blocks:["scaffolding"]},item_name={"text":"TNT","italic":false,"color":"light_purple"},lore=[{"text":"Infected","italic":true,"color":"dark_green"}]]'}
execute if score #success switch.data matches 1 run data modify storage switch:temp input.Slot set from storage switch:temp temp.Slot
execute if score #success switch.data matches 1 run data modify storage switch:temp input.count set from storage switch:temp temp.count
execute if score #success switch.data matches 1 run function switch:modes/infected/advancements/macro_slot with storage switch:temp input

# Replace flint and steel with a custom one
scoreboard players set #success switch.data 0
execute store success score #success switch.data run data modify storage switch:temp temp set from storage switch:temp Inventory[{id:"minecraft:flint_and_steel"}]
execute if score #success switch.data matches 1 if data storage switch:temp temp.components."minecraft:custom_data".switch.flint_and_steel run scoreboard players set #success switch.data 0
execute if score #success switch.data matches 1 run data modify storage switch:temp input set value {Slot:7b,count:1,with:'flint_and_steel[custom_data={switch:{flint_and_steel:true}},can_place_on={blocks:["tnt"]},item_name={"text":"Flint and steel","italic":false,"color":"light_purple"},lore=[{"text":"Infected","italic":true,"color":"dark_green"}]]'}
execute if score #success switch.data matches 1 run data modify storage switch:temp input.Slot set from storage switch:temp temp.Slot
execute if score #success switch.data matches 1 run data modify storage switch:temp input.count set from storage switch:temp temp.count
execute if score #success switch.data matches 1 run function switch:modes/infected/advancements/macro_slot with storage switch:temp input

# Replace beacon with a custom one
scoreboard players set #success switch.data 0
execute store success score #success switch.data run data modify storage switch:temp temp set from storage switch:temp Inventory[{id:"minecraft:beacon"}]
execute if score #success switch.data matches 1 if data storage switch:temp temp.components."minecraft:custom_data".switch.beacon run scoreboard players set #success switch.data 0
execute if score #success switch.data matches 1 run data modify storage switch:temp input set value {Slot:7b,count:1,with:'beacon[custom_data={switch:{beacon:true}},can_place_on={blocks:["gold_block"]},item_name={"text":"Bacon","italic":false,"color":"light_purple"},lore=[{"text":"Infected","italic":true,"color":"dark_green"}]]'}
execute if score #success switch.data matches 1 run data modify storage switch:temp input.Slot set from storage switch:temp temp.Slot
execute if score #success switch.data matches 1 run data modify storage switch:temp input.count set from storage switch:temp temp.count
execute if score #success switch.data matches 1 run function switch:modes/infected/advancements/macro_slot with storage switch:temp input

