
#> switch:modes/block_party/xp_bar
#
# @within	switch:modes/block_party/tick
#

# 1000 points = 100%
scoreboard players operation #points switch.data = #block_party_ticks switch.data
function switch:engine/xp_bar

scoreboard players operation #levels switch.data = #block_party_round switch.data
function switch:engine/xp_bar_levels

