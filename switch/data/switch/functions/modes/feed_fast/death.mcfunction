
execute if score @s switch.temp.deathCount matches 1.. run tellraw @a [{"selector":"@s","color":"red"},{"text":" est mort, il a survécu "},{"score":{"name":"#feed_fast_seconds","objective":"switch.data"}},{"text":" secondes !"}]

scoreboard players reset @s switch.temp.deathCount
tag @s remove switch.alive
gamemode spectator @s
effect clear @s
clear @s
