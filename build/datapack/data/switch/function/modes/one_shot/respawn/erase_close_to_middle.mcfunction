
#> switch:modes/one_shot/respawn/erase_close_to_middle
#
# @within	switch:modes/one_shot/start
#

execute store result score #temp switch.data if entity @e[tag=switch.respawn]
scoreboard players operation #middle_x switch.data /= #temp switch.data
scoreboard players operation #middle_y switch.data /= #temp switch.data
scoreboard players operation #middle_z switch.data /= #temp switch.data
execute store result entity @s Pos[0] double 1 run scoreboard players get #middle_x switch.data
execute store result entity @s Pos[1] double 1 run scoreboard players get #middle_y switch.data
execute store result entity @s Pos[2] double 1 run scoreboard players get #middle_z switch.data

execute at @s run kill @e[tag=switch.respawn,sort=nearest,limit=64]
kill @s

