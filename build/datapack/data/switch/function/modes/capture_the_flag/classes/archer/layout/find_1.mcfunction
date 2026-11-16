
#> switch:modes/capture_the_flag/classes/archer/layout/find_1
#
# @executed	as the player & at current position
#
# @within	switch:modes/capture_the_flag/classes/archer/layout/apply
#			switch:modes/capture_the_flag/classes/archer/layout/learn
#

execute if score #f1 switch.data matches 0 if items entity @s hotbar.1 crossbow run return 2
execute if score #f0 switch.data matches 0 if items entity @s hotbar.0 crossbow run return 1
execute if score #f2 switch.data matches 0 if items entity @s hotbar.2 crossbow run return 3
execute if score #f3 switch.data matches 0 if items entity @s hotbar.3 crossbow run return 4
execute if score #f4 switch.data matches 0 if items entity @s hotbar.4 crossbow run return 5
execute if score #f5 switch.data matches 0 if items entity @s hotbar.5 crossbow run return 6
execute if score #f6 switch.data matches 0 if items entity @s hotbar.6 crossbow run return 7
execute if score #f7 switch.data matches 0 if items entity @s hotbar.7 crossbow run return 8
execute if score #f8 switch.data matches 0 if items entity @s hotbar.8 crossbow run return 9
execute if score #f9 switch.data matches 0 if items entity @s weapon.offhand crossbow run return 10
return 0

