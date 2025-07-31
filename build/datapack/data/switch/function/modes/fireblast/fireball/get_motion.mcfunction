
#> switch:modes/fireblast/fireball/get_motion
#
# @executed	positioned 0 0 0
#
# @within	switch:modes/fireblast/fireball/right_click [ positioned 0 0 0 ]
#

data modify entity @s Rotation set from storage switch:main Rotation
execute at @s run tp @s ^ ^ ^1000
data modify storage switch:main Pos set from entity @s Pos
kill @s

