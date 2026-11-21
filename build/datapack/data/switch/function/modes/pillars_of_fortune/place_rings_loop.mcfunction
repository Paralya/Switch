
#> switch:modes/pillars_of_fortune/place_rings_loop
#
# @executed	in switch:game & positioned 10050 142 -11950 & rotated 0 0 & as @e[tag=switch.place_pillar,sort=random,limit=1]
#
# @within	switch:modes/pillars_of_fortune/place_rings
#			switch:modes/pillars_of_fortune/place_rings_loop
#

scoreboard players add #ring switch.data 1
scoreboard players operation #weight switch.data = #rings switch.data
scoreboard players set #factor switch.data 2
scoreboard players operation #weight switch.data *= #factor switch.data
scoreboard players operation #weight switch.data += #ring switch.data
scoreboard players operation #weight switch.data *= #ring switch.data
scoreboard players operation #outer switch.data = #inner switch.data
scoreboard players operation #outer switch.data += #weight switch.data
scoreboard players operation #ring_left switch.data = #count switch.data
scoreboard players operation #ring_left switch.data *= #outer switch.data
scoreboard players operation #ring_left switch.data /= #weighted switch.data
scoreboard players operation #temp switch.data = #count switch.data
scoreboard players operation #temp switch.data *= #inner switch.data
scoreboard players operation #temp switch.data /= #weighted switch.data
scoreboard players operation #ring_left switch.data -= #temp switch.data
scoreboard players operation #inner switch.data = #outer switch.data

scoreboard players set #step switch.data 360000
scoreboard players operation #step switch.data /= #ring_left switch.data
scoreboard players operation #distance switch.data = #gap switch.data
scoreboard players operation #distance switch.data *= #ring switch.data

# Odd rings start on the axis, even rings half a step further so that neighbouring rings interleave
scoreboard players operation #start switch.data = #step switch.data
scoreboard players operation #start switch.data /= #factor switch.data
scoreboard players operation #parity switch.data = #ring switch.data
scoreboard players operation #parity switch.data %= #factor switch.data
execute if score #parity switch.data matches 1 run scoreboard players set #start switch.data 0

data modify storage switch:temp input set value {angle_difference:0.0f,distance_to_center:0.0f,start_angle:0.0f}
execute store result storage switch:temp input.angle_difference float 0.001 run scoreboard players get #step switch.data
execute store result storage switch:temp input.distance_to_center float 0.001 run scoreboard players get #distance switch.data
execute store result storage switch:temp input.start_angle float 0.001 run scoreboard players get #start switch.data
function switch:modes/pillars_of_fortune/place_ring with storage switch:temp input

execute if score #ring switch.data < #rings switch.data run function switch:modes/pillars_of_fortune/place_rings_loop

