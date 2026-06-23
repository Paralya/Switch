
#> switch:modes/sheepwars/detect_end
#
# @within	switch:modes/sheepwars/tick
#

function switch:modes/_common/detect_2team_state

# Cas des vainqueurs
function switch:modes/sheepwars/translations/detect_end

execute if score #game_state switch.data matches 1 as @a[tag=!detached,gamemode=!spectator,team=switch.temp.red] at @s run function switch:engine/add_win
execute if score #game_state switch.data matches 2 as @a[tag=!detached,gamemode=!spectator,team=switch.temp.blue] at @s run function switch:engine/add_win
execute if score #game_state switch.data matches 1 unless score #test_mode switch.data matches 1 as @a[tag=!detached,gamemode=!spectator,team=switch.temp.red] unless score @s sheepwars.launched_count matches 1.. run advancement grant @s only switch:visible/11
execute if score #game_state switch.data matches 2 unless score #test_mode switch.data matches 1 as @a[tag=!detached,gamemode=!spectator,team=switch.temp.blue] unless score @s sheepwars.launched_count matches 1.. run advancement grant @s only switch:visible/11

# Visuel de fin de partie
execute if score #remaining_time switch.data matches 1 as @a[tag=!detached] at @s run playsound item.totem.use ambient @s

