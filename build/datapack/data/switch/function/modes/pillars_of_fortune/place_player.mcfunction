
#> switch:modes/pillars_of_fortune/place_player
#
# @within	switch:modes/pillars_of_fortune/place_player with storage switch:temp input
#			switch:modes/pillars_of_fortune/start with storage switch:temp input [ in switch:game & positioned 10050 142 -11950 & rotated 0 0 & as @e[tag=switch.place_pillar,sort=random,limit=1] ]
#			switch:modes/pillars_of_fortune/start with storage switch:temp input [ in switch:game & positioned 6050 142 -7950 & rotated 0 0 & as @e[tag=switch.place_pillar,sort=random,limit=1] ]
#			switch:modes/pillars_of_fortune/start with storage switch:temp input [ in switch:game & positioned 8050 142 -7950 & rotated 0 0 & as @e[tag=switch.place_pillar,sort=random,limit=1] ]
#			switch:modes/pillars_of_fortune/start with storage switch:temp input [ in switch:game & positioned 8050 142 2050 & rotated 0 0 & as @e[tag=switch.place_pillar,sort=random,limit=1] ]
#			switch:modes/pillars_of_fortune/start with storage switch:temp input [ in switch:game & positioned 8050 142 4050 & rotated 0 0 & as @e[tag=switch.place_pillar,sort=random,limit=1] ]
#			switch:modes/pillars_of_fortune/start with storage switch:temp input [ in switch:game & positioned 8050 142 6050 & rotated 0 0 & as @e[tag=switch.place_pillar,sort=random,limit=1] ]
#			switch:modes/pillars_of_fortune/start with storage switch:temp input [ in switch:game & positioned 2050 142 8050 & rotated 0 0 & as @e[tag=switch.place_pillar,sort=random,limit=1] ]
#
# @args		distance_to_center (float)
#			angle_difference (float)
#

# Remove temporary tag
tag @s remove switch.place_pillar

# Teleport player to the pillar
$execute positioned ^ ^ ^$(distance_to_center) align xyz run tp @s ~0.5 ~0.5 ~0.5 ~180 0

# Prepare entity to ride
execute at @s run summon item_display ~ ~ ~ {Tags:["switch.pillars_of_fortune"]}

# Continue loop
$execute rotated ~$(angle_difference) 0 as @e[tag=switch.place_pillar,sort=random,limit=1] run function switch:modes/pillars_of_fortune/place_player with storage switch:temp input

