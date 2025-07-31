
#> switch:modes/spectres_game/give_items
#
# @executed	as @a[tag=!detached] & at @s
#
# @within	switch:modes/spectres_game/start [ as @a[tag=!detached] & at @s ]
#

# Spectre gear
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
effect give @s[team=switch.temp.spectre] invisibility infinite 255 true
effect give @s[team=switch.temp.spectre] resistance infinite 0 true
effect give @s[team=switch.temp.spectre] resistance 30 1 true
effect give @s[team=switch.temp.spectre] speed infinite 0 true

# Visible gear
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

# TNT in inventory
item replace entity @s inventory.25 with flint_and_steel
item replace entity @s inventory.26 with tnt 3
execute if score @s switch.spectres_game.sp_tnt matches 1 run item replace entity @s[team=switch.temp.spectre] inventory.26 with tnt 4
execute if score @s switch.spectres_game.sp_tnt matches 2 run item replace entity @s[team=switch.temp.spectre] inventory.26 with tnt 5
execute if score @s switch.spectres_game.sp_tnt matches 3 run item replace entity @s[team=switch.temp.spectre] inventory.26 with tnt 6
execute if score @s switch.spectres_game.vi_tnt matches 1 run item replace entity @s[team=switch.temp.visible] inventory.26 with tnt 4
execute if score @s switch.spectres_game.vi_tnt matches 2 run item replace entity @s[team=switch.temp.visible] inventory.26 with tnt 5
execute if score @s switch.spectres_game.vi_tnt matches 3 run item replace entity @s[team=switch.temp.visible] inventory.26 with tnt 6

effect give @s resistance 10 255 true
attribute @s attack_speed base set 1024

## Game specific events
# Pommes en plus pour le spectror en cas de spectror game
execute if score #SPECTROR_GAME switch.data matches 1 run give @s[scores={switch.temp.spectror=1}] golden_apple 2

# Emerald pickaxe if task game
execute if score #TASKS_GAME switch.data matches 1 run loot give @s loot switch:i/emerald_pickaxe

