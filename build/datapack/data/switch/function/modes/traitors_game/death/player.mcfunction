
#> switch:modes/traitors_game/death/player
#
# @within	switch:modes/traitors_game/joined
#			switch:modes/traitors_game/process_end [ as @a[tag=!detached,sort=random] ]
#

# Voleur (Floupy role = 7)
execute if entity @a[tag=!detached,scores={switch.temp.kills=-1..,switch.temp.role=7}] run function switch:modes/traitors_game/roles/vol

# Death management
execute unless score #process_end switch.data matches 1 at @n[type=marker,tag=switch.selected_map] run tp @s ~ ~ ~ ~ ~
execute unless score @s switch.temp.role matches 3 run scoreboard players set @s switch.alive 0
execute if score @s switch.temp.role matches 3 run scoreboard players set @s switch.temp.role 4
attribute @s[scores={switch.alive=0}] max_health base reset
tag @s[scores={switch.alive=0}] add switch.to_tp
gamemode spectator @s[scores={switch.alive=0}]
effect clear @s[scores={switch.alive=0}]

# Second life management for Ninja role
function switch:translations/modes_traitors_game_death_player
attribute @s[scores={switch.alive=1..,switch.temp.role=4}] max_health base set 10.0
attribute @s[scores={switch.alive=1..,switch.temp.role=4}] movement_speed base set 0.115
tag @s[scores={switch.alive=1..,switch.temp.role=4}] add switch.ninja_death

