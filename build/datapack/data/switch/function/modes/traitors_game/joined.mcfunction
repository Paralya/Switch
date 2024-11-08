
#> switch:modes/traitors_game/joined
#
# @within	switch:modes/traitors_game/calls/joined
#

# Ici : dans tous les cas, tuer la personne qui join (+ exception pour le ninja)
execute if score @s switch.temp.role matches 3 run scoreboard players set @s switch.temp.role 4
function switch:modes/traitors_game/death/player

# If new player, make sure to remove all tags
tag @s remove switch.solitaire
tag @s remove switch.floupy

