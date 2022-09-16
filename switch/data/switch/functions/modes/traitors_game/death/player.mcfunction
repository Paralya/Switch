
scoreboard players reset @s switch.temp.deathCount
tag @s[tag=!switch.traitors_game.second_life] remove switch.alive
tag @s[tag=!switch.alive] add switch.to_tp
gamemode spectator @s[tag=!switch.alive]
effect clear @s[tag=!switch.alive]

attribute @s[tag=!switch.alive] generic.max_health base set 20.0
attribute @s[tag=!switch.alive] generic.max_health modifier remove 1-1-1-1-2
attribute @s[tag=!switch.alive] generic.movement_speed modifier remove 1-1-1-1-1


#Second life management for Ninja role
tellraw @s[tag=switch.traitors_game.second_life] ["\n",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Vous est mort mais votre capacité de "},{"text":"ninja","color":"green"},{"text":" vous permet de revenir dans la partie !"}]
execute if entity @s[tag=switch.traitors_game.second_life] run spreadplayers 1500 1500 1 100 under 160 false @a
execute at @s[tag=switch.traitors_game.second_life] run playsound entity.wither.break_block ambient @s
attribute @s[tag=switch.traitors_game.second_life] generic.max_health base set 10.0
attribute @s[tag=switch.traitors_game.second_life] generic.movement_speed modifier add 1-1-1-1-1 "Ninja" 0.15 multiply_base
tag @s[tag=switch.traitors_game.second_life] remove switch.traitors_game.second_life


