
#> switch:modes/boat_race/summon_boat
#
# @executed	as @a[tag=!detached,gamemode=!spectator] & at @s
#
# @within	switch:modes/boat_race/second [ as @a[tag=!detached,gamemode=!spectator] & at @s ]
#

summon mangrove_chest_boat
ride @s mount @n[type=mangrove_chest_boat]

