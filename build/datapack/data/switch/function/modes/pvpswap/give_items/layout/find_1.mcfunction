
#> switch:modes/pvpswap/give_items/layout/find_1
#
# @executed	as @a[tag=!detached]
#
# @within	switch:modes/pvpswap/give_items/layout/apply
#			switch:modes/pvpswap/give_items/layout/learn
#

execute if score #f1 switch.data matches 0 if items entity @s hotbar.1 bow run return 2
execute if score #f0 switch.data matches 0 if items entity @s hotbar.0 bow run return 1
execute if score #f2 switch.data matches 0 if items entity @s hotbar.2 bow run return 3
execute if score #f3 switch.data matches 0 if items entity @s hotbar.3 bow run return 4
execute if score #f4 switch.data matches 0 if items entity @s hotbar.4 bow run return 5
execute if score #f5 switch.data matches 0 if items entity @s hotbar.5 bow run return 6
execute if score #f6 switch.data matches 0 if items entity @s hotbar.6 bow run return 7
execute if score #f7 switch.data matches 0 if items entity @s hotbar.7 bow run return 8
execute if score #f8 switch.data matches 0 if items entity @s hotbar.8 bow run return 9
execute if score #f9 switch.data matches 0 if items entity @s weapon.offhand bow run return 10
return 0

