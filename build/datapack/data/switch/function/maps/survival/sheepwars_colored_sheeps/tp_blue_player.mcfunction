
#> switch:maps/survival/sheepwars_colored_sheeps/tp_blue_player
#
# @executed	as @a[tag=!detached,sort=random] & at @s
#
# @within	switch:modes/sheepwars/team_and_give
#

scoreboard players add #s_colored_sheeps_blue switch.data 1

execute if score #s_colored_sheeps_blue switch.data matches 1 run tp @s -3928 148 -11958 90 0
execute if score #s_colored_sheeps_blue switch.data matches 2 run tp @s -3934 148 -11939 90 0
execute if score #s_colored_sheeps_blue switch.data matches 3 run tp @s -3925 144 -11922 90 0
execute if score #s_colored_sheeps_blue switch.data matches 4 run tp @s -3928 140 -11951 90 0
execute if score #s_colored_sheeps_blue switch.data matches 5 run tp @s -3928 140 -11943 90 0
execute if score #s_colored_sheeps_blue switch.data matches 6 run tp @s -3931 128 -11954 90 0
execute if score #s_colored_sheeps_blue switch.data matches 7 run tp @s -3931 128 -11939 90 0
execute if score #s_colored_sheeps_blue switch.data matches 8 run tp @s -3928 147 -11949 90 0

execute if score #s_colored_sheeps_blue switch.data matches 8.. run scoreboard players set #s_colored_sheeps_blue switch.data 0

