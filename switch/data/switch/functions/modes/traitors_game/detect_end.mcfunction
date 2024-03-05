
scoreboard players set #game_state switch.data 0
# Role reminder (1 = inspecteur, 2 = innocent, 3 & 4 = ninja, 5 = traitor, 6 = big traitor)
execute if entity @a[tag=!detached,scores={switch.alive=1..,switch.temp.role=..4}] run scoreboard players add #game_state switch.data 1
execute if entity @a[tag=!detached,scores={switch.alive=1..,switch.temp.role=5}] run scoreboard players add #game_state switch.data 2
execute if entity @a[tag=!detached,scores={switch.alive=1..,switch.temp.role=6}] run scoreboard players add #game_state switch.data 4

# Details with scenarios
execute if score #sc_solitaire switch.data matches 1 if entity @a[tag=switch.solitaire,scores={switch.alive=1..}] run scoreboard players set #game_state switch.data 8
execute if score #sc_solitaire switch.data matches 1 if score #game_state switch.data matches 8 unless entity @a[tag=!switch.solitaire,scores={switch.alive=1..}] run scoreboard players set #game_state switch.data 9
execute if score #sc_floupy switch.data matches 1 if entity @a[scores={switch.alive=1..,switch.temp.role=7}] run scoreboard players set #game_state switch.data 10

# 1 = que des innocents
# 2 = que des traitres normaux
# 3 = Innocents et traitres
# 4 = que le gros traitre
# 5 = gros traitre + innocent
# 6 = gros traitre + traitres normaux
# 7 = encore tous les camps
# 8 = solitaire et autre restant
# 9 = solitaire seulement
# 10 = floupy (non volé) et autre restant

# Cas de fin de partie
execute if score #game_state switch.data matches 1 run scoreboard players set #traitors_game_seconds switch.data 100000
execute if score #game_state switch.data matches 2 run scoreboard players set #traitors_game_seconds switch.data 100000
execute if score #game_state switch.data matches 4 run scoreboard players set #traitors_game_seconds switch.data 100000
execute if score #game_state switch.data matches 9 run scoreboard players set #traitors_game_seconds switch.data 100000
execute if score #traitors_game_seconds switch.data matches 100000 as @e[type=marker,tag=switch.player_dead] run function switch:modes/traitors_game/death/for_global

# Cas des vainqueurs
execute if score #game_state switch.data matches 1 as @a[tag=!detached,scores={switch.alive=1..,switch.temp.role=..4}] at @s run function switch:engine/add_win
execute if score #game_state switch.data matches 2 as @a[tag=!detached,scores={switch.alive=1..,switch.temp.role=5},tag=!switch.traitors_game.big_traitor] at @s run function switch:engine/add_win
execute if score #game_state switch.data matches 4 as @a[tag=!detached,scores={switch.alive=1..,switch.temp.role=6}] at @s run function switch:engine/add_win
execute if score #game_state switch.data matches 9 as @a[tag=!detached,scores={switch.alive=1..},tag=switch.solitaire] at @s run function switch:engine/add_win
execute if score #game_state switch.data matches 4 unless score #test_mode switch.data matches 1 run advancement grant @a[tag=!detached,scores={switch.alive=1..,switch.temp.role=6}] only switch:visible/5
execute if score #traitors_game_seconds switch.data matches 1200 if score #game_state switch.data matches 1 as @a[scores={switch.alive=1..,switch.temp.role=..4}] at @s run function switch:engine/add_win

# Cas des égalités
function switch:translations/modes_traitors_game_detect_end


# Visuel de fin de partie
execute if score #traitors_game_seconds switch.data matches 1200.. as @a[tag=!detached] at @s run playsound item.totem.use ambient @s

