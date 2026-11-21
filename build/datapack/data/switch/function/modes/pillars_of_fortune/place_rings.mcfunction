
#> switch:modes/pillars_of_fortune/place_rings
#
# @executed	in switch:game & positioned 10050 142 -11950 & rotated 0 0 & as @e[tag=switch.place_pillar,sort=random,limit=1]
#
# @within	switch:modes/pillars_of_fortune/place_start
#

# Fewest rings that hold everyone: ring k is 2 pi k long, and 7.85 instead of 6.283 leaves room to space the rings a bit less than the players
scoreboard players set #rings switch.data 0
scoreboard players set #triangle switch.data 0
scoreboard players set #squares switch.data 0
function switch:modes/pillars_of_fortune/place_rings_count

# Ring k weighs k x (2K + k): the density grows from 1 on the first ring to 1.5 on the last one, #weighted being the sum of the weights
scoreboard players operation #weighted switch.data = #triangle switch.data
scoreboard players operation #weighted switch.data *= #rings switch.data
scoreboard players set #factor switch.data 2
scoreboard players operation #weighted switch.data *= #factor switch.data
scoreboard players operation #weighted switch.data += #squares switch.data

# Gap between two rings (millis of blocks) that gives 8.8 blocks between neighbours of the middle ring
scoreboard players operation #gap switch.data = #count switch.data
scoreboard players set #factor switch.data 5
scoreboard players operation #gap switch.data *= #factor switch.data
scoreboard players operation #gap switch.data *= #rings switch.data
scoreboard players set #factor switch.data 8800
scoreboard players operation #gap switch.data *= #factor switch.data
scoreboard players operation #gap switch.data /= #weighted switch.data
scoreboard players set #factor switch.data 1000
scoreboard players operation #gap switch.data *= #factor switch.data
scoreboard players set #factor switch.data 12566
scoreboard players operation #gap switch.data /= #factor switch.data

scoreboard players set #ring switch.data 0
scoreboard players set #inner switch.data 0
function switch:modes/pillars_of_fortune/place_rings_loop

