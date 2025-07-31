
#> switch:modes/replicate_the_build/utils/finish_building_player
#
# @executed	as @a[scores={switch.alive=1..},gamemode=survival]
#
# @within	switch:modes/replicate_the_build/utils/finish_building [ as @a[scores={switch.alive=1..},gamemode=survival] ]
#

gamemode spectator @s
execute store result storage switch:rtb temp float 0.05 run scoreboard players get @s switch.rtb.time
function switch:translations/modes_replicate_the_build_utils_finish_building_player

execute at @s run playsound minecraft:block.note_block.harp ambient @s ~ ~ ~ 1 2

