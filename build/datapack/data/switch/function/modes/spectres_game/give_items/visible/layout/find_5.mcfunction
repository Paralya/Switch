
#> switch:modes/spectres_game/give_items/visible/layout/find_5
#
# @executed	as @a[tag=!detached] & at @s
#
# @within	switch:modes/spectres_game/give_items/visible/layout/apply
#			switch:modes/spectres_game/give_items/visible/layout/learn
#

execute if score #f8 switch.data matches 0 if items entity @s hotbar.8 golden_apple run return 9
execute if score #f0 switch.data matches 0 if items entity @s hotbar.0 golden_apple run return 1
execute if score #f1 switch.data matches 0 if items entity @s hotbar.1 golden_apple run return 2
execute if score #f2 switch.data matches 0 if items entity @s hotbar.2 golden_apple run return 3
execute if score #f3 switch.data matches 0 if items entity @s hotbar.3 golden_apple run return 4
execute if score #f4 switch.data matches 0 if items entity @s hotbar.4 golden_apple run return 5
execute if score #f5 switch.data matches 0 if items entity @s hotbar.5 golden_apple run return 6
execute if score #f6 switch.data matches 0 if items entity @s hotbar.6 golden_apple run return 7
execute if score #f7 switch.data matches 0 if items entity @s hotbar.7 golden_apple run return 8
execute if score #f9 switch.data matches 0 if items entity @s weapon.offhand golden_apple run return 10
return 0

