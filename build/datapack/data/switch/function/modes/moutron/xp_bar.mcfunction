
#> switch:modes/moutron/xp_bar
#
# @within	switch:modes/moutron/second
#

# 1000 points = 100%
scoreboard players operation #points switch.data = #moutron_ticks switch.data
function switch:modes/_common/xp_bar/points

scoreboard players operation #levels switch.data = #moutron_ticks switch.data
function switch:modes/_common/xp_bar/levels

