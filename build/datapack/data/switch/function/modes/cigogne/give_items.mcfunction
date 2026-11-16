
#> switch:modes/cigogne/give_items
#
# @executed	as @a[tag=!detached]
#
# @within	switch:modes/cigogne/start [ as @a[tag=!detached] ]
#

function switch:player/layout/deactivate
attribute @s attack_speed base set 1024
item replace entity @s hotbar.0 with golden_apple 4
item replace entity @s hotbar.2 with iron_sword[enchantments={fire_aspect:1}]
item replace entity @s hotbar.4 with bow[enchantments={flame:1}]
item replace entity @s hotbar.8 with arrow 32

# Layout learned for this kit
scoreboard players set @s switch.layout.kit 11
execute if score @s switch.layout.ebe0aaeb matches 0.. run function switch:modes/cigogne/give_items/layout/apply
tag @s add switch.layout.active

