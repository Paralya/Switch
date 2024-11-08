
#> switch:modes/layers_4_teams/detect_end
#
# @within	switch:modes/layers_4_teams/tick
#

# On regarde l'état de la partie
scoreboard players set #game_state switch.data 0
execute if entity @a[tag=!detached,gamemode=!spectator,team=switch.temp.red] unless entity @a[tag=!detached,gamemode=!spectator,team=!switch.temp.red] run scoreboard players set #game_state switch.data 1
execute if entity @a[tag=!detached,gamemode=!spectator,team=switch.temp.blue] unless entity @a[tag=!detached,gamemode=!spectator,team=!switch.temp.blue] run scoreboard players set #game_state switch.data 2
execute if entity @a[tag=!detached,gamemode=!spectator,team=switch.temp.green] unless entity @a[tag=!detached,gamemode=!spectator,team=!switch.temp.green] run scoreboard players set #game_state switch.data 3
execute if entity @a[tag=!detached,gamemode=!spectator,team=switch.temp.yellow] unless entity @a[tag=!detached,gamemode=!spectator,team=!switch.temp.yellow] run scoreboard players set #game_state switch.data 4
execute unless entity @a[tag=!detached,gamemode=!spectator] run scoreboard players set #game_state switch.data 5

# 1 = Victoire Rouge
# 2 = Victoire Bleue
# 3 = Victoire Verte
# 4 = Victoire Jaune
# 5 = Plus personne

# Cas de fin de partie
execute if score #game_state switch.data matches 1..4 run scoreboard players set #remaining_time switch.data 0

# Cas des vainqueurs
function switch:translations/modes_layers_4_teams_detect_end

execute if score #game_state switch.data matches 1 as @a[tag=!detached,gamemode=!spectator,team=switch.temp.red] at @s run function switch:engine/add_win
execute if score #game_state switch.data matches 2 as @a[tag=!detached,gamemode=!spectator,team=switch.temp.blue] at @s run function switch:engine/add_win
execute if score #game_state switch.data matches 3 as @a[tag=!detached,gamemode=!spectator,team=switch.temp.green] at @s run function switch:engine/add_win
execute if score #game_state switch.data matches 4 as @a[tag=!detached,gamemode=!spectator,team=switch.temp.yellow] at @s run function switch:engine/add_win

# Visuel de fin de partie
execute if score #remaining_time switch.data matches 0 as @a[tag=!detached] at @s run playsound item.totem.use ambient @s

