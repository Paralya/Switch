
#> switch:modes/one_shot/give_items
#
# @executed	as @a[sort=random] & at @s
#
# @within	switch:modes/one_shot/joined
#			switch:modes/one_shot/second [ as @a[tag=!detached] & at @s ]
#

function switch:player/layout/deactivate
# Give items to the player
clear @s
item replace entity @s hotbar.0 with bow[unbreakable={},enchantments={infinity:1,power:123},tooltip_display={"hidden_components":["minecraft:enchantments"]},item_name={"text":"Boowie","italic":true,"color":"light_purple"}]
item replace entity @s hotbar.1 with netherite_sword[enchantments={sharpness:123},item_name={"text":"Swordy Sword","italic":true,"color":"green"}]
item replace entity @s hotbar.2 with arrow
attribute @s attack_speed base set 1024
attribute @s max_health base set 1

# Layout learned for this kit
scoreboard players set @s switch.layout.kit 13
execute if score @s switch.layout.9372de32 matches 0.. run function switch:modes/one_shot/give_items/layout/apply
tag @s add switch.layout.active

