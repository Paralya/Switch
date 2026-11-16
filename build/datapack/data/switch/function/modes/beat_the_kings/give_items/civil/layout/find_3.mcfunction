
#> switch:modes/beat_the_kings/give_items/civil/layout/find_3
#
# @executed	as @a[tag=!detached] & at @s
#
# @within	switch:modes/beat_the_kings/give_items/civil/layout/apply
#			switch:modes/beat_the_kings/give_items/civil/layout/learn
#

execute if score #f7 switch.data matches 0 if items entity @s hotbar.7 water_bucket run return 8
execute if score #f0 switch.data matches 0 if items entity @s hotbar.0 water_bucket run return 1
execute if score #f1 switch.data matches 0 if items entity @s hotbar.1 water_bucket run return 2
execute if score #f2 switch.data matches 0 if items entity @s hotbar.2 water_bucket run return 3
execute if score #f3 switch.data matches 0 if items entity @s hotbar.3 water_bucket run return 4
execute if score #f4 switch.data matches 0 if items entity @s hotbar.4 water_bucket run return 5
execute if score #f5 switch.data matches 0 if items entity @s hotbar.5 water_bucket run return 6
execute if score #f6 switch.data matches 0 if items entity @s hotbar.6 water_bucket run return 7
execute if score #f8 switch.data matches 0 if items entity @s hotbar.8 water_bucket run return 9
execute if score #f9 switch.data matches 0 if items entity @s weapon.offhand water_bucket run return 10
return 0

