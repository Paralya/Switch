
#> switch:maps/survival/sheepwars_colored_sheeps/tp_red_player
#
# @executed	as @a[tag=!detached,sort=random] & at @s
#
# @within	switch:modes/sheepwars/team_and_give
#

scoreboard players add #s_colored_sheeps_red switch.data 1

execute if score #s_colored_sheeps_red switch.data matches 1 run tp @s -3965 148 -11936 -90 0
execute if score #s_colored_sheeps_red switch.data matches 2 run tp @s -3959 148 -11955 -90 0
execute if score #s_colored_sheeps_red switch.data matches 3 run tp @s -3968 144 -11972 -90 0
execute if score #s_colored_sheeps_red switch.data matches 4 run tp @s -3965 140 -11943 -90 0
execute if score #s_colored_sheeps_red switch.data matches 5 run tp @s -3965 140 -11951 -90 0
execute if score #s_colored_sheeps_red switch.data matches 6 run tp @s -3962 128 -11940 -90 0
execute if score #s_colored_sheeps_red switch.data matches 7 run tp @s -3962 128 -11955 -90 0
execute if score #s_colored_sheeps_red switch.data matches 8 run tp @s -3965 147 -11945 -90 0

execute if score #s_colored_sheeps_red switch.data matches 8.. run scoreboard players set #s_colored_sheeps_red switch.data 0

