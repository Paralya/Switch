
#> switch:modes/pillars_of_fortune/place_start
#
# @executed	in switch:game & positioned 10050 142 -11950 & rotated 0 0 & as @e[tag=switch.place_pillar,sort=random,limit=1]
#
# @within	switch:modes/pillars_of_fortune/start [ in switch:game & positioned 10050 142 -11950 & rotated 0 0 & as @e[tag=switch.place_pillar,sort=random,limit=1] ]
#			switch:modes/pillars_of_fortune/start [ in switch:game & positioned 6050 142 -7950 & rotated 0 0 & as @e[tag=switch.place_pillar,sort=random,limit=1] ]
#			switch:modes/pillars_of_fortune/start [ in switch:game & positioned 8050 142 -7950 & rotated 0 0 & as @e[tag=switch.place_pillar,sort=random,limit=1] ]
#			switch:modes/pillars_of_fortune/start [ in switch:game & positioned 8050 142 2050 & rotated 0 0 & as @e[tag=switch.place_pillar,sort=random,limit=1] ]
#			switch:modes/pillars_of_fortune/start [ in switch:game & positioned 8050 142 4050 & rotated 0 0 & as @e[tag=switch.place_pillar,sort=random,limit=1] ]
#			switch:modes/pillars_of_fortune/start [ in switch:game & positioned 8050 142 6050 & rotated 0 0 & as @e[tag=switch.place_pillar,sort=random,limit=1] ]
#			switch:modes/pillars_of_fortune/start [ in switch:game & positioned 2050 142 8050 & rotated 0 0 & as @e[tag=switch.place_pillar,sort=random,limit=1] ]
#

execute if score #count switch.data matches ..12 run return run function switch:modes/pillars_of_fortune/place_player with storage switch:temp input
function switch:modes/pillars_of_fortune/place_rings

