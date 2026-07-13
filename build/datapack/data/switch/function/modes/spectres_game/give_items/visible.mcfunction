
#> switch:modes/spectres_game/give_items/visible
#
# @executed	as @a[tag=!detached] & at @s
#
# @within	switch:modes/spectres_game/give_items
#

item replace entity @s[team=switch.temp.visible] armor.head with chainmail_helmet[enchantments={protection:1}]
item replace entity @s[team=switch.temp.visible] armor.chest with iron_chestplate[enchantments={fire_protection:1}]
item replace entity @s[team=switch.temp.visible] armor.legs with iron_leggings[enchantments={protection:1}]
item replace entity @s[team=switch.temp.visible] armor.feet with diamond_boots[enchantments={fire_protection:1}]
item replace entity @s[team=switch.temp.visible] hotbar.0 with stone_sword[enchantments={sharpness:1}]
item replace entity @s[team=switch.temp.visible] hotbar.1 with bow
item replace entity @s[team=switch.temp.visible] hotbar.2 with stone_axe[attribute_modifiers=[{type:"minecraft:attack_damage",slot:"mainhand",id:"switch.attack_damage",amount:4,operation:"add_value"}]]
item replace entity @s[team=switch.temp.visible] hotbar.3 with oak_planks 64
item replace entity @s[team=switch.temp.visible] hotbar.7 with water_bucket
item replace entity @s[team=switch.temp.visible] hotbar.8 with golden_apple 5
execute if score @s switch.spectres_game.vi_arrows matches 0 run item replace entity @s[team=switch.temp.visible] inventory.0 with arrow 16
execute if score @s switch.spectres_game.vi_arrows matches 1 run item replace entity @s[team=switch.temp.visible] inventory.0 with arrow 18
execute if score @s switch.spectres_game.vi_arrows matches 2 run item replace entity @s[team=switch.temp.visible] inventory.0 with arrow 20
execute if score @s switch.spectres_game.vi_arrows matches 3 run item replace entity @s[team=switch.temp.visible] inventory.0 with arrow 22
execute if score @s switch.spectres_game.vi_arrows matches 4 run item replace entity @s[team=switch.temp.visible] inventory.0 with arrow 24
execute if score @s switch.spectres_game.vi_arrows matches 5 run item replace entity @s[team=switch.temp.visible] inventory.0 with arrow 26
execute if score @s switch.spectres_game.vi_arrows matches 6 run item replace entity @s[team=switch.temp.visible] inventory.0 with arrow 28
execute if score @s switch.spectres_game.vi_arrows matches 7 run item replace entity @s[team=switch.temp.visible] inventory.0 with arrow 30
execute if score @s switch.spectres_game.vi_arrows matches 8.. run item replace entity @s[team=switch.temp.visible] inventory.0 with arrow 32
execute if score #TASKS_GAME switch.data matches 1 run loot replace entity @s[team=switch.temp.visible] hotbar.4 loot switch:i/emerald_pickaxe
execute if score #TASKS_GAME switch.data matches 1 run item modify entity @s[team=switch.temp.visible] hotbar.4 {"function":"minecraft:set_components","components":{"minecraft:max_damage":10}}

