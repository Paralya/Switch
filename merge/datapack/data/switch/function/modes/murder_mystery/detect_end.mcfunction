
# On regarde l'état de la partie
scoreboard players set #game_state switch.data 0
execute if entity @a[tag=!detached,gamemode=!spectator,scores={switch.temp.role=3}] unless entity @a[tag=!detached,gamemode=!spectator,scores={switch.temp.role=1..2}] run scoreboard players set #game_state switch.data 1
execute if entity @a[tag=!detached,gamemode=!spectator,scores={switch.temp.role=1..2}] unless entity @a[tag=!detached,gamemode=!spectator,scores={switch.temp.role=3}] run scoreboard players set #game_state switch.data 2
execute unless entity @a[tag=!detached,gamemode=!spectator] run scoreboard players set #game_state switch.data 3

# 1 = Victoire Innocent
# 2 = Victoire Murder
# 3 = Plus personne

# Cas de fin de partie
execute if score #game_state switch.data matches 1..3 run scoreboard players set #remaining_time switch.data 0
execute if score #remaining_time switch.data matches 1 run scoreboard players set #remaining_time switch.data 0

# Cas des vainqueurs

execute if score #remaining_time switch.data matches ..1 if score #game_state switch.data matches 0 as @a[tag=!detached,gamemode=!spectator,scores={switch.temp.role=1..2}] at @s run function switch:engine/add_win
execute if score #remaining_time switch.data matches ..1 if score #game_state switch.data matches 1 as @a[tag=!detached,gamemode=!spectator,scores={switch.temp.role=3}] at @s run function switch:engine/add_win
execute if score #remaining_time switch.data matches ..1 if score #game_state switch.data matches 2 as @a[tag=!detached,gamemode=!spectator,scores={switch.temp.role=1..2}] at @s run function switch:engine/add_win

function switch:translations/modes_murder_mystery_detect_end
execute if score #remaining_time switch.data matches ..1 unless score #test_mode switch.data matches 1 as @a[scores={switch.temp.role=3}] on attacker run advancement grant @s[scores={switch.temp.role=1}] only switch:visible/61

# Visuel de fin de partie
execute if score #remaining_time switch.data matches ..1 as @a[tag=!detached] at @s run playsound item.totem.use ambient @s

