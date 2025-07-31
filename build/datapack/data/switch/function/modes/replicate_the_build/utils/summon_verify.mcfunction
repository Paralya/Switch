
#> switch:modes/replicate_the_build/utils/summon_verify
#
# @executed	as @e[type=marker,tag=switch.rtb.island] & at @s & positioned ~-3 ~ ~1
#
# @within	switch:modes/replicate_the_build/round/5_end [ as @e[type=marker,tag=switch.rtb.island] & at @s & positioned ~-3 ~ ~1 ]
#

scoreboard players operation #myid switch.rtb.id = @s switch.rtb.id
execute summon marker run function switch:modes/replicate_the_build/utils/summon_verify_2

