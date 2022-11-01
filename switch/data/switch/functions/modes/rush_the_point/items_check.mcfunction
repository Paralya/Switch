
tag @s add switch.checked

execute if data entity @s Item{id:"minecraft:cut_sandstone"} unless data entity @s Item.tag.CanPlaceOn run data modify entity @s Item.tag.CanPlaceOn set value ["#switch:rush_the_point"]

