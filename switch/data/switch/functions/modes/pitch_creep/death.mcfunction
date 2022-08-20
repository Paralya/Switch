
tellraw @s[scores={switch.temp.deathCount=1..}] ["",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Vous êtes mort, vous avez survécu "},{"score":{"name":"#pitch_creep_seconds","objective":"switch.data"}},{"text":" secondes !"}]

scoreboard players reset @s switch.temp.deathCount
tag @s remove switch.alive
gamemode spectator @s
tp @s 100 100 100
effect clear @s
clear @s

