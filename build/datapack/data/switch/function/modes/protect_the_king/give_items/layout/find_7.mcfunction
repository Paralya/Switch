
#> switch:modes/protect_the_king/give_items/layout/find_7
#
# @executed	as @a[tag=!detached] & at @s
#
# @within	switch:modes/protect_the_king/give_items/layout/apply
#			switch:modes/protect_the_king/give_items/layout/learn
#

execute if score #f4 switch.data matches 0 if items entity @s hotbar.4 anvil run return 5
execute if score #f0 switch.data matches 0 if items entity @s hotbar.0 anvil run return 1
execute if score #f1 switch.data matches 0 if items entity @s hotbar.1 anvil run return 2
execute if score #f2 switch.data matches 0 if items entity @s hotbar.2 anvil run return 3
execute if score #f3 switch.data matches 0 if items entity @s hotbar.3 anvil run return 4
execute if score #f5 switch.data matches 0 if items entity @s hotbar.5 anvil run return 6
execute if score #f6 switch.data matches 0 if items entity @s hotbar.6 anvil run return 7
execute if score #f7 switch.data matches 0 if items entity @s hotbar.7 anvil run return 8
execute if score #f8 switch.data matches 0 if items entity @s hotbar.8 anvil run return 9
execute if score #f9 switch.data matches 0 if items entity @s weapon.offhand anvil run return 10
return 0

