
#> switch:modes/build_battle/xp_bar_preparation
#
# @executed	in switch:build_battle
#
# @within	switch:modes/build_battle/preparation/second
#

# 20 seconds = 100%
# 0 seconds = 0%
scoreboard players operation #points switch.data = #build_battle_seconds switch.data
scoreboard players operation #points switch.data *= #-1000000 switch.data
scoreboard players set #divide switch.data 20000
function switch:engine/xp_bar

scoreboard players operation #levels switch.data = #build_battle_seconds switch.data
scoreboard players operation #levels switch.data *= #-1 switch.data
function switch:engine/xp_bar_levels

