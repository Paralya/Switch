
#> switch:modes/tnt_run/dash/direction
#
# @executed	positioned 0.0 0.0 0.0
#
# @within	switch:modes/tnt_run/dash/use [ positioned 0.0 0.0 0.0 ]
#

data modify entity @s Rotation set from storage switch:main Rotation
execute at @s run tp @s ^ ^ ^1
execute store result score #dash_x switch.data run data get entity @s Pos[0] 10000
execute store result score #dash_z switch.data run data get entity @s Pos[2] 10000
kill @s

