
execute if score @s switch.temp.deathCount matches 1.. run tellraw @a [{"selector":"@s","color":"red"},{"text":" est mort, il a survécu "},{"score":{"name":"#warden_escape_seconds","objective":"switch.data"}},{"text":" secondes !"}]

execute at @e[type=marker,tag=switch.selected_map,limit=1] run tp @s ~ ~ ~
scoreboard players reset @s switch.temp.deathCount
scoreboard players set @s switch.alive 0
gamemode spectator @s
effect clear @s
clear @s

