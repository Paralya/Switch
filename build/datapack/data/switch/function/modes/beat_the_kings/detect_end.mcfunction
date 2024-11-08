
#> switch:modes/beat_the_kings/detect_end
#
# @within	switch:modes/beat_the_kings/tick
#

scoreboard players set #game_state switch.data 0
execute if entity @a[scores={switch.alive=1..},team=switch.temp.civil] unless entity @a[scores={switch.alive=1..},team=switch.temp.king] run scoreboard players add #game_state switch.data 1
execute if entity @a[scores={switch.alive=1..},team=switch.temp.king] unless entity @a[scores={switch.alive=1..},team=switch.temp.civil] run scoreboard players add #game_state switch.data 2
execute unless entity @a[scores={switch.alive=1..}] run scoreboard players add #game_state switch.data 3

# 1 = que des civils
# 2 = que des kings
# 3 = Plus personne

# Cas de fin de partie
execute if score #game_state switch.data matches 1..3 run scoreboard players set #beat_the_kings_seconds switch.data 100000

# Cas des vainqueurs
function switch:translations/modes_beat_the_kings_detect_end

execute if score #game_state switch.data matches 1 as @a[tag=!detached,scores={switch.alive=1..},team=switch.temp.civil] at @s run function switch:engine/add_win
execute if score #game_state switch.data matches 2 as @a[tag=!detached,scores={switch.alive=1..},team=switch.temp.king] at @s run function switch:engine/add_win

# Visuel de fin de partie
execute if score #beat_the_kings_seconds switch.data matches 900.. as @a[tag=!detached] at @s run playsound item.totem.use ambient @s

