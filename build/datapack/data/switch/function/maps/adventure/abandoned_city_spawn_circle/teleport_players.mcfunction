
#> switch:maps/adventure/abandoned_city_spawn_circle/teleport_players
#
# @within	switch:maps/adventure/abandoned_city_spawn_circle/
#

data modify entity @s Pos set value [43000.0d, 101.0d, 43000.0d]
execute at @s run tp @a[tag=!detached] ~ ~ ~

