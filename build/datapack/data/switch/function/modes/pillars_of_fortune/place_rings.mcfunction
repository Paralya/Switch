
#> switch:modes/pillars_of_fortune/place_rings
#
# @executed	in switch:game & positioned 10050 142 -11950 & rotated 0 0 & as @e[tag=switch.place_pillar,sort=random,limit=1]
#
# @within	switch:modes/pillars_of_fortune/place_start
#

data modify storage switch:temp input set value {angle_difference:0.0f,distance_to_center:0.0f,start_angle:0.0f}
function switch:modes/pillars_of_fortune/place_one with storage switch:temp input

# Fewest rings that hold the other players: ring k is 2 pi k long, and 7.85 instead of 6.283 leaves room to space the rings a bit less than the players
scoreboard players operation #others switch.data = #count switch.data
scoreboard players remove #others switch.data 1
scoreboard players set #rings switch.data 0
scoreboard players set #triangle switch.data 0
function switch:modes/pillars_of_fortune/place_rings_count

# Gap between two rings (millis of blocks) that gives 8.8 blocks between neighbours of the same ring
scoreboard players set #gap switch.data 8800000
scoreboard players operation #gap switch.data *= #others switch.data
scoreboard players operation #divisor switch.data = #triangle switch.data
scoreboard players set #factor switch.data 6283
scoreboard players operation #divisor switch.data *= #factor switch.data
scoreboard players operation #gap switch.data /= #divisor switch.data

scoreboard players set #ring switch.data 0
scoreboard players set #inner switch.data 0
function switch:modes/pillars_of_fortune/place_rings_loop

