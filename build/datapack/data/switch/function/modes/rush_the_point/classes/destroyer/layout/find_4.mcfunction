
#> switch:modes/rush_the_point/classes/destroyer/layout/find_4
#
# @executed	as the player & at current position
#
# @within	switch:modes/rush_the_point/classes/destroyer/layout/apply
#			switch:modes/rush_the_point/classes/destroyer/layout/learn
#

execute if score #f3 switch.data matches 0 if items entity @s hotbar.3 cut_sandstone[can_place_on={blocks:"#switch:rush_the_point/can_place_on"}] run return 4
execute if score #f0 switch.data matches 0 if items entity @s hotbar.0 cut_sandstone[can_place_on={blocks:"#switch:rush_the_point/can_place_on"}] run return 1
execute if score #f1 switch.data matches 0 if items entity @s hotbar.1 cut_sandstone[can_place_on={blocks:"#switch:rush_the_point/can_place_on"}] run return 2
execute if score #f2 switch.data matches 0 if items entity @s hotbar.2 cut_sandstone[can_place_on={blocks:"#switch:rush_the_point/can_place_on"}] run return 3
execute if score #f4 switch.data matches 0 if items entity @s hotbar.4 cut_sandstone[can_place_on={blocks:"#switch:rush_the_point/can_place_on"}] run return 5
execute if score #f5 switch.data matches 0 if items entity @s hotbar.5 cut_sandstone[can_place_on={blocks:"#switch:rush_the_point/can_place_on"}] run return 6
execute if score #f6 switch.data matches 0 if items entity @s hotbar.6 cut_sandstone[can_place_on={blocks:"#switch:rush_the_point/can_place_on"}] run return 7
execute if score #f7 switch.data matches 0 if items entity @s hotbar.7 cut_sandstone[can_place_on={blocks:"#switch:rush_the_point/can_place_on"}] run return 8
execute if score #f8 switch.data matches 0 if items entity @s hotbar.8 cut_sandstone[can_place_on={blocks:"#switch:rush_the_point/can_place_on"}] run return 9
execute if score #f9 switch.data matches 0 if items entity @s weapon.offhand cut_sandstone[can_place_on={blocks:"#switch:rush_the_point/can_place_on"}] run return 10
return 0

