
scoreboard players operation #next switch.data %= #max switch.data
scoreboard players add #next switch.data 1

scoreboard players set #success switch.data 0
execute as @a[scores={switch.temp.lives=1..}] if score @s switch.temp.order = #next switch.data run function switch:modes/mlg_a_coudre/next_player_teleport
execute if score #success switch.data matches 0 if score #next switch.data < #max switch.data run function switch:modes/mlg_a_coudre/next_player

