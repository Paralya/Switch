
#> switch:modes/infected/second
#
# @within	switch:modes/infected/calls/second
#

# Timer
scoreboard players add #infected_seconds switch.data 1
execute if score #remaining_time switch.data matches 1.. run scoreboard players remove #remaining_time switch.data 1
execute if score #infected_seconds switch.data matches 0.. run function switch:modes/infected/xp_bar

# Store human and zombie counts for title action bar
execute store result score #nb_humans switch.data if entity @a[team=switch.temp.human]
execute store result score #nb_zombies switch.data if entity @a[team=switch.temp.zombie]

# Second function for starting the game
execute if score #infected_seconds switch.data matches ..10 run function switch:modes/infected/second_start

# Player infection
execute as @a[scores={switch.temp.infection=1..}] at @s run function switch:modes/infected/death/infection_second

# If there are no zombies left, infect a random human
execute if score #infected_seconds switch.data matches 7.. run function switch:modes/infected/second_selector

# Regen & Arrow give
execute if score #infected_seconds switch.data matches 10.. run function switch:modes/infected/second_regen

# Advancements
execute unless score #test_mode switch.data matches 1 as @a[team=switch.temp.human] if score @s switch.temp.kills matches 8.. run advancement grant @s only switch:visible/16
execute unless score #test_mode switch.data matches 1 as @a[team=switch.temp.zombie] if score @s switch.temp.kills matches 5.. run advancement grant @s only switch:visible/17

# Detect end of the game
execute if score #infected_seconds switch.data matches 0.. if score #remaining_time switch.data matches 0.. run function switch:modes/infected/detect_end

