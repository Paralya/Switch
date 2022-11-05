
tag @s add switch.item.checked

scoreboard players set #custom switch.data 1
scoreboard players set #success switch.data 0
execute store result score #count switch.data run data get entity @s Item.Count

#Vanilla Items
execute if score #success switch.data matches 0 store success score #success switch.data if data entity @s Item{id:"minecraft:raw_iron"} unless data entity @s Item.tag.CustomModelData run data modify entity @s Item.id set value "minecraft:iron_ingot"
execute if score #success switch.data matches 0 store success score #success switch.data if data entity @s Item{id:"minecraft:raw_gold"} unless data entity @s Item.tag.CustomModelData run data modify entity @s Item.id set value "minecraft:gold_ingot"
execute if score #success switch.data matches 0 store success score #success switch.data if data entity @s Item{id:"minecraft:raw_copper"} unless data entity @s Item.tag.CustomModelData run data modify entity @s Item.id set value "minecraft:copper_ingot"
execute if score #success switch.data matches 0 store success score #success switch.data if data entity @s Item{id:"minecraft:ancient_debris"} unless data entity @s Item.tag.CustomModelData run data modify entity @s Item.id set value "minecraft:netherite_scrap"

#Custom Items
execute if score #success switch.data matches 0 run scoreboard players set #custom switch.data 0
execute if score #success switch.data matches 0 run setblock 0 0 0 air
execute if score #success switch.data matches 0 run setblock 0 0 0 yellow_shulker_box
execute if score #custom switch.data matches 0 store success score #custom switch.data if data entity @s Item.tag.simplenergy.raw_simplunium run loot insert 0 0 0 loot simplenergy:i/simplunium_ingot
execute if score #custom switch.data matches 0 store success score #custom switch.data if data entity @s Item.tag.crazy_adventure.raw_uranium run loot insert 0 0 0 loot crazy_adventure:i/uranium_ingot
execute if score #custom switch.data matches 0 store success score #custom switch.data if data entity @s Item.tag.crazy_adventure.raw_californium run loot insert 0 0 0 loot crazy_adventure:i/californium_ingot
execute if score #custom switch.data matches 1 run data modify entity @s Item set from block 0 0 0 Items[0]
execute if score #custom switch.data matches 1 store result entity @s Item.Count byte 1 run scoreboard players get #count switch.data
execute if score #success switch.data matches 0 run setblock 0 0 0 air

