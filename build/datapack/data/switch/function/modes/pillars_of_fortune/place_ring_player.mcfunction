
#> switch:modes/pillars_of_fortune/place_ring_player
#
# @executed	in switch:game & positioned 10050 142 -11950 & rotated 0 0 & as @e[tag=switch.place_pillar,sort=random,limit=1]
#
# @within	switch:modes/pillars_of_fortune/place_ring with storage switch:temp input
#			switch:modes/pillars_of_fortune/place_ring_player with storage switch:temp input
#
# @args		angle_difference (unknown)
#

function switch:modes/pillars_of_fortune/place_one with storage switch:temp input
scoreboard players remove #ring_left switch.data 1
$execute if score #ring_left switch.data matches 1.. rotated ~$(angle_difference) 0 as @e[tag=switch.place_pillar,sort=random,limit=1] run function switch:modes/pillars_of_fortune/place_ring_player with storage switch:temp input

