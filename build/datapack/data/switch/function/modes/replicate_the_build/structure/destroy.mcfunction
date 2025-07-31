
#> switch:modes/replicate_the_build/structure/destroy
#
# @executed	as @e[type=marker,tag=switch.rtb.island]
#
# @within	switch:modes/replicate_the_build/round/4_end [ as @e[type=marker,tag=switch.rtb.island] ]
#			switch:modes/replicate_the_build/round/8_end [ as @e[type=marker,tag=switch.rtb.island] ]
#			switch:modes/replicate_the_build/round/8_end [ as @e[type=marker,tag=switch.rtb.center] ]
#			switch:modes/replicate_the_build/stop [ as @e[type=marker,tag=switch.rtb.island] ]
#			switch:modes/replicate_the_build/stop [ as @e[type=marker,tag=switch.rtb.center] ]
#			switch:modes/replicate_the_build/utils/explose_island [ as @e[type=marker,tag=switch.rtb.island] & at @s ]
#

execute at @s positioned ~ ~ ~4 run fill ~-5 ~-3 ~-5 ~5 ~10 ~5 moving_piston replace air
execute at @s run fill ~-3 ~ ~1 ~3 ~7 ~7 air replace moving_piston
execute at @s run fill ~-3 ~ ~1 ~3 ~7 ~7 air destroy

