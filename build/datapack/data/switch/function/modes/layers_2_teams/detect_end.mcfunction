
#> switch:modes/layers_2_teams/detect_end
#
# @within	switch:modes/layers_2_teams/tick
#

function switch:modes/_common/detect_2team_state

# Cas des vainqueurs
function switch:modes/layers_2_teams/translations/detect_end

execute if score #game_state switch.data matches 1 as @a[tag=!detached,gamemode=!spectator,team=switch.temp.red] at @s run function switch:engine/add_win
execute if score #game_state switch.data matches 2 as @a[tag=!detached,gamemode=!spectator,team=switch.temp.blue] at @s run function switch:engine/add_win

# Visuel de fin de partie
execute if score #remaining_time switch.data matches 1 as @a[tag=!detached] at @s run playsound item.totem.use ambient @s

