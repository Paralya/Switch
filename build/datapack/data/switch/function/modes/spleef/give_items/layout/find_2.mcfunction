
#> switch:modes/spleef/give_items/layout/find_2
#
# @executed	as @a[tag=!detached] & at @s
#
# @within	switch:modes/spleef/give_items/layout/apply
#			switch:modes/spleef/give_items/layout/learn
#

execute if score #f8 switch.data matches 0 if items entity @s hotbar.8 snow_block run return 9
execute if score #f0 switch.data matches 0 if items entity @s hotbar.0 snow_block run return 1
execute if score #f1 switch.data matches 0 if items entity @s hotbar.1 snow_block run return 2
execute if score #f2 switch.data matches 0 if items entity @s hotbar.2 snow_block run return 3
execute if score #f3 switch.data matches 0 if items entity @s hotbar.3 snow_block run return 4
execute if score #f4 switch.data matches 0 if items entity @s hotbar.4 snow_block run return 5
execute if score #f5 switch.data matches 0 if items entity @s hotbar.5 snow_block run return 6
execute if score #f6 switch.data matches 0 if items entity @s hotbar.6 snow_block run return 7
execute if score #f7 switch.data matches 0 if items entity @s hotbar.7 snow_block run return 8
execute if score #f9 switch.data matches 0 if items entity @s weapon.offhand snow_block run return 10
return 0

