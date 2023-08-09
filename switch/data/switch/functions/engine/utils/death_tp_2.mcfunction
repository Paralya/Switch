execute store result entity @s Pos[0] double 1 run data get storage switch:main temp_pos[0]
execute store result entity @s Pos[1] double 1 run data get storage switch:main temp_pos[1]
execute store result entity @s Pos[2] double 1 run data get storage switch:main temp_pos[2]

execute at @s as @p[tag=switch.temp.tp] run tp @s ~ ~ ~


kill @s