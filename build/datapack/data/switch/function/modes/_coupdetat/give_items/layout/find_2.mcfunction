
#> switch:modes/_coupdetat/give_items/layout/find_2
#
# @executed	as @n[tag=switch.coupdetat] & in switch:game
#
# @within	switch:modes/_coupdetat/give_items/layout/apply
#			switch:modes/_coupdetat/give_items/layout/learn
#

execute if score #f7 switch.data matches 0 if items entity @s hotbar.7 tnt run return 8
execute if score #f0 switch.data matches 0 if items entity @s hotbar.0 tnt run return 1
execute if score #f1 switch.data matches 0 if items entity @s hotbar.1 tnt run return 2
execute if score #f2 switch.data matches 0 if items entity @s hotbar.2 tnt run return 3
execute if score #f3 switch.data matches 0 if items entity @s hotbar.3 tnt run return 4
execute if score #f4 switch.data matches 0 if items entity @s hotbar.4 tnt run return 5
execute if score #f5 switch.data matches 0 if items entity @s hotbar.5 tnt run return 6
execute if score #f6 switch.data matches 0 if items entity @s hotbar.6 tnt run return 7
execute if score #f8 switch.data matches 0 if items entity @s hotbar.8 tnt run return 9
execute if score #f9 switch.data matches 0 if items entity @s weapon.offhand tnt run return 10
return 0

