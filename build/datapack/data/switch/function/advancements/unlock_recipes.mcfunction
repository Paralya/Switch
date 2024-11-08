
#> switch:advancements/unlock_recipes
#
# @within	advancement switch:unlock_recipes
#

# Revoke advancement
advancement revoke @s only switch:unlock_recipes

## For each ingredient in inventory, unlock the recipes
# minecraft:emerald
scoreboard players set #success switch.data 0
execute store success score #success switch.data if items entity @s container.* minecraft:emerald
execute if score #success switch.data matches 1 run recipe give @s switch:emerald_axe
execute if score #success switch.data matches 1 run recipe give @s switch:emerald_boots
execute if score #success switch.data matches 1 run recipe give @s switch:emerald_chestplate
execute if score #success switch.data matches 1 run recipe give @s switch:emerald_helmet
execute if score #success switch.data matches 1 run recipe give @s switch:emerald_hoe
execute if score #success switch.data matches 1 run recipe give @s switch:emerald_leggings
execute if score #success switch.data matches 1 run recipe give @s switch:emerald_pickaxe
execute if score #success switch.data matches 1 run recipe give @s switch:emerald_shovel
execute if score #success switch.data matches 1 run recipe give @s switch:emerald_sword

# minecraft:stick
scoreboard players set #success switch.data 0
execute store success score #success switch.data if items entity @s container.* minecraft:stick
execute if score #success switch.data matches 1 run recipe give @s switch:emerald_axe
execute if score #success switch.data matches 1 run recipe give @s switch:emerald_hoe
execute if score #success switch.data matches 1 run recipe give @s switch:emerald_pickaxe
execute if score #success switch.data matches 1 run recipe give @s switch:emerald_shovel
execute if score #success switch.data matches 1 run recipe give @s switch:emerald_sword

