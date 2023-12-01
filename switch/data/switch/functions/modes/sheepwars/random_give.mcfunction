
# If player has More Sheep kit
execute if score @s switch.sheepwars.choosen_kit matches 4 store result score #random switch.data run random value 0..4
execute if score @s switch.sheepwars.choosen_kit matches 4 unless score @s switch.sheepwars.kit_more_sheep matches 1.. if score #random switch.data matches ..0 run scoreboard players set #number_of_drops sheepwars.data 2
execute if score @s switch.sheepwars.choosen_kit matches 4 if score @s switch.sheepwars.kit_more_sheep matches 2 if score #random switch.data matches ..1 run scoreboard players set #number_of_drops sheepwars.data 2
execute if score @s switch.sheepwars.choosen_kit matches 4 if score @s switch.sheepwars.kit_more_sheep matches 3 if score #random switch.data matches ..2 run scoreboard players set #number_of_drops sheepwars.data 2
execute if score @s switch.sheepwars.choosen_kit matches 4 if score @s switch.sheepwars.kit_more_sheep matches 4 if score #random switch.data matches ..3 run scoreboard players set #number_of_drops sheepwars.data 2
execute if score @s switch.sheepwars.choosen_kit matches 4 if score @s switch.sheepwars.kit_more_sheep matches 5 run scoreboard players set #number_of_drops sheepwars.data 2

# Give sheep + playsound
function sheepwars:utils/random_give
execute at @s run playsound entity.sheep.ambient ambient @s

