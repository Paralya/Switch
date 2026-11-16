
#> switch:modes/capture_the_flag/classes/tank/layout/find_3
#
# @executed	as the player & at current position
#
# @within	switch:modes/capture_the_flag/classes/tank/layout/apply
#			switch:modes/capture_the_flag/classes/tank/layout/learn
#

execute if score #f6 switch.data matches 0 if items entity @s hotbar.6 potion run return 7
execute if score #f0 switch.data matches 0 if items entity @s hotbar.0 potion run return 1
execute if score #f1 switch.data matches 0 if items entity @s hotbar.1 potion run return 2
execute if score #f2 switch.data matches 0 if items entity @s hotbar.2 potion run return 3
execute if score #f3 switch.data matches 0 if items entity @s hotbar.3 potion run return 4
execute if score #f4 switch.data matches 0 if items entity @s hotbar.4 potion run return 5
execute if score #f5 switch.data matches 0 if items entity @s hotbar.5 potion run return 6
execute if score #f7 switch.data matches 0 if items entity @s hotbar.7 potion run return 8
execute if score #f8 switch.data matches 0 if items entity @s hotbar.8 potion run return 9
execute if score #f9 switch.data matches 0 if items entity @s weapon.offhand potion run return 10
return 0

