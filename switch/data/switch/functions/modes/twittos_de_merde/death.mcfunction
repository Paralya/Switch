
execute if score @s switch.temp.deathCount matches 1.. run tellraw @a [{"selector":"@s","color":"red"},{"text":" est mort, j'ai pas aimé son tweet perso il me manquera pas !"}]

execute at @e[type=marker,tag=switch.selected_map,limit=1] run tp @s ~ ~ ~
scoreboard players reset @s switch.temp.deathCount
tag @s remove switch.alive
gamemode spectator @s
effect clear @s
clear @s
tellraw @s {"text":"N'oubliez pas que vous pouvez toujours voter malgré votre mort !","color":"red"}
