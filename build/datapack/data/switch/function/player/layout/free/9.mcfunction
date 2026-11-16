
#> switch:player/layout/free/9
#
# @executed	as @a[sort=random] & at @s
#
# @within	switch:modes/beat_the_kings/give_items/civil/layout/learn
#			switch:modes/rush_the_point/classes/archer/layout/learn
#			switch:modes/rush_the_point/classes/builder/layout/learn
#			switch:modes/rush_the_point/classes/destroyer/layout/learn
#			switch:modes/rush_the_point/classes/aviateur/layout/learn
#			switch:modes/rush_the_point/classes/guerrier/layout/learn
#

execute if score #f9 switch.data matches 0 run return 10
execute if score #f0 switch.data matches 0 run return 1
execute if score #f1 switch.data matches 0 run return 2
execute if score #f2 switch.data matches 0 run return 3
execute if score #f3 switch.data matches 0 run return 4
execute if score #f4 switch.data matches 0 run return 5
execute if score #f5 switch.data matches 0 run return 6
execute if score #f6 switch.data matches 0 run return 7
execute if score #f7 switch.data matches 0 run return 8
execute if score #f8 switch.data matches 0 run return 9

