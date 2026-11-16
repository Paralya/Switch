
#> switch:modes/spectres_game/give_items/visible/layout/find_2
#
# @executed	as @a[tag=!detached] & at @s
#
# @within	switch:modes/spectres_game/give_items/visible/layout/apply
#			switch:modes/spectres_game/give_items/visible/layout/learn
#

execute if score #f2 switch.data matches 0 if items entity @s hotbar.2 stone_axe run return 3
execute if score #f0 switch.data matches 0 if items entity @s hotbar.0 stone_axe run return 1
execute if score #f1 switch.data matches 0 if items entity @s hotbar.1 stone_axe run return 2
execute if score #f3 switch.data matches 0 if items entity @s hotbar.3 stone_axe run return 4
execute if score #f4 switch.data matches 0 if items entity @s hotbar.4 stone_axe run return 5
execute if score #f5 switch.data matches 0 if items entity @s hotbar.5 stone_axe run return 6
execute if score #f6 switch.data matches 0 if items entity @s hotbar.6 stone_axe run return 7
execute if score #f7 switch.data matches 0 if items entity @s hotbar.7 stone_axe run return 8
execute if score #f8 switch.data matches 0 if items entity @s hotbar.8 stone_axe run return 9
execute if score #f9 switch.data matches 0 if items entity @s weapon.offhand stone_axe run return 10
return 0

