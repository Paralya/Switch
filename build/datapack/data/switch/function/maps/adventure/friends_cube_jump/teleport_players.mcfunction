
#> switch:maps/adventure/friends_cube_jump/teleport_players
#
# @within	switch:maps/adventure/friends_cube_jump/
#

data modify entity @s Pos set value [9000.0d, 101.0d, 9000.0d]
execute at @s run tp @a[tag=!detached] ~ ~ ~

