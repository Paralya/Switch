
# French
execute if entity @s[gamemode=!spectator] run tellraw @a[scores={switch.lang=0},tag=!detached] [{"selector":"@s","color":"red"},{"text":" est éliminé, j'ai pas aimé son tweet perso il me manquera pas !"}]
tellraw @s[scores={switch.lang=0}] {"text":"N'oubliez pas que vous pouvez toujours voter malgré votre élimination !\n","color":"red"}

