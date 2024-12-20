
#> switch:engine/launch_game/add_played_stat
#
# @within	switch:engine/launch_game/ with storage switch:main
#

execute if score #test_mode switch.data matches 1.. run return 1
$execute if data storage switch:main {current_game:"$(current_game)"} run scoreboard players add @a[tag=!detached] switch.stats.played.$(current_game) 1
scoreboard players add @a[tag=!detached] switch.stats.played 1
execute unless score #test_mode switch.data matches 1 run advancement grant @a[tag=!detached,scores={switch.stats.played=100..}] only switch:visible/2

