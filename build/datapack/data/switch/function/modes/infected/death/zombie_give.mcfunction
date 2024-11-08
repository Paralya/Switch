
#> switch:modes/infected/death/zombie_give
#
# @within	switch:modes/infected/death/zombie_spawn
#			switch:modes/infected/death/zombie_transform
#

team join switch.temp.zombie @s
scoreboard players reset @s switch.temp.infection
attribute @s attack_damage base set 0.00001
attribute @s attack_speed base set 2048.0
effect clear @s
effect give @s hunger infinite 0 true
effect give @s resistance infinite 0 true
clear @s


# Give stuff depending on player's upgrades
item replace entity @s armor.head with zombie_head[enchantment_glint_override=false,enchantments={levels:{binding_curse:1,vanishing_curse:1},show_in_tooltip:0b}]
execute unless score @s switch.infected.zombie_speed matches 1.. run attribute @s movement_speed base set 0.110
execute if score @s switch.infected.zombie_speed matches 1 run attribute @s movement_speed base set 0.115
execute if score @s switch.infected.zombie_speed matches 2 run attribute @s movement_speed base set 0.120
execute if score @s switch.infected.zombie_speed matches 3 run attribute @s movement_speed base set 0.125
execute if score @s switch.infected.zombie_speed matches 4 run attribute @s movement_speed base set 0.130
execute unless score @s switch.infected.zombie_jump matches 1.. run effect give @s jump_boost infinite 0 true
execute if score @s switch.infected.zombie_jump matches 1 run effect give @s jump_boost infinite 1 true

