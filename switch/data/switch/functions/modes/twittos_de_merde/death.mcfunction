
execute if entity @s[gamemode=!spectator] run tellraw @a[tag=!switch.detached] [{"selector":"@s","color":"red"},{"text":" est éliminé, j'ai pas aimé son tweet perso il me manquera pas !"}]
scoreboard players set @s switch.temp.passage_vote -1
function switch:utils/classic_death
scoreboard players set @s switch.alive 0
tag @s remove switch.looser

scoreboard players set @s switch.temp.id -1
tellraw @s {"text":"N'oubliez pas que vous pouvez toujours voter malgré votre élimination !\n","color":"red"}

