
#> switch:modes/build_battle/repair_plot
#
# @executed	as @e[type=marker,tag=switch.build_battle_marker,sort=random,limit=1] & at @s
#
# @within	switch:modes/build_battle/tick [ as @e[type=marker,tag=switch.build_battle_marker,sort=random,limit=1] & at @s ]
#

# Prevent players from breaking zone
execute if data storage switch:main {map:"build_battle"} run place template switch:build_battle

