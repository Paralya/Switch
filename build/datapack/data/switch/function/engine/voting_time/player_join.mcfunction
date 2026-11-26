
#> switch:engine/voting_time/player_join
#
# @executed	as @a[sort=random] & at @s
#
# @within	switch:player/make_join
#			switch:player/trigger/attach/real_attach
#

clear @s
effect clear @s
gamemode spectator @s
execute in switch:game run tp @s 0 69 0
execute in switch:game run tp @s @r[tag=!detached,distance=0.1..]

function switch:engine/voting_time/message

