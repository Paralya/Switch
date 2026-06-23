
#> switch:modes/_common/fireball/set_motion
#
# @executed	as @e[type=fireball,tag=switch.new]
#
# @within	switch:modes/_common/fireball/aim_and_launch [ as @e[type=fireball,tag=switch.new] ]
#

execute store result entity @s Motion[0] double 0.001 run data get storage switch:main Pos[0]
execute store result entity @s Motion[1] double 0.001 run data get storage switch:main Pos[1]
execute store result entity @s Motion[2] double 0.001 run data get storage switch:main Pos[2]
tag @s remove switch.new

