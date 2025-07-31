
#> switch:modes/murder_mystery/throw/loop
#
# @executed	as @e[type=armor_stand,tag=switch.thrown] & at @s
#
# @within	switch:modes/murder_mystery/tick [ as @e[type=armor_stand,tag=switch.thrown] & at @s ]
#

# Go forward and rotate
tp @s ^ ^ ^0.69
execute on passengers store result entity @s Rotation[1] float 1 run scoreboard players get #rotation switch.data

# Kill arrow if on path
scoreboard players set #arrow switch.data 0
execute at @s store success score #arrow switch.data run kill @e[type=arrow,limit=1,sort=nearest,distance=..1]
execute if score #arrow switch.data matches 1 on passengers run kill @s
execute if score #arrow switch.data matches 1 run kill @s
execute if score #arrow switch.data matches 1 unless score #test_mode switch.data matches 1 run advancement grant @p[tag=!detached,gamemode=!spectator,scores={switch.temp.role=3}] only switch:visible/73
execute if score #arrow switch.data matches 1 run return 0

# Kill player if on path
execute unless score #test_mode switch.data matches 1 at @s positioned ~ ~-1 ~ if entity @a[tag=!detached,gamemode=adventure,distance=..1] run advancement grant @p[tag=!detached,gamemode=adventure,scores={switch.temp.role=3}] only switch:visible/15
execute at @s positioned ~ ~-1 ~ as @a[tag=!detached,gamemode=adventure,distance=..1] at @s run function switch:modes/murder_mystery/kill_player

# Kill the knife if on destination
execute store result score #x switch.data run data get entity @s Pos[0] 10
execute store result score #y switch.data run data get entity @s Pos[1] 10
execute store result score #z switch.data run data get entity @s Pos[2] 10
execute on passengers store result score #dest_x switch.data run data get entity @s item.components."minecraft:custom_data".destination[0] 10
execute on passengers store result score #dest_y switch.data run data get entity @s item.components."minecraft:custom_data".destination[1] 10
execute on passengers store result score #dest_z switch.data run data get entity @s item.components."minecraft:custom_data".destination[2] 10
function switch:translations/modes_murder_mystery_throw_loop
scoreboard players operation #x switch.data -= #dest_x switch.data
scoreboard players operation #y switch.data -= #dest_y switch.data
scoreboard players operation #z switch.data -= #dest_z switch.data
execute if score #x switch.data matches -10..10 if score #y switch.data matches -10..10 if score #z switch.data matches -10..10 on passengers run kill @s
execute if score #x switch.data matches -10..10 if score #y switch.data matches -10..10 if score #z switch.data matches -10..10 run kill @s

