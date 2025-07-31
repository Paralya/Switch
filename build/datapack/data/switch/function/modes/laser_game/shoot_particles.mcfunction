
#> switch:modes/laser_game/shoot_particles
#
# @executed	as @e[tag=iris.ray] & at @s
#
# @within	switch:modes/laser_game/shoot [ as @e[tag=iris.ray] & at @s ]
#			switch:modes/laser_game/shoot_particles [ at @s ]
#

tp @s ~ ~ ~ facing entity @p[tag=switch.temp] eyes
execute if score #color switch.data matches 0 run particle dust{color:[0.0,0.0,1.0],scale:0.5} ~ ~ ~ 0 0 0 0 1
execute if score #color switch.data matches 1 run particle dust{color:[1.0,0.0,0.0],scale:0.5} ~ ~ ~ 0 0 0 0 1
tp @s ^ ^ ^.025

execute unless entity @a[tag=!detached,tag=switch.temp,distance=..2] at @s run function switch:modes/laser_game/shoot_particles

