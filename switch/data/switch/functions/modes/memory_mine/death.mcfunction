
execute if entity @s[gamemode=!spectator] run effect give @s glowing infinite 255 true
execute if entity @s[gamemode=!spectator] run particle explosion ~ ~ ~ 0 0 0 1 1 force @a[distance=..50]
execute if entity @s[gamemode=!spectator] run playsound entity.generic.explode ambient @a[distance=..50]
execute if entity @s[gamemode=!spectator] run tellraw @a[tag=!detached] [{"selector":"@s","color":"red"},{"text":" est mort, il a survécu "},{"score":{"name":"#memory_mine_seconds","objective":"switch.data"}},{"text":" secondes !"}]
execute if entity @s[gamemode=!spectator] run scoreboard players add @s switch.stats.deaths 1
scoreboard players reset @s switch.temp.cooldown

gamemode spectator @s
effect clear @s
execute if entity @s at @e[type=marker,tag=switch.selected_map,limit=1] run tp @s ~ ~ ~
clear @s

