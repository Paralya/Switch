
#> switch:modes/memory_mine/zone/end
#
# @executed	as @e[type=marker,tag=switch.zone] & at @s
#
# @within	switch:modes/memory_mine/second [ as @e[type=marker,tag=switch.zone] & at @s ]
#

execute as @a[tag=!detached,gamemode=adventure,distance=3..50] at @s run function switch:modes/memory_mine/death
playsound entity.player.levelup ambient @a[distance=..50] ~ ~ ~ 1 2
particle happy_villager ~ ~ ~ 1 1 1 1 100
kill @s

