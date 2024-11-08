
# On regarde l'état de la partie
scoreboard players set #game_state switch.data 0
execute if entity @a[tag=!detached,gamemode=!spectator,team=switch.temp.red] unless entity @a[tag=!detached,gamemode=!spectator,team=!switch.temp.red] run scoreboard players add #game_state switch.data 1
execute if entity @a[tag=!detached,gamemode=!spectator,team=switch.temp.blue] unless entity @a[tag=!detached,gamemode=!spectator,team=!switch.temp.blue] run scoreboard players add #game_state switch.data 2
execute unless entity @a[tag=!detached,gamemode=!spectator] run scoreboard players add #game_state switch.data 3

# 1 = Victoire Rouge
# 2 = Victoire Bleue
# 3 = Plus personne

# Cas de fin de partie
execute if score #game_state switch.data matches 1..3 run scoreboard players set #remaining_time switch.data 0

# Cas des vainqueurs
function switch:translations/modes_sheepwars_detect_end

execute if score #game_state switch.data matches 1 as @a[tag=!detached,gamemode=!spectator,team=switch.temp.red] at @s run function switch:engine/add_win
execute if score #game_state switch.data matches 2 as @a[tag=!detached,gamemode=!spectator,team=switch.temp.blue] at @s run function switch:engine/add_win
execute if score #game_state switch.data matches 1 unless score #test_mode switch.data matches 1 as @a[tag=!detached,gamemode=!spectator,team=switch.temp.red] unless score @s sheepwars.launched_count matches 1.. run advancement grant @s only switch:visible/11
execute if score #game_state switch.data matches 2 unless score #test_mode switch.data matches 1 as @a[tag=!detached,gamemode=!spectator,team=switch.temp.blue] unless score @s sheepwars.launched_count matches 1.. run advancement grant @s only switch:visible/11

# Visuel de fin de partie
execute if score #remaining_time switch.data matches 1 as @a[tag=!detached] at @s run playsound item.totem.use ambient @s

