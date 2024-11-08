
#> switch:modes/fireblast/fireball/get_motion
#
# @within	switch:modes/fireblast/fireball/right_click
#

data modify entity @s Rotation set from storage switch:main Rotation
execute at @s run tp @s ^ ^ ^1000
data modify storage switch:main Pos set from entity @s Pos
kill @s

