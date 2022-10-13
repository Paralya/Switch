
execute if score @s switch.temp.deathCount matches 1.. run tellraw @a [{"selector":"@s","color":"red"},{"text":" est mort, il a survécu "},{"score":{"name":"#a_template_seconds","objective":"switch.data"}},{"text":" secondes !"}]

scoreboard players reset @s switch.temp.deathCount
tag @s remove switch.alive
gamemode spectator @s
tp @s 100 110 100
effect clear @s
clear @s

