
#> switch:modes/traitors_game/teleport_to_death
#
# @executed	as @a[tag=!...]
#
# @within	switch:modes/traitors_game/tick [ as @a[tag=!...] ]
#

scoreboard players operation #player_id switch.id = @s switch.id
tp @s @e[type=!player,predicate=switch:has_same_id,limit=1]
tag @s remove switch.to_tp

