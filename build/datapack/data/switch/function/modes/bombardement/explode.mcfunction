
#> switch:modes/bombardement/explode
#
# @executed	as @e[type=armor_stand,tag=switch.ball] & at @s
#
# @within	switch:modes/bombardement/ball_tick
#

particle explosion ~ ~ ~ .25 .25 .25 1 5
playsound switch:explosion ambient @a[tag=!detached] ~ ~ ~ 0.5
execute as @a[tag=!detached,gamemode=!spectator,distance=..1.5] at @s run function switch:modes/bombardement/death
execute on passengers run kill @s
kill @s

