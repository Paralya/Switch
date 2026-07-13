
#> switch:modes/spectres_game/give_items
#
# @executed	as @a[tag=!detached] & at @s
#
# @within	switch:modes/spectres_game/start [ as @a[tag=!detached] & at @s ]
#

function switch:modes/spectres_game/give_items/spectre
function switch:modes/spectres_game/give_items/visible

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

