
#> switch:modes/pillars_of_fortune/place_player
#
# @within	switch:modes/pillars_of_fortune/place_player with storage switch:temp input
#			switch:modes/pillars_of_fortune/start with storage switch:temp input [ in switch:game & positioned 161050 142 161050 & rotated 0 0 & as @e[tag=switch.place_pillar,sort=random,limit=1] ]
#			switch:modes/pillars_of_fortune/start with storage switch:temp input [ in switch:game & positioned 60050 142 60050 & rotated 0 0 & as @e[tag=switch.place_pillar,sort=random,limit=1] ]
#			switch:modes/pillars_of_fortune/start with storage switch:temp input [ in switch:game & positioned 61050 142 61050 & rotated 0 0 & as @e[tag=switch.place_pillar,sort=random,limit=1] ]
#			switch:modes/pillars_of_fortune/start with storage switch:temp input [ in switch:game & positioned 62050 142 62050 & rotated 0 0 & as @e[tag=switch.place_pillar,sort=random,limit=1] ]
#			switch:modes/pillars_of_fortune/start with storage switch:temp input [ in switch:game & positioned 63050 142 63050 & rotated 0 0 & as @e[tag=switch.place_pillar,sort=random,limit=1] ]
#			switch:modes/pillars_of_fortune/start with storage switch:temp input [ in switch:game & positioned 64050 142 64050 & rotated 0 0 & as @e[tag=switch.place_pillar,sort=random,limit=1] ]
#

# Remove temporary tag
tag @s remove switch.place_pillar

# Teleport player to the pillar
$execute positioned ^ ^ ^$(distance_to_center) align xyz run tp @s ~0.5 ~0.5 ~0.5 ~180 0

# Prepare entity to ride
execute at @s run summon item_display ~ ~ ~ {Tags:["switch.pillars_of_fortune"]}

# Continue loop
$execute rotated ~$(angle_difference) 0 as @e[tag=switch.place_pillar,sort=random,limit=1] run function switch:modes/pillars_of_fortune/place_player with storage switch:temp input

