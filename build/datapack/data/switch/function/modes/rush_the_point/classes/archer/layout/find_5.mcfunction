
#> switch:modes/rush_the_point/classes/archer/layout/find_5
#
# @executed	as the player & at current position
#
# @within	switch:modes/rush_the_point/classes/archer/layout/apply
#			switch:modes/rush_the_point/classes/archer/layout/learn
#

execute if score #f4 switch.data matches 0 if items entity @s hotbar.4 ender_pearl run return 5
execute if score #f0 switch.data matches 0 if items entity @s hotbar.0 ender_pearl run return 1
execute if score #f1 switch.data matches 0 if items entity @s hotbar.1 ender_pearl run return 2
execute if score #f2 switch.data matches 0 if items entity @s hotbar.2 ender_pearl run return 3
execute if score #f3 switch.data matches 0 if items entity @s hotbar.3 ender_pearl run return 4
execute if score #f5 switch.data matches 0 if items entity @s hotbar.5 ender_pearl run return 6
execute if score #f6 switch.data matches 0 if items entity @s hotbar.6 ender_pearl run return 7
execute if score #f7 switch.data matches 0 if items entity @s hotbar.7 ender_pearl run return 8
execute if score #f8 switch.data matches 0 if items entity @s hotbar.8 ender_pearl run return 9
execute if score #f9 switch.data matches 0 if items entity @s weapon.offhand ender_pearl run return 10
return 0

