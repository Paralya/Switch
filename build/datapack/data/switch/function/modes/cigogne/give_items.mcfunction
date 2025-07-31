
#> switch:modes/cigogne/give_items
#
# @executed	as @a[tag=!detached]
#
# @within	switch:modes/cigogne/start [ as @a[tag=!detached] ]
#

attribute @s attack_speed base set 1024
item replace entity @s hotbar.0 with golden_apple 4
item replace entity @s hotbar.2 with iron_sword[enchantments={fire_aspect:1}]
item replace entity @s hotbar.4 with bow[enchantments={flame:1}]
item replace entity @s hotbar.8 with arrow 32

