
execute if score @s switch.temp.deathCount matches 1.. run tellraw @a [{"selector":"@s","color":"red"},{"text":" est éliminé, j'ai pas aimé son tweet perso il me manquera pas !"}]
scoreboard players set @s switch.temp.passage_vote -1
execute at @e[type=marker,tag=switch.selected_map,limit=1] run tp @s ~ ~ ~
scoreboard players reset @s switch.temp.deathCount
tag @s remove switch.alive
tag @s remove switch.looser
gamemode spectator @s
effect clear @s
clear @s
scoreboard players set @s switch.temp.id -1
tellraw @s {"text":"N'oubliez pas que vous pouvez toujours voter malgré votre élimination !\n","color":"red"}
