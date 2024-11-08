
#> switch:modes/traitors_game/roles/vol
#
# @within	switch:modes/traitors_game/death/player
#

# Tag the Floupy and copy new role
tag @p[tag=!detached,scores={switch.temp.kills=-1,switch.temp.role=7}] add switch.temp.floupy
scoreboard players operation #role switch.data = @s switch.temp.role
scoreboard players operation #player_id switch.id = @p[tag=switch.temp.floupy] switch.id
scoreboard players operation @p[tag=switch.temp.floupy] switch.temp.role = #role switch.data
scoreboard players operation @e[type=marker,predicate=switch:has_same_id] switch.temp.role = #role switch.data

# Copy solitaire if any
execute if entity @s[tag=switch.solitaire] run tag @p[tag=switch.temp.floupy] add switch.solitaire
execute if entity @s[tag=switch.solitaire] run tag @e[type=marker,predicate=switch:has_same_id] add switch.solitaire

# Tellraws
function switch:translations/modes_traitors_game_roles_vol

# Effects
execute if score #role switch.data matches 1 run attribute @p[tag=switch.temp.floupy] max_health base set 16
execute if score #role switch.data matches 1 run team join switch.temp.inspector @p[tag=switch.temp.floupy]
execute if score #role switch.data matches 3..4 run attribute @p[tag=switch.temp.floupy] movement_speed base set 0.115
execute if score #role switch.data matches 7 run attribute @p[tag=switch.temp.floupy] max_health base set 30

# Remove tag
scoreboard players reset @a[tag=switch.temp.floupy] switch.temp.kills
tag @a[tag=switch.temp.floupy] remove switch.temp.floupy

