
#> switch:modes/block_party/check_movement
#
# @within	switch:modes/block_party/second
#

execute store result score #x switch.data run data get entity @s Pos[0] 10
execute store result score #z switch.data run data get entity @s Pos[2] 10
scoreboard players operation #x switch.data -= @s switch.temp.old_x
scoreboard players operation #z switch.data -= @s switch.temp.old_z
execute unless score #x switch.data matches 0 run scoreboard players set @s switch.temp.time_since_movement 0
execute unless score #z switch.data matches 0 run scoreboard players set @s switch.temp.time_since_movement 0
execute store result score @s switch.temp.old_x run data get entity @s Pos[0] 10
execute store result score @s switch.temp.old_z run data get entity @s Pos[2] 10

