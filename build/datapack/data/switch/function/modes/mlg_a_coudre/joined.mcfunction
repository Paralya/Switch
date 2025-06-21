
#> switch:modes/mlg_a_coudre/joined
#
# @within	switch:modes/mlg_a_coudre/calls/joined
#

# Reset attributes (like safe_fall_distance)
function switch:utils/reset_attributes

# Reset player and make spectator
scoreboard players reset @s switch.temp.order
scoreboard players reset @s switch.temp.lives
function switch:modes/mlg_a_coudre/death

