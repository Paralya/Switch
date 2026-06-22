
#> switch:modes/layers_2_teams/team_and_give
#
# @executed	as @a[tag=!detached,sort=random] & at @s
#
# @within	switch:modes/layers_2_teams/start [ as @a[tag=!detached,sort=random] & at @s ]
#

# Team selection
scoreboard players add #next_role switch.data 1
execute if score #next_role switch.data matches 1 run team join switch.temp.red @s
execute if score #next_role switch.data matches 2 run team join switch.temp.blue @s
execute if score #next_role switch.data matches 2 run scoreboard players set #next_role switch.data 0

# Teleport to team spawn
execute if data storage switch:main {map:"layers_2_teams"} if entity @s[team=switch.temp.red] run tp @s 27026 159 27031 90 0
execute if data storage switch:main {map:"layers_2_teams"} if entity @s[team=switch.temp.blue] run tp @s 27009 159 27031 -90 0

# Starter kit
function switch:modes/_common/layers_starter_kit

