
#> switch:modes/_common/teleport_to_death
#
# @executed	as @a[tag=!...]
#
# @within	switch:modes/beat_the_kings/tick [ as @a[tag=!...] ]
#			switch:modes/spectres_game/tick [ as @a[tag=!...] ]
#			switch:modes/traitors_game/tick [ as @a[tag=!...] ]
#

scoreboard players operation #player_id switch.id = @s switch.id
tp @s @e[type=!player,predicate=switch:has_same_id,limit=1]
tag @s remove switch.to_tp

