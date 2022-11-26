
tag @s add switch.checked

execute if data entity @s Item{id:"minecraft:smooth_sandstone_stairs"} unless data entity @s Item.tag.CanPlaceOn run data modify entity @s Item.tag.CanPlaceOn set value ["#switch:rush_the_point"]
execute if data entity @s Item{id:"minecraft:cut_sandstone"} unless data entity @s Item.tag.CanPlaceOn run data modify entity @s Item.tag.CanPlaceOn set value ["#switch:rush_the_point"]
execute if data entity @s Item{id:"minecraft:tnt"} unless data entity @s Item.tag.CanPlaceOn run data modify entity @s Item.tag.CanPlaceOn set value ["#switch:rush_the_point"]
execute if data entity @s Item{id:"minecraft:glass_bottle"} run kill @s
execute if data entity @s Item{id:"minecraft:obsidian"} run kill @s
execute if data entity @s Item.tag.switch.class_item run kill @s

