
#> switch:modes/murder_mystery/percentage/select_roles
#
# @within	switch:modes/murder_mystery/start
#

# Set everyone innocent
scoreboard players set @a[tag=!detached] switch.temp.role 1

# Choose a pair of detective + murderer
function switch:modes/murder_mystery/percentage/choose_pair

# Get number of players
execute store result score #nb_players switch.data if entity @a[tag=!detached]
execute if score #nb_players switch.data matches 15.. run function switch:modes/murder_mystery/percentage/choose_pair
execute if score #nb_players switch.data matches 27.. run function switch:modes/murder_mystery/percentage/choose_pair
execute if score #nb_players switch.data matches 45.. run function switch:modes/murder_mystery/percentage/choose_pair
execute if score #nb_players switch.data matches 64.. run function switch:modes/murder_mystery/percentage/choose_pair

# Probabilities
scoreboard players add @a[scores={switch.temp.role=1}] switch.games_not_being_detective 1
scoreboard players add @a[scores={switch.temp.role=1}] switch.games_not_being_murderer 1
scoreboard players reset @a[scores={switch.temp.role=2}] switch.games_not_being_detective
scoreboard players reset @a[scores={switch.temp.role=3}] switch.games_not_being_murderer

