
#> switch:modes/pillars_of_fortune/place_rings_count
#
# @executed	in switch:game & positioned 10050 142 -11950 & rotated 0 0 & as @e[tag=switch.place_pillar,sort=random,limit=1]
#
# @within	switch:modes/pillars_of_fortune/place_rings
#			switch:modes/pillars_of_fortune/place_rings_count
#

scoreboard players add #rings switch.data 1
scoreboard players operation #triangle switch.data += #rings switch.data
scoreboard players operation #square switch.data = #rings switch.data
scoreboard players operation #square switch.data *= #rings switch.data
scoreboard players operation #squares switch.data += #square switch.data
scoreboard players operation #capacity switch.data = #triangle switch.data
scoreboard players set #factor switch.data 785
scoreboard players operation #capacity switch.data *= #factor switch.data
scoreboard players operation #needed switch.data = #count switch.data
scoreboard players set #factor switch.data 100
scoreboard players operation #needed switch.data *= #factor switch.data
execute if score #capacity switch.data < #needed switch.data run function switch:modes/pillars_of_fortune/place_rings_count

