
#> switch:modes/spectres_game/detect_end
#
# @within	switch:modes/spectres_game/tick
#

scoreboard players set #game_state switch.data 0
execute if entity @a[scores={switch.alive=1..},team=switch.temp.visible] unless entity @a[scores={switch.alive=1..},team=switch.temp.spectre] run scoreboard players set #game_state switch.data 1
execute if entity @a[scores={switch.alive=1..},team=switch.temp.spectre] unless entity @a[scores={switch.alive=1..},team=switch.temp.visible] run scoreboard players set #game_state switch.data 2
execute if score #game_state switch.data matches 2 unless entity @a[scores={switch.alive=1..,switch.temp.spectror=0}] run scoreboard players set #game_state switch.data 4
execute unless entity @a[scores={switch.alive=1..}] run scoreboard players set #game_state switch.data 3

# 1 = que des visibles
# 2 = que des spectres
# 3 = Plus personne

# Cas de fin de partie
execute if score #game_state switch.data matches 1..4 run scoreboard players set #spectres_game_seconds switch.data 100000

# Cas des vainqueurs
function switch:translations/modes_spectres_game_detect_end

execute if score #game_state switch.data matches 1 as @a[tag=!detached,scores={switch.alive=1..},team=switch.temp.visible] at @s run function switch:engine/add_win
execute if score #game_state switch.data matches 2 as @a[tag=!detached,scores={switch.alive=1..},team=switch.temp.spectre] unless score @s switch.temp.spectror matches 1 at @s run function switch:engine/add_win
execute if score #game_state switch.data matches 4 as @a[tag=!detached,scores={switch.temp.spectror=1},team=switch.temp.spectre] at @s run function switch:engine/add_win
execute if score #game_state switch.data matches 1 unless score #test_mode switch.data matches 1 if score #nb_dead_visibles switch.data matches 0 as @a[tag=!detached,scores={switch.alive=1..},team=switch.temp.visible] run advancement grant @s only switch:visible/12
execute if score #game_state switch.data matches 2 unless score #test_mode switch.data matches 1 if score #nb_dead_spectres switch.data matches 0 as @a[tag=!detached,scores={switch.alive=1..},team=switch.temp.spectre] run advancement grant @s only switch:visible/12

# Visuel de fin de partie
execute if score #spectres_game_seconds switch.data matches 900.. as @a[tag=!detached] at @s run playsound item.totem.use ambient @s

