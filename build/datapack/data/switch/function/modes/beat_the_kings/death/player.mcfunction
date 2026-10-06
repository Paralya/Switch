
#> switch:modes/beat_the_kings/death/player
#
# @executed	as @a[sort=random] & at @s
#
# @within	switch:modes/beat_the_kings/calls/joined
#			string in switch:modes/beat_the_kings/tick
#			switch:modes/beat_the_kings/process_end [ as @a[tag=!detached] ]
#

scoreboard players set @s switch.alive 0
tag @s add switch.to_tp
function switch:utils/classic_death

