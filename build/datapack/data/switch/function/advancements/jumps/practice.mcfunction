
#> switch:advancements/jumps/practice
#
# @executed	as the player & at current position
#
# @within	advancement switch:visible/jump_practice
#

scoreboard players set #add_override switch.money 42
function switch:engine/add_money
function switch:stats/util_update_player
function switch:advancements/update_percentages

