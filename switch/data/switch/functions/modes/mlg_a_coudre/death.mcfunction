
execute if score @s switch.temp.lives matches 1.. run scoreboard players remove @s switch.temp.lives 1
execute if score @s switch.temp.lives matches 1 run tellraw @a[tag=!switch.detached] [{"selector":"@s","color":"red"},{"text":" a raté son saut mais il lui reste une vie !"}]
execute if score @s switch.temp.lives matches 0 run tellraw @a[tag=!switch.detached] [{"selector":"@s","color":"red"},{"text":" a raté son saut, il termine "},{"score":{"name":"#position","objective":"switch.data"}},{"text":"ème !"}]
execute if score @s switch.temp.lives matches 0 run scoreboard players reset @s switch.temp.lives

gamemode spectator @s
execute at @e[type=marker,tag=switch.selected_map,limit=1] run tp @s ~ ~ ~
effect clear @s
clear @s

