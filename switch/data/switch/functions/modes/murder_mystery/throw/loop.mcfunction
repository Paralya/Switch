
# Go forward and rotate
tp @s ^ ^ ^0.69
execute on passengers store result entity @s Rotation[1] float 1 run scoreboard players get #rotation switch.data

# Kill player if on path
execute at @s positioned ~ ~-1 ~ if entity @a[tag=!detached,gamemode=adventure,distance=..1] run advancement grant @p[tag=!detached,gamemode=adventure,scores={switch.temp.role=3}] only switch:visible/15
execute at @s positioned ~ ~-1 ~ as @a[tag=!detached,gamemode=adventure,distance=..1] at @s run function switch:modes/murder_mystery/kill_player

# Kill the knife if on block
execute unless block ~ ~ ~ #stardust:air on passengers run kill @s
execute unless block ~ ~ ~ #stardust:air run kill @s

