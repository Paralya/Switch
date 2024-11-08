
#> switch:modes/layers_4_teams/team_and_give
#
# @within	switch:modes/layers_4_teams/start
#

# Team selection
scoreboard players add #next_role switch.data 1
execute if score #next_role switch.data matches 1 run team join switch.temp.red @s
execute if score #next_role switch.data matches 2 run team join switch.temp.blue @s
execute if score #next_role switch.data matches 3 run team join switch.temp.green @s
execute if score #next_role switch.data matches 4 run team join switch.temp.yellow @s
execute if score #next_role switch.data matches 1 run scoreboard players add #total switch.temp.killed_red 1
execute if score #next_role switch.data matches 2 run scoreboard players add #total switch.temp.killed_blue 1
execute if score #next_role switch.data matches 3 run scoreboard players add #total switch.temp.killed_green 1
execute if score #next_role switch.data matches 4 run scoreboard players add #total switch.temp.killed_yellow 1
execute if score #next_role switch.data matches 4 run scoreboard players set #next_role switch.data 0

# Teleport to team spawn
execute if data storage switch:main {map:"layers_4_teams"} if entity @s[team=switch.temp.red] run tp @s 74027 158.69 74017
execute if data storage switch:main {map:"layers_4_teams"} if entity @s[team=switch.temp.blue] run tp @s 74009 158.69 74015
execute if data storage switch:main {map:"layers_4_teams"} if entity @s[team=switch.temp.green] run tp @s 74027 158.69 74047
execute if data storage switch:main {map:"layers_4_teams"} if entity @s[team=switch.temp.yellow] run tp @s 74009 158.69 74047

# Starter kit
attribute @s attack_speed base set 2048
give @s stone_pickaxe
give @s stone_axe
give @s netherite_upgrade_smithing_template 5
give @s apple 12
give @s tnt 4
give @s flint_and_steel 1

