
#> switch:modes/replicate_the_build/utils/finish_building_player
#
# @within	switch:modes/replicate_the_build/utils/finish_building
#

gamemode spectator @s
execute store result storage switch:rtb temp float 0.05 run scoreboard players get @s switch.rtb.time
function switch:translations/modes_replicate_the_build_utils_finish_building_player

execute at @s run playsound minecraft:block.note_block.harp ambient @s ~ ~ ~ 1 2

