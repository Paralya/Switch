
#> switch:modes/beat_the_kings/give_items/civil
#
# @executed	as @a[tag=!detached] & at @s
#
# @within	switch:modes/beat_the_kings/give_items
#

function switch:player/layout/deactivate
# Starter kit
item replace entity @s armor.head with iron_helmet
item replace entity @s armor.chest with diamond_chestplate
item replace entity @s armor.legs with chainmail_leggings
item replace entity @s armor.feet with iron_boots[enchantments={feather_falling:2}]
item replace entity @s weapon.offhand with oak_planks 64
item replace entity @s hotbar.0 with iron_sword[enchantments={sharpness:5}]
item replace entity @s hotbar.1 with bow
item replace entity @s hotbar.7 with water_bucket
item replace entity @s hotbar.8 with golden_apple 5
item replace entity @s inventory.0 with arrow 16

# Layout learned for this kit
scoreboard players set @s switch.layout.kit 3
execute if score @s switch.layout.c93e7713 matches 0.. run function switch:modes/beat_the_kings/give_items/civil/layout/apply
tag @s add switch.layout.active

