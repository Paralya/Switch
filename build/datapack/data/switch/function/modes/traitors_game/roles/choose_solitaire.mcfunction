
#> switch:modes/traitors_game/roles/choose_solitaire
#
# @within	switch:modes/traitors_game/second
#

# Choose a solitaire alive
tag @r[tag=!detached,scores={switch.alive=1..,switch.temp.role=2..4}] add switch.solitaire

# Tellraw
function switch:translations/modes_traitors_game_roles_choose_solitaire
attribute @p[tag=switch.solitaire] generic.max_health base set 24

