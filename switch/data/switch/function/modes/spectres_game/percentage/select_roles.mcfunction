
# Set everyone to visible
team join switch.temp.visible @a[tag=!detached]

# Get number of spectre to choose (1/3 of the players)
execute store result score #spectre_to_choose switch.data if entity @a[team=switch.temp.visible]
scoreboard players add #spectre_to_choose switch.data 2
scoreboard players operation #spectre_to_choose switch.data /= #3 switch.data

# Choose all spectres
execute if score #spectre_to_choose switch.data matches 1.. run function switch:modes/spectres_game/percentage/choose_spectre

# Probabilities
scoreboard players add @a[team=switch.temp.visible] switch.games_not_being_spectre 1
scoreboard players set @a[team=switch.temp.spectre] switch.games_not_being_spectre 0

