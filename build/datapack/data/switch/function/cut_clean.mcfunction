
#> switch:cut_clean
#
# @within	switch:tick
#

tag @s add switch.cut_clean

scoreboard players set #custom switch.data 1
scoreboard players set #success switch.data 0
execute store result score #count switch.data run data get entity @s Item.count

# Vanilla Items
execute if score #success switch.data matches 0 store success score #success switch.data if data entity @s Item{id:"minecraft:raw_iron"} unless data entity @s Item.components."minecraft:item_model" run data modify entity @s Item.id set value "minecraft:iron_ingot"
execute if score #success switch.data matches 0 store success score #success switch.data if data entity @s Item{id:"minecraft:raw_gold"} unless data entity @s Item.components."minecraft:item_model" run data modify entity @s Item.id set value "minecraft:gold_ingot"
execute if score #success switch.data matches 0 store success score #success switch.data if data entity @s Item{id:"minecraft:raw_copper"} unless data entity @s Item.components."minecraft:item_model" run data modify entity @s Item.id set value "minecraft:copper_ingot"
execute if score #success switch.data matches 0 store success score #success switch.data if data entity @s Item{id:"minecraft:ancient_debris"} unless data entity @s Item.components."minecraft:item_model" run data modify entity @s Item.id set value "minecraft:netherite_scrap"
execute if score #success switch.data matches 1 store result entity @s Item.count int 1 run scoreboard players get #count switch.data

# Custom Items
execute if score #success switch.data matches 0 run scoreboard players set #custom switch.data 0
execute if score #success switch.data matches 0 run setblock 0 0 0 air
execute if score #success switch.data matches 0 run setblock 0 0 0 yellow_shulker_box
execute if score #custom switch.data matches 1 run data modify entity @s Item set from block 0 0 0 Items[0]
execute if score #custom switch.data matches 1 store result entity @s Item.count int 1 run scoreboard players get #count switch.data
execute if score #success switch.data matches 0 run setblock 0 0 0 air

