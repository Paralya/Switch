
#> switch:modes/one_shot/respawn/spawn_marker
#
# @within	switch:modes/one_shot/start
#

function switch:maps/spread_one_player
execute at @s run forceload add ~ ~
tag @s add switch.respawn

# Add position to get center
execute store result score #x switch.data run data get entity @s Pos[0]
execute store result score #y switch.data run data get entity @s Pos[1]
execute store result score #z switch.data run data get entity @s Pos[2]
scoreboard players operation #middle_x switch.data += #x switch.data
scoreboard players operation #middle_y switch.data += #y switch.data
scoreboard players operation #middle_z switch.data += #z switch.data

