
#> switch:modes/beat_the_kings/xp_bar
#
# @within	switch:modes/beat_the_kings/second
#

# 900 seconds = 100%
scoreboard players operation #points switch.data = #remaining_time switch.data
scoreboard players operation #points switch.data *= #1000000 switch.data
scoreboard players set #divide switch.data 900000
function switch:engine/xp_bar

scoreboard players operation #levels switch.data = #remaining_time switch.data
function switch:engine/xp_bar_levels

