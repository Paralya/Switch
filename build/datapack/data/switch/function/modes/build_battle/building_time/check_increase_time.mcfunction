
#> switch:modes/build_battle/building_time/check_increase_time
#
# @executed	in switch:build_battle
#
# @within	switch:modes/build_battle/building_time/second
#

## Real
# Count the number of players, and the number of players who voted yes
execute store result score #nb_players switch.data if entity @a[tag=!detached]
execute store result score #nb_yes switch.data if entity @a[tag=!detached,scores={switch.temp.theme_vote=1}]

# Check if the number of players who voted yes is greater than 75% of the number of players
scoreboard players set #success switch.data 0
scoreboard players operation #nb_yes switch.data *= #100 switch.data
scoreboard players operation #nb_yes switch.data /= #nb_players switch.data
execute if score #nb_yes switch.data matches 75.. run scoreboard players set #success switch.data 1
scoreboard players reset * switch.temp.theme_vote

# If the vote is successful, increase the time
execute if score #success switch.data matches 1 run scoreboard players add #remaining_time switch.data 120
execute if score #success switch.data matches 1 as @a[tag=!detached] at @s run playsound entity.villager.yes ambient @s

# Else, tell the players that the vote failed
function switch:translations/modes_build_battle_building_time_check_increase_time
execute unless score #success switch.data matches 1 as @a[tag=!detached] at @s run playsound entity.villager.no ambient @s

