
# Team selection
scoreboard players add #next_role switch.data 1
execute if score #next_role switch.data matches 1 run team join switch.temp.red @s
execute if score #next_role switch.data matches 2 run team join switch.temp.blue @s
execute if score #next_role switch.data matches 2 run scoreboard players set #next_role switch.data 0

# Teleport to team spawn
execute if data storage switch:main {map:"layers_2_teams"} if entity @s[team=switch.temp.red] run tp @s 27009 158.69 27000 90 0
execute if data storage switch:main {map:"layers_2_teams"} if entity @s[team=switch.temp.blue] run tp @s 26991 158.69 27000 -90 0

# Starter kit
attribute @s generic.attack_speed base set 2048
give @s stone_pickaxe
give @s stone_axe
give @s netherite_upgrade_smithing_template 5
give @s apple 12
give @s tnt 4
give @s flint_and_steel 1

