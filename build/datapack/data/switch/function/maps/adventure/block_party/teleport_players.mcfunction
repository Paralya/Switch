
#> switch:maps/adventure/block_party/teleport_players
#
# @within	switch:maps/adventure/block_party/
#

data modify entity @s Pos set value [110040.0d, 102.0d, 110040.0d]
execute at @s run tp @a[tag=!detached] ~ ~ ~ 90 0

