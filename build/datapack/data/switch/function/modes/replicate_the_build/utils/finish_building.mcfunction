
#> switch:modes/replicate_the_build/utils/finish_building
#
# @executed	as @e[type=marker,tag=switch.rtb.island] & at @s
#
# @within	switch:modes/replicate_the_build/round/5 [ as @e[type=marker,tag=switch.rtb.island] & at @s ]
#

scoreboard players operation #rtb_search switch.data = @s switch.rtb.id
tag @s add switch.rtb.temp
execute as @a[scores={switch.alive=1..},gamemode=survival] if score @s switch.rtb.id = #rtb_search switch.data run function switch:modes/replicate_the_build/utils/finish_building_player
tag @s remove switch.rtb.temp

