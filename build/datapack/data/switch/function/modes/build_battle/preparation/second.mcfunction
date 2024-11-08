
#> switch:modes/build_battle/preparation/second
#
# @within	switch:modes/build_battle/second
#

# XP Bar
function switch:modes/build_battle/xp_bar_preparation

# Change every ground blocks to grass_block
execute at @e[type=marker,tag=switch.build_battle_marker] run setblock ~3 ~3 ~3 air
execute at @e[type=marker,tag=switch.build_battle_marker] run setblock ~3 ~7 ~3 grass_block
execute at @e[type=marker,tag=switch.build_battle_marker] positioned ~5 ~7 ~5 run fill ~ ~ ~ ~38 ~13 ~38 air
execute at @e[type=marker,tag=switch.build_battle_marker] positioned ~5 ~7 ~5 run fill ~ ~14 ~ ~38 ~27 ~38 air
clear @a[tag=!detached]

# Start the building time when the voting time is over
execute if score #build_battle_seconds switch.data matches 0.. run function switch:modes/build_battle/building_time/start

