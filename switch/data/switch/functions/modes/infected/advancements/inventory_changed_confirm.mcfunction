
# Copy Inventory
data modify storage switch:temp Inventory set from entity @s Inventory

# Replace classic redstone torch with a custom one
scoreboard players set #success switch.data 0
execute store success score #success switch.data run data modify storage switch:temp temp set from storage switch:temp Inventory[{id:"minecraft:redstone_torch"}]
execute if score #success switch.data matches 1 if data storage switch:temp temp.tag.switch.redstone_torch run scoreboard players set #success switch.data 0
execute if score #success switch.data matches 1 run data modify storage switch:temp input set value {Slot:7b,Count:1b,with:'redstone_torch{switch:{redstone_torch:1b},CanPlaceOn:["cracked_polished_blackstone_bricks"]}'}
execute if score #success switch.data matches 1 run data modify storage switch:temp input.Slot set from storage switch:temp temp.Slot
execute if score #success switch.data matches 1 run data modify storage switch:temp input.Count set from storage switch:temp temp.Count
execute if score #success switch.data matches 1 run function switch:modes/infected/advancements/macro_slot with storage switch:temp input

# Replace classic potion with a custom one
scoreboard players set #success switch.data 0
execute store success score #success switch.data run data modify storage switch:temp temp set from storage switch:temp Inventory[{id:"minecraft:potion",tag:{Potion:"minecraft:water"}}]
execute if score #success switch.data matches 1 if data storage switch:temp temp.tag.switch.water_bottle run scoreboard players set #success switch.data 0
execute if score #success switch.data matches 1 run data modify storage switch:temp input set value {Slot:7b,Count:1b,with:'potion{switch:{water_bottle:1b},display:{Name:\'{"text":"Sang de zombie","italic":false,"color":"light_purple"}\',Lore:[\'{"text":"Infected","italic":true,"color":"dark_green"}\']}}'}
execute if score #success switch.data matches 1 run data modify storage switch:temp input.Slot set from storage switch:temp temp.Slot
execute if score #success switch.data matches 1 run data modify storage switch:temp input.Count set from storage switch:temp temp.Count
execute if score #success switch.data matches 1 run function switch:modes/infected/advancements/macro_slot with storage switch:temp input

