
execute if score @s switch.temp.deathCount matches 1.. run tellraw @a [{"selector":"@s","color":"red"},{"text":" est mort, il a survécu "},{"score":{"name":"#warden_escape_seconds","objective":"switch.data"}},{"text":" secondes !"}]

scoreboard players reset @s switch.temp.deathCount
tag @s remove switch.alive
gamemode spectator @s
tp @s 520 101.69 520
effect clear @s
clear @s

