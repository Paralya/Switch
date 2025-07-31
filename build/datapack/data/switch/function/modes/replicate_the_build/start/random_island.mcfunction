
#> switch:modes/replicate_the_build/start/random_island
#
# @executed	as @e[tag=switch.rtb.island,type=marker,sort=random]
#
# @within	switch:modes/replicate_the_build/round/3 [ as @e[tag=switch.rtb.island,type=marker,sort=random] ]
#

scoreboard players add #rtbteam switch.data 1

scoreboard players operation @s switch.rtb.id = #rtbteam switch.data

