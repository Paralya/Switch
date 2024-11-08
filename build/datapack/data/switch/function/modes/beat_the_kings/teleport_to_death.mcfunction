
#> switch:modes/beat_the_kings/teleport_to_death
#
# @within	switch:modes/beat_the_kings/tick
#

scoreboard players operation #player_id switch.id = @s switch.id
tp @s @e[type=!player,predicate=switch:has_same_id,limit=1]
tag @s remove switch.to_tp

