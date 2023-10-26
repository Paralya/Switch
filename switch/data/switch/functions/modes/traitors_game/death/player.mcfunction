
# Death management
execute at @e[type=marker,tag=switch.selected_map,limit=1] run tp @s ~ ~ ~
execute unless score @s switch.temp.role matches 3 run scoreboard players set @s switch.alive 0
execute if score @s switch.temp.role matches 3 run scoreboard players set @s switch.temp.role 4
tag @s[scores={switch.alive=0}] add switch.to_tp
gamemode spectator @s[scores={switch.alive=0}]
effect clear @s[scores={switch.alive=0}]

attribute @s[scores={switch.alive=0}] generic.max_health base set 20.0
attribute @s[scores={switch.alive=0}] generic.max_health modifier remove 1-1-1-1-2
attribute @s[scores={switch.alive=0}] generic.movement_speed modifier remove 1-1-1-1-1


# Second life management for Ninja role
tellraw @s[scores={switch.alive=1..,switch.temp.role=4}] ["\n",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Vous êtes mort mais votre capacité de "},{"text":"ninja","color":"green"},{"text":" vous permet de revenir dans la partie !"}]
attribute @s[scores={switch.alive=1..,switch.temp.role=4}] generic.max_health base set 10.0
attribute @s[scores={switch.alive=1..,switch.temp.role=4}] generic.movement_speed modifier add 1-1-1-1-1 "Ninja" 0.15 multiply_base
tag @s[scores={switch.alive=1..,switch.temp.role=4}] add switch.ninja_death


