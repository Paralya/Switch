
#> switch:player/layout/free/3
#
# @executed	as @a[sort=random] & at @s
#
# @within	switch:modes/_common/layers_starter_kit/layout/learn
#			switch:modes/beat_the_kings/give_items/king/layout/learn
#			switch:modes/capture_the_flag/classes/archer/layout/learn
#			switch:modes/capture_the_flag/classes/chemister/layout/learn
#			switch:modes/capture_the_flag/classes/warrior/layout/learn
#			switch:modes/castagne/give_items/layout/learn
#			switch:modes/protect_the_king/give_items/layout/learn
#			switch:modes/pvpswap/give_items/layout/learn
#			switch:modes/rush_the_point/classes/archer/layout/learn
#			switch:modes/rush_the_point/classes/builder/layout/learn
#			switch:modes/rush_the_point/classes/destroyer/layout/learn
#			switch:modes/sheepwars/team_and_give/layout/learn
#			switch:modes/spectres_game/give_items/spectre/layout/learn
#			switch:modes/spectres_game/give_items/visible/layout/learn
#			switch:modes/traitors_game/give_items/layout/learn
#

execute if score #f3 switch.data matches 0 run return 4
execute if score #f0 switch.data matches 0 run return 1
execute if score #f1 switch.data matches 0 run return 2
execute if score #f2 switch.data matches 0 run return 3
execute if score #f4 switch.data matches 0 run return 5
execute if score #f5 switch.data matches 0 run return 6
execute if score #f6 switch.data matches 0 run return 7
execute if score #f7 switch.data matches 0 run return 8
execute if score #f8 switch.data matches 0 run return 9
execute if score #f9 switch.data matches 0 run return 10

