
#> switch:modes/rush_the_point/fireball/set_motion
#
# @within	switch:modes/rush_the_point/fireball/right_click
#

execute store result entity @s Motion[0] double 0.001 run data get storage switch:main Pos[0]
execute store result entity @s Motion[1] double 0.001 run data get storage switch:main Pos[1]
execute store result entity @s Motion[2] double 0.001 run data get storage switch:main Pos[2]
tag @s remove switch.new

