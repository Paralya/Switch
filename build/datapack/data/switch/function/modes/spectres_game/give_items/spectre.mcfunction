
#> switch:modes/spectres_game/give_items/spectre
#
# @executed	as @a[tag=!detached] & at @s
#
# @within	switch:modes/spectres_game/give_items
#

item replace entity @s[team=switch.temp.spectre] hotbar.0 with water_bucket
item replace entity @s[team=switch.temp.spectre] hotbar.1 with stone_sword[enchantments={unbreaking:3,sharpness:3,fire_aspect:1}]
item replace entity @s[team=switch.temp.spectre] hotbar.3 with bow[enchantments={punch:1}]
item replace entity @s[team=switch.temp.spectre] hotbar.7 with golden_apple 8
item replace entity @s[team=switch.temp.spectre] hotbar.8 with oak_planks 64
execute if score @s switch.spectres_game.sp_arrows matches 0 run item replace entity @s[team=switch.temp.spectre] inventory.0 with arrow 24
execute if score @s switch.spectres_game.sp_arrows matches 1 run item replace entity @s[team=switch.temp.spectre] inventory.0 with arrow 26
execute if score @s switch.spectres_game.sp_arrows matches 2 run item replace entity @s[team=switch.temp.spectre] inventory.0 with arrow 28
execute if score @s switch.spectres_game.sp_arrows matches 3 run item replace entity @s[team=switch.temp.spectre] inventory.0 with arrow 30
execute if score @s switch.spectres_game.sp_arrows matches 4 run item replace entity @s[team=switch.temp.spectre] inventory.0 with arrow 32
execute if score @s switch.spectres_game.sp_arrows matches 5 run item replace entity @s[team=switch.temp.spectre] inventory.0 with arrow 34
execute if score @s switch.spectres_game.sp_arrows matches 6 run item replace entity @s[team=switch.temp.spectre] inventory.0 with arrow 36
execute if score @s switch.spectres_game.sp_arrows matches 7 run item replace entity @s[team=switch.temp.spectre] inventory.0 with arrow 38
execute if score @s switch.spectres_game.sp_arrows matches 8 run item replace entity @s[team=switch.temp.spectre] inventory.0 with arrow 40
execute if score @s switch.spectres_game.sp_arrows matches 9.. run item replace entity @s[team=switch.temp.spectre] inventory.0 with arrow 42
item replace entity @s[team=switch.temp.spectre] inventory.1 with stone_axe[attribute_modifiers=[{type:"minecraft:attack_damage",slot:"mainhand",id:"switch.attack_damage",amount:4,operation:"add_value"}]]
execute if score #TASKS_GAME switch.data matches 1 run loot replace entity @s[team=switch.temp.spectre] hotbar.4 loot switch:i/emerald_pickaxe
execute if score #TASKS_GAME switch.data matches 1 run item modify entity @s[team=switch.temp.spectre] hotbar.4 {"function":"minecraft:set_components","components":{"minecraft:max_damage":10}}
effect give @s[team=switch.temp.spectre] invisibility infinite 255 true
effect give @s[team=switch.temp.spectre] resistance infinite 0 true
effect give @s[team=switch.temp.spectre] resistance 30 1 true
effect give @s[team=switch.temp.spectre] speed infinite 0 true

