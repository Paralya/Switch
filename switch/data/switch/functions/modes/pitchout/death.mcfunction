
execute if entity @s[tag=switch.first_life,tag=!switch.second_life] run tellraw @a [{"selector":"@s","color":"red"},{"text":" est mort définitivement, il a survécu "},{"score":{"name":"#pitchout_seconds","objective":"switch.data"}},{"text":" secondes !"}]
execute if entity @s[tag=switch.second_life,tag=!third_life.second_life] run tellraw @a [{"selector":"@s","color":"red"},{"text":" est tombé, il ne lui reste plus qu'une vie !"}]
execute if entity @s[tag=switch.third_life] run tellraw @a [{"selector":"@s","color":"red"},{"text":" est tombé, il lui reste seulement 2 vies !"}]

tag @s[tag=switch.first_life,tag=!switch.second_life] remove switch.first_life
tag @s[tag=switch.second_life,tag=!switch.third_life] remove switch.second_life
tag @s[tag=switch.third_life] remove switch.third_life
execute if entity @s[tag=switch.first_life] run function switch:modes/pitchout/teleport_players

gamemode spectator @s[tag=!switch.first_life]
tp @s[tag=!switch.first_life] 1000 110 1000
effect clear @s[tag=!switch.first_life]
clear @s[tag=!switch.first_life]

