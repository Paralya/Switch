
#> switch:player/trigger/detach/basic_stuff
#
# @within	switch:player/make_join
#			switch:player/trigger/detach/main
#

scoreboard players set @s switch.lobby_respawn 0
effect clear @s
function switch:utils/reset_attributes
effect give @s saturation infinite 0 true
effect give @s regeneration 10 255 true
gamemode adventure @s
clear @s
team join switch.no_pvp @s
xp set @s 0 levels
xp set @s 0 points

# Kill any cinematic entity that was linked to the player
scoreboard players operation #player_id switch.id = @s switch.id
execute as @e[tag=switch.cinematic,predicate=switch:has_same_id] run function switch:cinematic/kill

# Teleport to the lobby (cinematic if close, otherwise tp)
scoreboard players set #is_close switch.data 0
execute at @s if dimension minecraft:overworld positioned 0 69.69 0 store success score #is_close switch.data if entity @s[distance=..200]
execute if score #is_close switch.data matches 1 run function switch:cinematic/launch {x:0.5,y:69.69,z:0.5,time:20,with:{pitch:0,yaw:0,particle:1,interpolation:2}}
execute if score #is_close switch.data matches 0 in minecraft:overworld run tp @s 0 69.69 0 0 0

