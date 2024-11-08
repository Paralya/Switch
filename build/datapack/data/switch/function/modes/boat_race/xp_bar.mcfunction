
#> switch:modes/boat_race/xp_bar
#
# @within	switch:modes/boat_race/second
#

# 480 seconds = 100%
scoreboard players operation #points switch.data = #boat_race_seconds switch.data
scoreboard players operation #points switch.data *= #1000000 switch.data
scoreboard players set #divide switch.data 480000
function switch:engine/xp_bar

scoreboard players operation #levels switch.data = #remaining_time switch.data
function switch:engine/xp_bar_levels

