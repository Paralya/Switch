
#> switch:modes/spectres_game/teleport_to_death
#
# @within	switch:modes/spectres_game/tick
#

scoreboard players operation #player_id switch.id = @s switch.id
tp @s @e[type=!player,predicate=switch:has_same_id,limit=1]
tag @s remove switch.to_tp

