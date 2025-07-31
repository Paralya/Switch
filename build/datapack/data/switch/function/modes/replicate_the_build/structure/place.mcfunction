
#> switch:modes/replicate_the_build/structure/place
#
# @executed	as @e[type=marker,tag=switch.rtb.island] & at @s & positioned ~-3 ~ ~1
#
# @within	switch:modes/replicate_the_build/round/3 [ as @e[type=marker,tag=switch.rtb.island] & at @s & positioned ~-3 ~ ~1 ]
#			switch:modes/replicate_the_build/round/4_end [ positioned -29999997 24 1603 ]
#			switch:modes/replicate_the_build/round/5_end [ as @e[type=marker,tag=switch.rtb.center] & at @s & positioned ~-3 ~ ~1 ]
#

execute if score #random switch.data matches 0 run place template switch:replicate_the_build/full_blue
execute if score #random switch.data matches 1 run place template switch:replicate_the_build/beacon
execute if score #random switch.data matches 2 run place template switch:replicate_the_build/beacon2
execute if score #random switch.data matches 3 run place template switch:replicate_the_build/chess
execute if score #random switch.data matches 4 run place template switch:replicate_the_build/dragon
execute if score #random switch.data matches 5 run place template switch:replicate_the_build/enchanting
execute if score #random switch.data matches 6 run place template switch:replicate_the_build/farm
execute if score #random switch.data matches 7 run place template switch:replicate_the_build/france
execute if score #random switch.data matches 8 run place template switch:replicate_the_build/lampadaire
execute if score #random switch.data matches 9 run place template switch:replicate_the_build/nether
execute if score #random switch.data matches 10 run place template switch:replicate_the_build/rush

