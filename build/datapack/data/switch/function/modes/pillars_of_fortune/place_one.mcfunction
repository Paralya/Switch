
#> switch:modes/pillars_of_fortune/place_one
#
# @executed	in switch:game & positioned 10050 142 -11950 & rotated 0 0 & as @e[tag=switch.place_pillar,sort=random,limit=1]
#
# @within	switch:modes/pillars_of_fortune/place_player with storage switch:temp input
#			switch:modes/pillars_of_fortune/place_rings with storage switch:temp input
#			switch:modes/pillars_of_fortune/place_ring_player with storage switch:temp input
#
# @args		distance_to_center (float)
#

tag @s remove switch.place_pillar
$execute positioned ^ ^ ^$(distance_to_center) align xyz run tp @s ~0.5 ~0.5 ~0.5 ~180 0
execute at @s run summon item_display ~ ~ ~ {Tags:["switch.pillars_of_fortune"]}

