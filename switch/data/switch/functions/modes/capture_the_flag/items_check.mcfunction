
tag @s add switch.checked
execute if data entity @s Item{id:"minecraft:glass_bottle"} run kill @s
execute if data entity @s Item.tag.switch.class_item run kill @s

