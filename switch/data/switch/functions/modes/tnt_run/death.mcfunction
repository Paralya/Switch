
execute if entity @s[gamemode=!spectator] run tellraw @a [{"selector":"@s","color":"red"},{"text":" est mort, il a survécu "},{"score":{"name":"#tnt_run_seconds","objective":"switch.data"}},{"text":" secondes !"}]

gamemode spectator @s
execute if entity @s at @e[type=marker,tag=switch.selected_map,limit=1] run tp @s ~ ~ ~
effect clear @s
clear @s

