
#> switch:modes/spectres_game/death/player
#
# @within	switch:modes/spectres_game/joined
#			switch:modes/spectres_game/process_end [ as @a[tag=!detached,sort=random] ]
#

function switch:utils/classic_death
scoreboard players set @s switch.alive 0
tag @s add switch.to_tp

