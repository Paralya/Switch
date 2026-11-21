
#> switch:modes/pillars_of_fortune/place_ring
#
# @executed	in switch:game & positioned 10050 142 -11950 & rotated 0 0 & as @e[tag=switch.place_pillar,sort=random,limit=1]
#
# @within	switch:modes/pillars_of_fortune/place_rings_loop with storage switch:temp input
#
# @args		start_angle (float)
#

$execute rotated $(start_angle) 0 as @e[tag=switch.place_pillar,sort=random,limit=1] run function switch:modes/pillars_of_fortune/place_ring_player with storage switch:temp input

