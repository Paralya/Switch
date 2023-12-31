
execute if score #test_mode switch.data matches 1.. run return 1
$execute if data storage switch:main {current_game:"$(current_game)"} run scoreboard players add @a[tag=!detached] switch.stats.played.$(current_game) 1
scoreboard players add @a[tag=!detached] switch.stats.played 1
execute as @a[tag=!detached] if score @s switch.stats.played matches 100.. run advancement grant @s only switch:visible/2

