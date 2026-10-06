
#> switch:modes/spectres_game/death/player
#
# @executed	as @a[sort=random] & at @s
#
# @within	switch:modes/spectres_game/calls/joined
#			switch:modes/spectres_game/process_end [ as @a[tag=!detached,sort=random] ]
#			string in switch:modes/spectres_game/tick
#

function switch:utils/classic_death
scoreboard players set @s switch.alive 0
tag @s add switch.to_tp

