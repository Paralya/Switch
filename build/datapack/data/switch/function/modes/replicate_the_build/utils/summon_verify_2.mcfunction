
#> switch:modes/replicate_the_build/utils/summon_verify_2
#
# @executed	as @e[type=marker,tag=switch.rtb.island] & at @s & positioned ~-3 ~ ~1
#
# @within	switch:modes/replicate_the_build/utils/summon_verify
#

tag @s add switch.rtb.verify
tag @s add switch.rtb.verify_island

scoreboard players operation @s switch.rtb.id = #myid switch.rtb.id

