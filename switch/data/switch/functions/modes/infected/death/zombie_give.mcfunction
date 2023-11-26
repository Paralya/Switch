
team join switch.temp.zombie @s
scoreboard players reset @s switch.temp.infection
attribute @s generic.attack_damage base set 0.00001
attribute @s generic.attack_speed base set 2048.0
effect clear @s
effect give @s hunger infinite 0 true
clear @s

# Give stuff depending on player's upgrades
execute unless score @s switch.infected.zombie_speed matches 1.. run attribute @s generic.movement_speed base set 0.11
execute if score @s switch.infected.zombie_speed matches 1 run attribute @s generic.movement_speed base set 0.12
execute if score @s switch.infected.zombie_speed matches 2 run attribute @s generic.movement_speed base set 0.13
execute if score @s switch.infected.zombie_speed matches 3 run attribute @s generic.movement_speed base set 0.14
execute if score @s switch.infected.zombie_speed matches 4 run attribute @s generic.movement_speed base set 0.15
execute unless score @s switch.infected.zombie_jump matches 1.. run effect give @s jump_boost infinite 0 true
execute if score @s switch.infected.zombie_jump matches 1 run effect give @s jump_boost infinite 1 true

