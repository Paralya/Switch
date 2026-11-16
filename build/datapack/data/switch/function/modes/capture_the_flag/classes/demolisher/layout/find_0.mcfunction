
#> switch:modes/capture_the_flag/classes/demolisher/layout/find_0
#
# @executed	as the player & at current position
#
# @within	switch:modes/capture_the_flag/classes/demolisher/layout/apply
#			switch:modes/capture_the_flag/classes/demolisher/layout/learn
#

execute if score #f0 switch.data matches 0 if items entity @s hotbar.0 iron_sword run return 1
execute if score #f1 switch.data matches 0 if items entity @s hotbar.1 iron_sword run return 2
execute if score #f2 switch.data matches 0 if items entity @s hotbar.2 iron_sword run return 3
execute if score #f3 switch.data matches 0 if items entity @s hotbar.3 iron_sword run return 4
execute if score #f4 switch.data matches 0 if items entity @s hotbar.4 iron_sword run return 5
execute if score #f5 switch.data matches 0 if items entity @s hotbar.5 iron_sword run return 6
execute if score #f6 switch.data matches 0 if items entity @s hotbar.6 iron_sword run return 7
execute if score #f7 switch.data matches 0 if items entity @s hotbar.7 iron_sword run return 8
execute if score #f8 switch.data matches 0 if items entity @s hotbar.8 iron_sword run return 9
execute if score #f9 switch.data matches 0 if items entity @s weapon.offhand iron_sword run return 10
return 0

